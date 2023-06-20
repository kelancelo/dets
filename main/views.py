from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .models import *
from django.core.exceptions import ObjectDoesNotExist
from django.core import serializers
from django.http import HttpResponse, HttpResponseNotFound, JsonResponse
import json
from django.contrib.auth import logout
from django.contrib.auth.models import Group
from django.forms.models import model_to_dict


@login_required
def index(request):
    context = {}
    # Check if there's an active event
    event = None
    try:
        event = Event.objects.get(status="active")
    except ObjectDoesNotExist:
        return render(request, "main/index.html")
    
    context["event"] = event
    # If there's an active event, check if the logged in judge is a judge of that event
    is_judge_of_event = event.judges.filter(id=request.user.id).exists()
    context["is_judge_of_event"] = is_judge_of_event
    # Get the rounds of the event
    rounds = event.round_set.all()
    context["rounds"] = rounds
    # context["criteria"] = safe(serializers.serialize("json", criteria))
    
    return render(request, "main/index.html", context)


# A function for checking if a judge has already given a participant the scores
# for the criteria of the active round
@login_required
def check_if_participant_has_been_scored(request, participant_id, round_id):
    if Score.objects.filter(
        judge=request.user,
        participant_id=participant_id,
        criterion__round__id=round_id
    ).exists():
        scores = Score.objects.filter(
            judge=request.user,
            participant_id=participant_id,
            criterion__round__id=round_id
        )
        return JsonResponse(serializers.serialize("json", scores), safe=False)
    else:
        return HttpResponseNotFound()


# Save participant's scores in the database
@login_required 
def save_scores(request):
    participant_id = request.POST["participant_id"]
    round = None
    num_judges = 0
    current_total_score = None
    scores = 0
    for key, value in request.POST.items():
        if "criterion" in key:
            criterion_id = key.split("-")[1]
            criterion = Criterion.objects.get(id=criterion_id)
            Score.objects.create(
                criterion=criterion, 
                judge=request.user, 
                participant_id=participant_id,
                value=value
            )
            scores += int(value)
            # If this is the first input
            if not round:
                round = Round.objects.get(id=criterion.round_id)
                num_judges = Event.objects.get(id=round.event_id).judges.count()
                try:
                    current_total_score = Total_Score.objects.get(
                        participant_id=participant_id,
                        round=round
                    )
                except ObjectDoesNotExist:
                    pass
    if current_total_score:
        new_total_score = current_total_score.value * num_judges
        new_total_score += scores
        new_total_score /= num_judges
        current_total_score.value = new_total_score
        current_total_score.save()
    else:
        Total_Score.objects.create(
            participant_id=participant_id,
            round=round,
            value=scores/num_judges
        )
    return redirect("main:index")
    

# Returns a list of the participants of the active round
@login_required
def get_participants(request, round_id):
    participants = Round.objects.get(id=round_id).participants.all()
    return JsonResponse(serializers.serialize("json", participants), safe=False)


@login_required
def get_extra_participant_data(request, round_id, participant_id):
    event_participant = Event_Participant.objects.get(
        event=Round.objects.get(id=round_id).event,
        participant_id=participant_id
    )
    return JsonResponse({
        "candidate_number": event_participant.candidate_number,
        "represented_entity": event_participant.represented_entity.name
    }, safe=False)


@login_required
def get_criteria(request, round_id):
    criteria = Criterion.objects.filter(round_id=round_id)
    return JsonResponse(serializers.serialize("json", criteria), safe=False)


@login_required
def custom_logout(request):
    logout(request)
    return redirect("main:login")


def get_last_event_info(request):
    event = Event.objects.filter(status="ended").order_by("-end_date").first()
    final_round = Round.objects.filter(event=event).order_by("-end_date").first()
    highest_score = Total_Score.objects.filter(round=final_round).order_by("-value").first()
    winner = Participant.objects.get(id=highest_score.participant_id)
    print(winner)
    return JsonResponse({
        "event": event.name,
        "winner": f"{winner.first_name} {winner.last_name}"
    }, safe=False)


def get_stats(request):
    users = list(User.objects.all().values("groups__name"))
    groups = list(Group.objects.all().values())
    events = list(Event.objects.all().values())
    participants = list(Participant.objects.all().values())
 
    return JsonResponse({
        "users": users,
        "groups": groups,
        "events": events,
        "participants": participants
    }, safe=False)


