from django import forms
from .models import *
from django.core.exceptions import ObjectDoesNotExist


class EventForm(forms.ModelForm):
    # participants = forms.ModelMultipleChoiceField(queryset=Participant.objects.all())

    def clean(self):
        cleaned_data = super().clean()
        status = cleaned_data.get('status')

        if status == "active":
            active_event = None
            try:
                active_event = Event.objects.get(status="active")
            except ObjectDoesNotExist:
                pass
            if active_event and active_event.id != self.instance.pk:
                raise forms.ValidationError("Only 1 event can be active at a time.")

        return cleaned_data


class RoundForm(forms.ModelForm):
    def clean(self):
        cleaned_data = super().clean()
        status = cleaned_data.get('status')
        event = cleaned_data.get("event")

        if status == "active":
            if event.status != "active":
                raise forms.ValidationError("To activate this round, activate the event for this round first.")
            else:
                active_round = None
                try:
                    active_round = Round.objects.get(status="active")
                except ObjectDoesNotExist:
                    pass
                if active_round and active_round.id != self.instance.pk:
                    raise forms.ValidationError("Only 1 round can be active at a time.")

        return cleaned_data