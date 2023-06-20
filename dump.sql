-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dets
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'admin'),(1,'judge');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,45),(46,2,46),(47,2,47),(48,2,48);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_user'),(2,'Can change user',1,'change_user'),(3,'Can delete user',1,'delete_user'),(4,'Can view user',1,'view_user'),(5,'Can add criterion',2,'add_criterion'),(6,'Can change criterion',2,'change_criterion'),(7,'Can delete criterion',2,'delete_criterion'),(8,'Can view criterion',2,'view_criterion'),(9,'Can add event',3,'add_event'),(10,'Can change event',3,'change_event'),(11,'Can delete event',3,'delete_event'),(12,'Can view event',3,'view_event'),(13,'Can add participant',4,'add_participant'),(14,'Can change participant',4,'change_participant'),(15,'Can delete participant',4,'delete_participant'),(16,'Can view participant',4,'view_participant'),(17,'Can add score',5,'add_score'),(18,'Can change score',5,'change_score'),(19,'Can delete score',5,'delete_score'),(20,'Can view score',5,'view_score'),(21,'Can add round',6,'add_round'),(22,'Can change round',6,'change_round'),(23,'Can delete round',6,'delete_round'),(24,'Can view round',6,'view_round'),(25,'Can add log entry',7,'add_logentry'),(26,'Can change log entry',7,'change_logentry'),(27,'Can delete log entry',7,'delete_logentry'),(28,'Can view log entry',7,'view_logentry'),(29,'Can add permission',8,'add_permission'),(30,'Can change permission',8,'change_permission'),(31,'Can delete permission',8,'delete_permission'),(32,'Can view permission',8,'view_permission'),(33,'Can add group',9,'add_group'),(34,'Can change group',9,'change_group'),(35,'Can delete group',9,'delete_group'),(36,'Can view group',9,'view_group'),(37,'Can add content type',10,'add_contenttype'),(38,'Can change content type',10,'change_contenttype'),(39,'Can delete content type',10,'delete_contenttype'),(40,'Can view content type',10,'view_contenttype'),(41,'Can add session',11,'add_session'),(42,'Can change session',11,'change_session'),(43,'Can delete session',11,'delete_session'),(44,'Can view session',11,'view_session'),(45,'Can add total_ score',12,'add_total_score'),(46,'Can change total_ score',12,'change_total_score'),(47,'Can delete total_ score',12,'delete_total_score'),(48,'Can view total_ score',12,'view_total_score'),(49,'Can add event_ participant',13,'add_event_participant'),(50,'Can change event_ participant',13,'change_event_participant'),(51,'Can delete event_ participant',13,'delete_event_participant'),(52,'Can view event_ participant',13,'view_event_participant'),(53,'Can add represented_ entity',14,'add_represented_entity'),(54,'Can change represented_ entity',14,'change_represented_entity'),(55,'Can delete represented_ entity',14,'delete_represented_entity'),(56,'Can view represented_ entity',14,'view_represented_entity');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_main_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-08 06:49:56.409154','1','Synyster Gates',1,'[{\"added\": {}}]',4,1),(2,'2023-06-08 06:50:35.021725','1','LOL tournament',1,'[{\"added\": {}}]',3,1),(3,'2023-06-08 06:50:57.247337','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(4,'2023-06-08 06:51:36.441305','2','Zachy Vengeance',1,'[{\"added\": {}}]',4,1),(5,'2023-06-08 06:52:08.904384','3','M Shadows',1,'[{\"added\": {}}]',4,1),(6,'2023-06-08 06:52:40.918294','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(7,'2023-06-08 06:53:23.917678','1','LOL tournament',2,'[]',3,1),(8,'2023-06-08 06:54:05.387291','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(9,'2023-06-08 06:54:47.997680','2','Zachy Vengeance',2,'[{\"changed\": {\"fields\": [\"Events joined\"]}}]',4,1),(10,'2023-06-08 08:03:54.865904','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(11,'2023-06-08 08:04:15.658819','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(12,'2023-06-08 08:05:03.890864','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(13,'2023-06-08 08:06:34.031254','1','judge',1,'[{\"added\": {}}]',9,1),(14,'2023-06-08 08:07:57.966490','2',' ',1,'[{\"added\": {}}]',1,1),(15,'2023-06-08 08:09:17.954551','2','Jonathan Seward',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]',1,1),(16,'2023-06-08 08:11:55.326641','1','Viego Ogeiv',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',1,1),(17,'2023-06-08 08:12:25.968683','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Judges\"]}}]',3,1),(18,'2023-06-09 04:55:45.998031','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(19,'2023-06-09 04:56:43.510666','2','ML tournament',1,'[{\"added\": {}}]',3,1),(20,'2023-06-09 05:08:25.134764','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(21,'2023-06-09 05:08:29.541739','2','ML tournament',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(22,'2023-06-09 05:08:35.970542','2','ML tournament',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(23,'2023-06-09 05:12:07.341588','1','Round object (1)',1,'[{\"added\": {}}]',6,1),(24,'2023-06-09 05:12:29.870686','1','Round object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(25,'2023-06-09 05:12:34.875627','1','Round object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(26,'2023-06-09 05:13:27.483184','1','Round object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(27,'2023-06-09 05:19:07.417790','1','Round object (1)',3,'',6,1),(28,'2023-06-09 05:27:44.614912','2','Round object (2)',1,'[{\"added\": {}}]',6,1),(29,'2023-06-09 05:35:30.784910','1','LOL tournament',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(30,'2023-06-09 05:35:38.799098','2','LOL tournament: round 1',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(31,'2023-06-09 05:36:57.366936','3','LOL tournament: round 2',1,'[{\"added\": {}}]',6,1),(32,'2023-06-09 07:41:05.935456','2','ML tournament',3,'',3,1),(33,'2023-06-09 07:41:05.945456','1','LOL tournament',3,'',3,1),(34,'2023-06-09 09:19:22.751401','3','Mister UDD',1,'[{\"added\": {}}]',3,1),(35,'2023-06-09 09:21:38.739813','4','Mister UDD: round 1',1,'[{\"added\": {}}]',6,1),(36,'2023-06-09 09:23:23.265552','1','Beauty and Appearance',1,'[{\"added\": {}}]',2,1),(37,'2023-06-09 09:23:39.101619','2','Personality and Poise',1,'[{\"added\": {}}]',2,1),(38,'2023-06-09 09:23:52.340639','3','Talent',1,'[{\"added\": {}}]',2,1),(39,'2023-06-09 09:24:08.671588','4','Intelligence and Communication',1,'[{\"added\": {}}]',2,1),(40,'2023-06-10 10:35:10.651842','4','Jimmy Sullivan',1,'[{\"added\": {}}]',4,1),(41,'2023-06-10 10:41:06.823572','4','Jimmy Sullivan',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(42,'2023-06-10 10:41:17.019272','3','M Shadows',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(43,'2023-06-10 10:41:28.531511','2','Zachy Vengeance',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(44,'2023-06-10 10:41:40.066860','1','Synyster Gates',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(45,'2023-06-10 14:21:51.164423','5','Mister UDD: round 2',1,'[{\"added\": {}}]',6,1),(46,'2023-06-10 14:46:39.708625','5','Mister UDD: round 2',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(47,'2023-06-10 14:47:15.502815','5','Mister UDD: round 2',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(48,'2023-06-10 14:47:19.903148','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(49,'2023-06-11 03:47:54.884730','2','Zacky Vengeance',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',4,1),(50,'2023-06-11 04:50:32.791329','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(51,'2023-06-11 04:51:43.919045','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(52,'2023-06-11 04:52:03.407385','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(53,'2023-06-11 04:55:16.381927','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',6,1),(54,'2023-06-11 04:55:39.732855','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',6,1),(55,'2023-06-11 04:55:59.643608','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',6,1),(56,'2023-06-11 05:52:06.534852','5','Mister UDD: round 2',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',6,1),(57,'2023-06-11 05:52:11.352871','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(58,'2023-06-11 05:52:29.624201','5','Mister UDD: round 2',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(59,'2023-06-11 05:53:04.443308','5','Mister UDD: round 2',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(60,'2023-06-11 05:53:09.168307','4','Mister UDD: round 1',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(61,'2023-06-16 06:04:28.157961','12','Score object (12)',3,'',5,1),(62,'2023-06-16 06:04:28.163069','11','Score object (11)',3,'',5,1),(63,'2023-06-16 06:04:28.165953','10','Score object (10)',3,'',5,1),(64,'2023-06-16 06:04:28.170084','9','Score object (9)',3,'',5,1),(65,'2023-06-16 06:35:40.532077','16','Score object (16)',3,'',5,1),(66,'2023-06-16 06:35:40.537073','15','Score object (15)',3,'',5,1),(67,'2023-06-16 06:35:40.541070','14','Score object (14)',3,'',5,1),(68,'2023-06-16 06:35:40.544070','13','Score object (13)',3,'',5,1),(69,'2023-06-16 06:35:40.547072','4','Score object (4)',3,'',5,1),(70,'2023-06-16 06:35:40.550071','3','Score object (3)',3,'',5,1),(71,'2023-06-16 06:35:40.553052','2','Score object (2)',3,'',5,1),(72,'2023-06-16 06:35:40.556066','1','Score object (1)',3,'',5,1),(73,'2023-06-16 06:36:40.873083','17','Score object (17)',3,'',5,1),(74,'2023-06-16 06:37:11.787155','18','Score object (18)',3,'',5,1),(75,'2023-06-16 06:37:11.790959','19','Score object (19)',3,'',5,1),(76,'2023-06-16 06:37:11.794972','20','Score object (20)',3,'',5,1),(77,'2023-06-16 06:37:11.799971','21','Score object (21)',3,'',5,1),(78,'2023-06-16 07:37:44.585909','29','Score object (29)',3,'',5,1),(79,'2023-06-16 07:37:44.588904','28','Score object (28)',3,'',5,1),(80,'2023-06-16 07:37:44.592069','27','Score object (27)',3,'',5,1),(81,'2023-06-16 07:37:44.594501','26','Score object (26)',3,'',5,1),(82,'2023-06-16 07:37:44.597004','25','Score object (25)',3,'',5,1),(83,'2023-06-16 07:37:44.599838','24','Score object (24)',3,'',5,1),(84,'2023-06-16 07:37:44.602352','23','Score object (23)',3,'',5,1),(85,'2023-06-16 07:37:44.604629','22','Score object (22)',3,'',5,1),(86,'2023-06-16 07:37:52.753810','2','Total_Score object (2)',3,'',12,1),(87,'2023-06-16 07:37:52.756627','1','Total_Score object (1)',3,'',12,1),(88,'2023-06-16 11:28:37.137751','4','Miss UDD',1,'[{\"added\": {}}]',3,1),(89,'2023-06-16 11:29:33.176156','3',' ',1,'[{\"added\": {}}]',1,1),(90,'2023-06-16 11:30:24.413922','3','Patrick Bateman',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]',1,1),(91,'2023-06-16 11:31:00.334336','4',' ',1,'[{\"added\": {}}]',1,1),(92,'2023-06-16 11:31:13.809801','4','Peter Parkour',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]',1,1),(93,'2023-06-16 11:31:46.201960','2','admin',1,'[{\"added\": {}}]',9,1),(94,'2023-06-16 11:32:07.377277','1','Viego Ogeiv',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',1,1),(95,'2023-06-16 11:33:35.346819','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Judges\"]}}]',3,1),(96,'2023-06-16 11:33:46.479278','4','Miss UDD',2,'[{\"changed\": {\"fields\": [\"Judges\"]}}]',3,1),(97,'2023-06-16 11:34:56.689295','5','Anne Curtis',1,'[{\"added\": {}}]',4,1),(98,'2023-06-16 11:35:31.332217','6','Liza Soberano',1,'[{\"added\": {}}]',4,1),(99,'2023-06-16 11:35:53.339197','7','Kathryn Bernardo',1,'[{\"added\": {}}]',4,1),(100,'2023-06-16 11:36:19.677193','8','Barbie Forteza',1,'[{\"added\": {}}]',4,1),(101,'2023-06-16 11:37:42.811349','8','Barbie Forteza',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(102,'2023-06-16 11:38:31.635265','7','Kathryn Bernardo',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(103,'2023-06-16 11:39:10.828470','6','Liza Soberano',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(104,'2023-06-16 11:40:01.870572','5','Anne Curtis',2,'[{\"changed\": {\"fields\": [\"Image url\"]}}]',4,1),(105,'2023-06-16 11:40:15.370513','4','Miss UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(106,'2023-06-16 11:41:10.152100','6','Mister UDD: round 3',1,'[{\"added\": {}}]',6,1),(107,'2023-06-16 12:05:31.681116','33','Score object (33)',3,'',5,1),(108,'2023-06-16 12:05:31.683480','32','Score object (32)',3,'',5,1),(109,'2023-06-16 12:05:31.686113','31','Score object (31)',3,'',5,1),(110,'2023-06-16 12:05:31.689833','30','Score object (30)',3,'',5,1),(111,'2023-06-16 12:05:37.796717','3','Total_Score object (3)',3,'',12,1),(112,'2023-06-17 04:35:35.115897','4','Miss UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(113,'2023-06-17 04:35:53.791333','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Participants\"]}}]',3,1),(114,'2023-06-17 06:55:16.145625','1','Represented_Entity object (1)',1,'[{\"added\": {}}]',14,1),(115,'2023-06-17 06:55:48.088956','2','Represented_Entity object (2)',1,'[{\"added\": {}}]',14,1),(116,'2023-06-17 06:57:04.439245','3','Represented_Entity object (3)',1,'[{\"added\": {}}]',14,1),(117,'2023-06-17 06:57:15.561723','4','Represented_Entity object (4)',1,'[{\"added\": {}}]',14,1),(118,'2023-06-17 06:59:41.409343','5','DW',1,'[{\"added\": {}}]',14,1),(119,'2023-06-17 07:00:21.239363','3','Mister UDD',2,'[{\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (1)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (2)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (3)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (4)\"}}]',3,1),(120,'2023-06-17 15:20:39.885174','37','Score object (37)',3,'',5,1),(121,'2023-06-17 15:20:39.889175','36','Score object (36)',3,'',5,1),(122,'2023-06-17 15:20:39.892178','35','Score object (35)',3,'',5,1),(123,'2023-06-17 15:20:39.895173','34','Score object (34)',3,'',5,1),(124,'2023-06-17 15:28:45.495431','41','Score object (41)',3,'',5,1),(125,'2023-06-17 15:28:45.498431','40','Score object (40)',3,'',5,1),(126,'2023-06-17 15:28:45.501431','39','Score object (39)',3,'',5,1),(127,'2023-06-17 15:28:45.503428','38','Score object (38)',3,'',5,1),(128,'2023-06-18 02:20:42.835225','4','Mister UDD: Prelim',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(129,'2023-06-18 02:21:14.127305','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Start date\", \"Status\"]}}]',6,1),(130,'2023-06-18 02:34:33.240435','7','Total_Score object (7)',3,'',12,1),(131,'2023-06-18 02:34:33.243276','6','Total_Score object (6)',3,'',12,1),(132,'2023-06-18 02:34:33.247290','5','Total_Score object (5)',3,'',12,1),(133,'2023-06-18 02:34:33.250040','4','Total_Score object (4)',3,'',12,1),(134,'2023-06-18 02:34:40.581616','73','Score object (73)',3,'',5,1),(135,'2023-06-18 02:34:40.584691','72','Score object (72)',3,'',5,1),(136,'2023-06-18 02:34:40.587500','71','Score object (71)',3,'',5,1),(137,'2023-06-18 02:34:40.590549','70','Score object (70)',3,'',5,1),(138,'2023-06-18 02:34:40.593396','69','Score object (69)',3,'',5,1),(139,'2023-06-18 02:34:40.596326','68','Score object (68)',3,'',5,1),(140,'2023-06-18 02:34:40.599277','67','Score object (67)',3,'',5,1),(141,'2023-06-18 02:34:40.602287','66','Score object (66)',3,'',5,1),(142,'2023-06-18 02:34:40.605361','65','Score object (65)',3,'',5,1),(143,'2023-06-18 02:34:40.608373','64','Score object (64)',3,'',5,1),(144,'2023-06-18 02:34:40.612373','63','Score object (63)',3,'',5,1),(145,'2023-06-18 02:34:40.615371','62','Score object (62)',3,'',5,1),(146,'2023-06-18 02:34:40.619372','61','Score object (61)',3,'',5,1),(147,'2023-06-18 02:34:40.622373','60','Score object (60)',3,'',5,1),(148,'2023-06-18 02:34:40.625372','59','Score object (59)',3,'',5,1),(149,'2023-06-18 02:34:40.628019','58','Score object (58)',3,'',5,1),(150,'2023-06-18 02:34:40.630918','57','Score object (57)',3,'',5,1),(151,'2023-06-18 02:34:40.633928','56','Score object (56)',3,'',5,1),(152,'2023-06-18 02:34:40.636930','55','Score object (55)',3,'',5,1),(153,'2023-06-18 02:34:40.640192','54','Score object (54)',3,'',5,1),(154,'2023-06-18 02:34:40.643534','53','Score object (53)',3,'',5,1),(155,'2023-06-18 02:34:40.646519','52','Score object (52)',3,'',5,1),(156,'2023-06-18 02:34:40.649423','51','Score object (51)',3,'',5,1),(157,'2023-06-18 02:34:40.652433','50','Score object (50)',3,'',5,1),(158,'2023-06-18 02:34:40.655414','49','Score object (49)',3,'',5,1),(159,'2023-06-18 02:34:40.658338','48','Score object (48)',3,'',5,1),(160,'2023-06-18 02:34:40.661256','47','Score object (47)',3,'',5,1),(161,'2023-06-18 02:34:40.664245','46','Score object (46)',3,'',5,1),(162,'2023-06-18 02:34:40.667153','45','Score object (45)',3,'',5,1),(163,'2023-06-18 02:34:40.670779','44','Score object (44)',3,'',5,1),(164,'2023-06-18 02:34:40.673788','43','Score object (43)',3,'',5,1),(165,'2023-06-18 02:34:40.676726','42','Score object (42)',3,'',5,1),(166,'2023-06-18 02:34:50.722069','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(167,'2023-06-18 02:34:56.562251','4','Mister UDD: Prelim',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(168,'2023-06-18 02:36:11.051796','1','Piercings',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(169,'2023-06-18 02:36:20.571278','2','Tattoos',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(170,'2023-06-18 02:37:52.181414','4','Audience Impact',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(171,'2023-06-18 02:40:45.528442','83','Score object (83)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(172,'2023-06-18 02:44:15.479984','4','Insanity',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',2,1),(173,'2023-06-18 02:45:27.941104','4','Mister UDD: Prelim',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(174,'2023-06-18 02:50:02.229814','5','Talent',1,'[{\"added\": {}}]',2,1),(175,'2023-06-18 02:51:05.481489','6','Insanity',1,'[{\"added\": {}}]',2,1),(176,'2023-06-18 02:52:03.484283','7','Metalheadness',1,'[{\"added\": {}}]',2,1),(177,'2023-06-18 02:52:21.585441','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(178,'2023-06-18 06:14:55.190969','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(179,'2023-06-18 06:16:53.410769','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(180,'2023-06-18 06:22:47.948013','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(181,'2023-06-18 06:24:07.216048','12','Total_Score object (12)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',12,1),(182,'2023-06-18 06:27:38.218173','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(183,'2023-06-18 06:28:12.361621','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(184,'2023-06-18 06:31:20.231955','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(185,'2023-06-18 06:32:37.615717','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(186,'2023-06-18 06:34:00.164815','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(187,'2023-06-18 06:38:26.349354','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(188,'2023-06-18 06:39:00.950504','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(189,'2023-06-18 07:04:51.227378','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(190,'2023-06-18 07:05:06.028491','108','Score object (108)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(191,'2023-06-18 07:08:59.778530','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(192,'2023-06-18 07:10:09.233672','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\", \"Participants\"]}}]',6,1),(193,'2023-06-18 07:11:46.799731','8','Talent',1,'[{\"added\": {}}]',2,1),(194,'2023-06-18 07:12:55.435442','9','Charisma',1,'[{\"added\": {}}]',2,1),(195,'2023-06-18 07:16:38.689292','129','Score object (129)',3,'',5,1),(196,'2023-06-18 07:16:38.692374','128','Score object (128)',3,'',5,1),(197,'2023-06-18 07:16:38.695398','127','Score object (127)',3,'',5,1),(198,'2023-06-18 07:16:38.698318','126','Score object (126)',3,'',5,1),(199,'2023-06-18 07:16:38.701267','125','Score object (125)',3,'',5,1),(200,'2023-06-18 07:16:38.704265','124','Score object (124)',3,'',5,1),(201,'2023-06-18 07:21:44.293015','131','Score object (131)',3,'',5,1),(202,'2023-06-18 07:21:44.296014','130','Score object (130)',3,'',5,1),(203,'2023-06-18 12:11:27.601132','132','Score object (132)',1,'[{\"added\": {}}]',5,1),(204,'2023-06-18 12:19:35.196826','133','Score object (133)',1,'[{\"added\": {}}]',5,1),(205,'2023-06-18 12:20:23.378528','134','Score object (134)',1,'[{\"added\": {}}]',5,1),(206,'2023-06-18 12:21:11.062133','135','Score object (135)',1,'[{\"added\": {}}]',5,1),(207,'2023-06-18 12:55:54.047160','136','Score object (136)',3,'',5,1),(208,'2023-06-18 13:02:13.463997','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(209,'2023-06-18 13:02:38.045403','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(210,'2023-06-18 13:03:09.292411','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(211,'2023-06-18 13:20:05.456629','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(212,'2023-06-18 13:20:47.254175','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(213,'2023-06-18 13:21:08.564289','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(214,'2023-06-19 12:57:21.660158','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(215,'2023-06-19 12:57:35.618009','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(216,'2023-06-19 12:57:56.746691','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(217,'2023-06-19 12:58:02.575643','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(218,'2023-06-20 05:53:03.320793','9','Kiray Celis',1,'[{\"added\": {}}]',4,1),(219,'2023-06-20 05:55:37.940147','3','Mister UDD',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',3,1),(220,'2023-06-20 05:56:58.299697','4','Miss UDD',2,'[{\"changed\": {\"fields\": [\"Start date\", \"Status\"]}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (5)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (6)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (7)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (8)\"}}, {\"added\": {\"name\": \"event_ participant\", \"object\": \"Event_Participant object (9)\"}}]',3,1),(221,'2023-06-20 05:58:18.784916','4','Mister UDD: Prelim',2,'[{\"changed\": {\"fields\": [\"End date\"]}}]',6,1),(222,'2023-06-20 05:58:34.421763','5','Mister UDD: Semi',2,'[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]',6,1),(223,'2023-06-20 05:59:06.014088','6','Mister UDD: Finals',2,'[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]',6,1),(224,'2023-06-20 06:00:49.642937','7','Miss UDD: Prelim',1,'[{\"added\": {}}]',6,1),(225,'2023-06-20 07:18:04.400587','10','Talent',1,'[{\"added\": {}}]',2,1),(226,'2023-06-20 07:18:28.157129','11','Intelligence and Communication',1,'[{\"added\": {}}]',2,1),(227,'2023-06-20 07:19:16.270440','12','Personality and charm',1,'[{\"added\": {}}]',2,1),(228,'2023-06-20 07:19:49.936079','12','Personality and charm',2,'[{\"changed\": {\"fields\": [\"Round\"]}}]',2,1),(229,'2023-06-20 07:23:50.032251','170','Score object (170)',3,'',5,1),(230,'2023-06-20 07:23:50.035539','169','Score object (169)',3,'',5,1),(231,'2023-06-20 07:23:50.038508','168','Score object (168)',3,'',5,1),(232,'2023-06-20 07:25:16.170046','173','Score object (173)',3,'',5,1),(233,'2023-06-20 07:25:16.174046','172','Score object (172)',3,'',5,1),(234,'2023-06-20 07:25:16.177046','171','Score object (171)',3,'',5,1),(235,'2023-06-20 07:27:13.327433','152','Score object (152)',2,'[{\"changed\": {\"fields\": [\"Value\"]}}]',5,1),(236,'2023-06-20 07:28:01.405397','7','Miss UDD: Prelim',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',6,1),(237,'2023-06-20 07:29:34.516373','8','Miss UDD: Semi',1,'[{\"added\": {}}]',6,1),(238,'2023-06-20 07:36:25.227722','13','Personality and charm',1,'[{\"added\": {}}]',2,1),(239,'2023-06-20 07:36:38.152654','14','Intelligence and Communication',1,'[{\"added\": {}}]',2,1),(240,'2023-06-20 07:36:51.344626','15','Talent',1,'[{\"added\": {}}]',2,1),(241,'2023-06-20 07:37:52.641668','9','Miss UDD: Finals',1,'[{\"added\": {}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'admin','logentry'),(9,'auth','group'),(8,'auth','permission'),(10,'contenttypes','contenttype'),(2,'main','criterion'),(3,'main','event'),(13,'main','event_participant'),(4,'main','participant'),(14,'main','represented_entity'),(6,'main','round'),(5,'main','score'),(12,'main','total_score'),(1,'main','user'),(11,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-08 06:32:00.196328'),(2,'contenttypes','0002_remove_content_type_name','2023-06-08 06:32:00.258791'),(3,'auth','0001_initial','2023-06-08 06:32:00.524453'),(4,'auth','0002_alter_permission_name_max_length','2023-06-08 06:32:00.586910'),(5,'auth','0003_alter_user_email_max_length','2023-06-08 06:32:00.602537'),(6,'auth','0004_alter_user_username_opts','2023-06-08 06:32:00.618167'),(7,'auth','0005_alter_user_last_login_null','2023-06-08 06:32:00.633828'),(8,'auth','0006_require_contenttypes_0002','2023-06-08 06:32:00.633828'),(9,'auth','0007_alter_validators_add_error_messages','2023-06-08 06:32:00.649411'),(10,'auth','0008_alter_user_username_max_length','2023-06-08 06:32:00.665036'),(11,'auth','0009_alter_user_last_name_max_length','2023-06-08 06:32:00.680661'),(12,'auth','0010_alter_group_name_max_length','2023-06-08 06:32:00.711910'),(13,'auth','0011_update_proxy_permissions','2023-06-08 06:32:00.727537'),(14,'auth','0012_alter_user_first_name_max_length','2023-06-08 06:32:00.743163'),(15,'main','0001_initial','2023-06-08 06:32:02.450526'),(16,'admin','0001_initial','2023-06-08 06:32:02.631612'),(17,'admin','0002_logentry_remove_auto_add','2023-06-08 06:32:02.651221'),(18,'admin','0003_logentry_add_action_flag_choices','2023-06-08 06:32:02.682472'),(19,'sessions','0001_initial','2023-06-08 06:32:02.713680'),(20,'main','0002_alter_event_judges_alter_event_participants_and_more','2023-06-08 06:49:19.480840'),(21,'main','0003_alter_event_judges_alter_event_participants_and_more','2023-06-08 06:49:19.621524'),(22,'main','0004_remove_participant_events_joined_and_more','2023-06-08 08:02:39.505844'),(23,'main','0005_event_status_round_status','2023-06-09 04:55:17.182759'),(24,'main','0006_alter_round_end_date_alter_round_end_time_and_more','2023-06-09 05:11:21.455877'),(25,'main','0007_alter_event_end_date','2023-06-09 09:18:40.808642'),(26,'main','0008_participant_image_url','2023-06-09 09:26:56.541786'),(27,'main','0009_participant_address','2023-06-12 13:50:21.628470'),(28,'main','0010_alter_criterion_options_total_score','2023-06-16 06:37:54.630260'),(29,'main','0011_alter_total_score_value','2023-06-16 12:05:03.712385'),(30,'main','0002_represented_entity_event_participant_and_more','2023-06-17 06:39:40.718172'),(31,'main','0002_alter_total_score_value','2023-06-20 07:25:41.911121');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2176nc7p2c9bttyw8rw8gylo7fxi66yt','.eJxVjMEOwiAQRP-FsyFgu3Tx6N1vIAssUjWQlPZk_Hdp0oNe5jDvzbyFo23Nbmu8uDmKi9Di9Nt5Ck8uO4gPKvcqQy3rMnu5K_KgTd5q5Nf1cP8OMrXc12QUUFJKI6AxZ0oMSKhGHHyKkxotMA4JFHYRvaYwhZ7RWGu1Dgzi8wXLEjd1:1q9lbE:L9qhURh36mF3vgjvzfiAqmvKrSeDL9Kze9voD-cA7TQ','2023-06-29 11:57:12.298295'),('2wwbkq70e4we6uwojkwuzgk11ocrobix','.eJxVjMEOwiAQRP-FsyFgu3Tx6N1vIAssUjWQlPZk_Hdp0oNe5jDvzbyFo23Nbmu8uDmKi9Di9Nt5Ck8uO4gPKvcqQy3rMnu5K_KgTd5q5Nf1cP8OMrXc12QUUFJKI6AxZ0oMSKhGHHyKkxotMA4JFHYRvaYwhZ7RWGu1Dgzi8wXLEjd1:1qBaqO:pCbTWvXDiMs9__dHsmioZVWbANdhCN1qpj3MxYuotEY','2023-07-04 12:52:24.783814'),('8pvh8cpw9fnqx6mnigaumgu4x1f3y6xl','.eJxVjMEOwiAQRP-FsyFgu3Tx6N1vIAssUjWQlPZk_Hdp0oNe5jDvzbyFo23Nbmu8uDmKi9Di9Nt5Ck8uO4gPKvcqQy3rMnu5K_KgTd5q5Nf1cP8OMrXc12QUUFJKI6AxZ0oMSKhGHHyKkxotMA4JFHYRvaYwhZ7RWGu1Dgzi8wXLEjd1:1q97KJ:O65QcdD-ivZ9jVzZPgFJg5HPnk_3Ltcb3aUIPLUwUDo','2023-06-27 16:57:03.558238'),('8uphuyo9klpshmq73urxq1rxtx6sf2ue','.eJxVjEEOwiAQRe_C2hDa6SC4dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX1avT7xaJH1J3kO5Ub7Pmua7LFPWu6IM2Pc5JntfD_Tso1Mq39pgogUD2Di1mZhxyL5B8FDbWoETTUR48io0iAOCRwbE7M5J11Kn3BwHGOHY:1q7zTk:mPwNmeBlbXCAlvezv67iVYgnUm4irpMWlMigmwK4EZM','2023-06-24 14:22:08.603324'),('l1k7qnx6o91kjzlmmhz1qz6gqxcemsvz','.eJxVjMEOwiAQRP-FsyFgu3Tx6N1vIAssUjWQlPZk_Hdp0oNe5jDvzbyFo23Nbmu8uDmKi9Di9Nt5Ck8uO4gPKvcqQy3rMnu5K_KgTd5q5Nf1cP8OMrXc12QUUFJKI6AxZ0oMSKhGHHyKkxotMA4JFHYRvaYwhZ7RWGu1Dgzi8wXLEjd1:1q8iYW:xiVMp08pHOhuSF58pX4V16FikNKqnwtTbVInkWJOhKw','2023-06-26 14:30:04.765211'),('ndejnm1hy6pn5y0q4uk9h5dcxv6xf0yj','.eJxVjEEOwiAQRe_C2hDa6SC4dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX1avT7xaJH1J3kO5Ub7Pmua7LFPWu6IM2Pc5JntfD_Tso1Mq39pgogUD2Di1mZhxyL5B8FDbWoETTUR48io0iAOCRwbE7M5J11Kn3BwHGOHY:1q8E1S:yFua51OmGRaT-oU1vOXDpl5fkJ_YZGmE5Brpe3IpmOk','2023-06-25 05:53:54.547520'),('z8wja3nuf635bpnoy79n6qhufc8p3zxc','.eJxVjMEOwiAQRP-FsyFgu3Tx6N1vIAssUjWQlPZk_Hdp0oNe5jDvzbyFo23Nbmu8uDmKi9Di9Nt5Ck8uO4gPKvcqQy3rMnu5K_KgTd5q5Nf1cP8OMrXc12QUUFJKI6AxZ0oMSKhGHHyKkxotMA4JFHYRvaYwhZ7RWGu1Dgzi8wXLEjd1:1qBUze:dCj_9vFEHllPItjcaq-4mNPutGqGvl1Fm41n1r12afg','2023-07-04 06:37:34.543194');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_criterion`
--

DROP TABLE IF EXISTS `main_criterion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_criterion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `max_score` int NOT NULL,
  `round_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_criterion_round_id_190e9b25_fk_main_round_id` (`round_id`),
  CONSTRAINT `main_criterion_round_id_190e9b25_fk_main_round_id` FOREIGN KEY (`round_id`) REFERENCES `main_round` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_criterion`
--

LOCK TABLES `main_criterion` WRITE;
/*!40000 ALTER TABLE `main_criterion` DISABLE KEYS */;
INSERT INTO `main_criterion` VALUES (1,'Piercings',20,4),(2,'Tattoos',20,4),(3,'Talent',30,4),(4,'Insanity',30,4),(5,'Talent',50,5),(6,'Insanity',25,5),(7,'Metalheadness',25,5),(8,'Talent',50,6),(9,'Charisma',50,6),(10,'Talent',40,7),(11,'Intelligence and Communication',30,7),(12,'Personality and charm',30,7),(13,'Personality and charm',30,8),(14,'Intelligence and Communication',30,8),(15,'Talent',40,8);
/*!40000 ALTER TABLE `main_criterion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event`
--

DROP TABLE IF EXISTS `main_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event`
--

LOCK TABLES `main_event` WRITE;
/*!40000 ALTER TABLE `main_event` DISABLE KEYS */;
INSERT INTO `main_event` VALUES (3,'Mister UDD','2023-06-09',NULL,NULL,'ended'),(4,'Miss UDD','2023-06-20',NULL,NULL,'active');
/*!40000 ALTER TABLE `main_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_judges`
--

DROP TABLE IF EXISTS `main_event_judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event_judges` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_event_judges_event_id_user_id_aa6bab3c_uniq` (`event_id`,`user_id`),
  KEY `main_event_judges_user_id_7935bba4_fk_main_user_id` (`user_id`),
  CONSTRAINT `main_event_judges_event_id_22cc9858_fk_main_event_id` FOREIGN KEY (`event_id`) REFERENCES `main_event` (`id`),
  CONSTRAINT `main_event_judges_user_id_7935bba4_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event_judges`
--

LOCK TABLES `main_event_judges` WRITE;
/*!40000 ALTER TABLE `main_event_judges` DISABLE KEYS */;
INSERT INTO `main_event_judges` VALUES (2,3,2),(3,3,3),(4,4,3),(5,4,4);
/*!40000 ALTER TABLE `main_event_judges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event_participant`
--

DROP TABLE IF EXISTS `main_event_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_event_participant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `candidate_number` int NOT NULL,
  `event_id` bigint NOT NULL,
  `participant_id` bigint NOT NULL,
  `represented_entity_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `main_event_participant_event_id_b2061d27_fk_main_event_id` (`event_id`),
  KEY `main_event_participa_participant_id_b972051e_fk_main_part` (`participant_id`),
  KEY `main_event_participa_represented_entity_i_a50794d0_fk_main_repr` (`represented_entity_id`),
  CONSTRAINT `main_event_participa_participant_id_b972051e_fk_main_part` FOREIGN KEY (`participant_id`) REFERENCES `main_participant` (`id`),
  CONSTRAINT `main_event_participa_represented_entity_i_a50794d0_fk_main_repr` FOREIGN KEY (`represented_entity_id`) REFERENCES `main_represented_entity` (`id`),
  CONSTRAINT `main_event_participant_event_id_b2061d27_fk_main_event_id` FOREIGN KEY (`event_id`) REFERENCES `main_event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event_participant`
--

LOCK TABLES `main_event_participant` WRITE;
/*!40000 ALTER TABLE `main_event_participant` DISABLE KEYS */;
INSERT INTO `main_event_participant` VALUES (1,89,3,1,1),(2,56,3,2,1),(3,23,3,3,2),(4,0,3,4,5),(5,78,4,5,3),(6,45,4,6,3),(7,12,4,7,3),(8,21,4,8,4),(9,54,4,9,4);
/*!40000 ALTER TABLE `main_event_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_participant`
--

DROP TABLE IF EXISTS `main_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_participant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone_number` varchar(200) DEFAULT NULL,
  `gender` varchar(200) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_participant`
--

LOCK TABLES `main_participant` WRITE;
/*!40000 ALTER TABLE `main_participant` DISABLE KEYS */;
INSERT INTO `main_participant` VALUES (1,'Synyster',NULL,'Gates',NULL,NULL,'M','syn.jpg',NULL),(2,'Zacky',NULL,'Vengeance',NULL,NULL,'M','zacky.jpg',NULL),(3,'M',NULL,'Shadows',NULL,NULL,'M','m.png',NULL),(4,'Jimmy',NULL,'Sullivan',NULL,NULL,'M','rev.jpg',NULL),(5,'Anne',NULL,'Curtis',NULL,NULL,'F','anne.jpg',NULL),(6,'Liza',NULL,'Soberano',NULL,NULL,'F','liza.jpg',NULL),(7,'Kathryn',NULL,'Bernardo',NULL,NULL,'F','kathryn.jpg',NULL),(8,'Barbie',NULL,'Forteza',NULL,NULL,'F','barbie.jpg',NULL),(9,'Kiray',NULL,'Celis',NULL,NULL,'F','kiray.jpg',NULL);
/*!40000 ALTER TABLE `main_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_represented_entity`
--

DROP TABLE IF EXISTS `main_represented_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_represented_entity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_represented_entity`
--

LOCK TABLES `main_represented_entity` WRITE;
/*!40000 ALTER TABLE `main_represented_entity` DISABLE KEYS */;
INSERT INTO `main_represented_entity` VALUES (1,'Schecter'),(2,'Shure'),(3,'ABB-CNS'),(4,'AGM'),(5,'DW');
/*!40000 ALTER TABLE `main_represented_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_round`
--

DROP TABLE IF EXISTS `main_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_round` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `number` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) DEFAULT NULL,
  `location` varchar(200) NOT NULL,
  `event_id` bigint NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_round_event_id_ae73d76c_fk_main_event_id` (`event_id`),
  CONSTRAINT `main_round_event_id_ae73d76c_fk_main_event_id` FOREIGN KEY (`event_id`) REFERENCES `main_event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_round`
--

LOCK TABLES `main_round` WRITE;
/*!40000 ALTER TABLE `main_round` DISABLE KEYS */;
INSERT INTO `main_round` VALUES (4,'Prelim',1,'2023-06-09','2023-06-09','17:21:10.000000',NULL,'LCR gymn',3,'ended'),(5,'Semi',2,'2023-06-12','2023-06-12','22:21:42.000000',NULL,'LCR gymn',3,'ended'),(6,'Finals',3,'2023-06-13','2023-06-13','19:40:50.000000',NULL,'LCR gymn',3,'ended'),(7,'Prelim',1,'2023-06-20','2023-06-20','14:00:47.000000',NULL,'LCR gymn',4,'ended'),(8,'Semi',2,'2023-06-21',NULL,'15:29:13.000000',NULL,'LCR gymn',4,'active'),(9,'Finals',3,'2023-06-23',NULL,'15:37:42.000000',NULL,'LCR gymn',4,'scheduled');
/*!40000 ALTER TABLE `main_round` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_round_participants`
--

DROP TABLE IF EXISTS `main_round_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_round_participants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `round_id` bigint NOT NULL,
  `participant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_round_participants_round_id_participant_id_d9e2bff9_uniq` (`round_id`,`participant_id`),
  KEY `main_round_participa_participant_id_2c89663a_fk_main_part` (`participant_id`),
  CONSTRAINT `main_round_participa_participant_id_2c89663a_fk_main_part` FOREIGN KEY (`participant_id`) REFERENCES `main_participant` (`id`),
  CONSTRAINT `main_round_participants_round_id_25038184_fk_main_round_id` FOREIGN KEY (`round_id`) REFERENCES `main_round` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_round_participants`
--

LOCK TABLES `main_round_participants` WRITE;
/*!40000 ALTER TABLE `main_round_participants` DISABLE KEYS */;
INSERT INTO `main_round_participants` VALUES (1,4,1),(2,4,2),(3,4,3),(5,4,4),(6,5,2),(7,5,3),(8,5,4),(11,6,3),(10,6,4),(12,7,5),(13,7,6),(14,7,7),(15,7,8),(16,7,9),(19,8,6),(20,8,7),(17,8,8),(18,8,9);
/*!40000 ALTER TABLE `main_round_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_score`
--

DROP TABLE IF EXISTS `main_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_score` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `criterion_id` bigint NOT NULL,
  `judge_id` bigint NOT NULL,
  `participant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_score_criterion_id_8792ce50_fk_main_criterion_id` (`criterion_id`),
  KEY `main_score_judge_id_4af45884_fk_main_user_id` (`judge_id`),
  KEY `main_score_participant_id_a1dd6a74_fk_main_participant_id` (`participant_id`),
  CONSTRAINT `main_score_criterion_id_8792ce50_fk_main_criterion_id` FOREIGN KEY (`criterion_id`) REFERENCES `main_criterion` (`id`),
  CONSTRAINT `main_score_judge_id_4af45884_fk_main_user_id` FOREIGN KEY (`judge_id`) REFERENCES `main_user` (`id`),
  CONSTRAINT `main_score_participant_id_a1dd6a74_fk_main_participant_id` FOREIGN KEY (`participant_id`) REFERENCES `main_participant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_score`
--

LOCK TABLES `main_score` WRITE;
/*!40000 ALTER TABLE `main_score` DISABLE KEYS */;
INSERT INTO `main_score` VALUES (74,10,1,3,1),(75,18,2,3,1),(76,30,3,3,1),(77,22,4,3,1),(78,20,1,3,2),(79,18,2,3,2),(80,24,3,3,2),(81,27,4,3,2),(82,10,1,3,3),(83,18,2,3,3),(84,30,3,3,3),(85,30,4,3,3),(86,10,1,3,4),(87,20,2,3,4),(88,30,3,3,4),(89,30,4,3,4),(90,11,1,2,1),(91,17,2,2,1),(92,29,3,2,1),(93,21,4,2,1),(94,20,1,2,2),(95,18,2,2,2),(96,22,3,2,2),(97,24,4,2,2),(98,10,1,2,3),(99,18,2,2,3),(100,30,3,2,3),(101,28,4,2,3),(102,11,1,2,4),(103,20,2,2,4),(104,30,3,2,4),(105,30,4,2,4),(106,50,5,3,4),(107,25,6,3,4),(108,20,7,3,4),(109,40,5,3,2),(110,20,6,3,2),(111,20,7,3,2),(112,50,5,3,3),(113,18,6,3,3),(114,25,7,3,3),(115,50,5,2,4),(116,25,6,2,4),(117,20,7,2,4),(118,48,5,2,3),(119,19,6,2,3),(120,24,7,2,3),(121,34,5,2,2),(122,19,6,2,2),(123,21,7,2,2),(132,45,8,2,3),(133,45,9,2,3),(134,44,8,3,3),(135,44,9,3,3),(137,50,8,3,4),(138,47,9,3,4),(139,49,8,2,4),(140,49,9,2,4),(141,40,10,3,9),(142,30,11,3,9),(143,30,12,3,9),(144,30,10,3,5),(145,30,11,3,5),(146,27,12,3,5),(147,36,10,3,6),(148,28,11,3,6),(149,30,12,3,6),(150,38,10,3,7),(151,29,11,3,7),(152,28,12,3,7),(153,37,10,3,8),(154,28,11,3,8),(155,27,12,3,8),(156,34,10,4,5),(157,25,11,4,5),(158,26,12,4,5),(159,36,10,4,6),(160,28,11,4,6),(161,27,12,4,6),(162,36,10,4,7),(163,28,11,4,7),(164,28,12,4,7),(165,39,10,4,8),(166,28,11,4,8),(167,29,12,4,8),(174,40,10,4,9),(175,30,11,4,9),(176,30,12,4,9);
/*!40000 ALTER TABLE `main_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_total_score`
--

DROP TABLE IF EXISTS `main_total_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_total_score` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` decimal(5,2) NOT NULL,
  `participant_id` bigint NOT NULL,
  `round_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_total_score_participant_id_05dd0b69_fk_main_participant_id` (`participant_id`),
  KEY `main_total_score_round_id_75172a58_fk_main_round_id` (`round_id`),
  CONSTRAINT `main_total_score_participant_id_05dd0b69_fk_main_participant_id` FOREIGN KEY (`participant_id`) REFERENCES `main_participant` (`id`),
  CONSTRAINT `main_total_score_round_id_75172a58_fk_main_round_id` FOREIGN KEY (`round_id`) REFERENCES `main_round` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_total_score`
--

LOCK TABLES `main_total_score` WRITE;
/*!40000 ALTER TABLE `main_total_score` DISABLE KEYS */;
INSERT INTO `main_total_score` VALUES (8,79.00,1,4),(9,86.50,2,4),(10,88.00,3,4),(11,90.50,4,4),(12,95.00,4,5),(13,77.00,2,5),(14,92.00,3,5),(16,89.00,3,6),(17,97.50,4,6),(18,100.00,9,7),(19,86.00,5,7),(20,92.50,6,7),(21,93.50,7,7),(22,94.00,8,7);
/*!40000 ALTER TABLE `main_total_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_user`
--

DROP TABLE IF EXISTS `main_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_user`
--

LOCK TABLES `main_user` WRITE;
/*!40000 ALTER TABLE `main_user` DISABLE KEYS */;
INSERT INTO `main_user` VALUES (1,'pbkdf2_sha256$600000$Br2RG0LvM1cGG3TYpqIvO8$E/6FSEb641634RzK8KD5Lf3dfw9w6T20vlA1XcNaR00=','2023-06-20 12:52:24.767984',1,'admin','Viego','Ogeiv','',1,1,'2023-06-08 06:34:02.000000'),(2,'pbkdf2_sha256$600000$Hd94otv7wylBM1QJq3xLBH$7X5b7AFozVXEakyAAtjtq+QvLElGy1WVd4SX5SJSlGo=','2023-06-20 10:01:07.959135',0,'johnny','Jonathan','Seward','',0,1,'2023-06-08 08:07:56.000000'),(3,'pbkdf2_sha256$600000$yoDeNODIAYJZM1TeSo3Kc4$xP0p7gkLptHvU8WFYPyV8fB+/0iVMvkAuSlSYKa664Q=','2023-06-20 10:03:30.613674',0,'pbateman','Patrick','Bateman','',0,1,'2023-06-16 11:29:32.000000'),(4,'pbkdf2_sha256$600000$LW49kikpMjZjp5WgEtMSbF$Wa9fiBixCt2dds+lcnen6ZBId8Dv/OfsirHfmpXAtZU=','2023-06-20 07:22:04.783115',0,'pparkour','Peter','Parkour','',0,1,'2023-06-16 11:30:59.000000');
/*!40000 ALTER TABLE `main_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_user_groups`
--

DROP TABLE IF EXISTS `main_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_user_groups_user_id_group_id_ae195797_uniq` (`user_id`,`group_id`),
  KEY `main_user_groups_group_id_a337ba62_fk_auth_group_id` (`group_id`),
  CONSTRAINT `main_user_groups_group_id_a337ba62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `main_user_groups_user_id_df502602_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_user_groups`
--

LOCK TABLES `main_user_groups` WRITE;
/*!40000 ALTER TABLE `main_user_groups` DISABLE KEYS */;
INSERT INTO `main_user_groups` VALUES (4,1,2),(1,2,1),(2,3,1),(3,4,1);
/*!40000 ALTER TABLE `main_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_user_user_permissions`
--

DROP TABLE IF EXISTS `main_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_user_user_permissions_user_id_permission_id_96b9fadf_uniq` (`user_id`,`permission_id`),
  KEY `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` (`permission_id`),
  CONSTRAINT `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `main_user_user_permissions_user_id_451ce57f_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_user_user_permissions`
--

LOCK TABLES `main_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `main_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 21:51:22