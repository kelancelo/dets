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

-- Dump completed on 2023-06-20 21:19:44
