-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: mehaDB
-- ------------------------------------------------------
-- Server version 5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chatbot_details`
--

DROP TABLE IF EXISTS `chatbot_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `feedback` varchar(3000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_details`
--

LOCK TABLES `chatbot_details` WRITE;
/*!40000 ALTER TABLE `chatbot_details` DISABLE KEYS */;
INSERT INTO `chatbot_details` VALUES (1,'minnu ann',2);
/*!40000 ALTER TABLE `chatbot_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_user`
--

DROP TABLE IF EXISTS `history_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `browserid` varchar(30) DEFAULT NULL,
  `chat_start` datetime DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_sent_at` datetime DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `feeling` enum('Very Happy','Happy','Not So Bad','Neutral','Not So Good','Sad','Very Sad') DEFAULT NULL,
  `chat_end` datetime DEFAULT NULL,
  `reported` decimal(1,0) DEFAULT NULL,
  `who_score` int(11) DEFAULT '-999',
  `screener_score` int(11) DEFAULT '-999',
  `senti_score` int(11) DEFAULT '-999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_SESSION_HISTORY` (`browserid`,`chat_start`),
  CONSTRAINT `history_user_ibfk_1` FOREIGN KEY (`browserid`) REFERENCES `user` (`browserid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_user`
--

LOCK TABLES `history_user` WRITE;
/*!40000 ALTER TABLE `history_user` DISABLE KEYS */;
INSERT INTO `history_user` VALUES (44,NULL,'saigowri.kumar@gmail.com','15429117830151321963407','2018-11-23 00:23:14',NULL,NULL,1,'Happy','2018-11-23 00:26:10',NULL,-999,-999,-999),(45,NULL,'saigowri.kumar@gmail.com','15429129704222509531110','2018-11-23 00:26:15',943507,'2018-11-23 00:26:41',NULL,'Very Happy','2018-11-23 00:26:56',NULL,-999,-999,-999),(46,NULL,NULL,'15429556590748528575000','2018-11-23 12:18:07',NULL,NULL,NULL,'Not So Good','2018-11-23 12:20:00',0,-999,-999,-999),(47,NULL,'saigowri.kumar@gmail.com','15429117830151321963407','2018-11-23 12:20:08',NULL,NULL,1,'Happy','2018-11-23 12:20:21',0,-999,-999,-999),(48,NULL,'saigowri.kumar@gmail.com','15429117830151321963407','2018-11-23 12:28:44',NULL,NULL,1,'Happy','2018-11-23 12:28:50',0,-999,-999,-999),(49,NULL,'saigowri.kumar@gmail.com','15429117830151321963407','2018-11-23 12:28:52',NULL,NULL,1,'Happy','2018-11-23 12:28:52',0,-999,-999,-999),(50,NULL,NULL,'15429115102376398599086','2018-11-25 14:26:14',NULL,NULL,NULL,'Happy','2018-11-25 14:29:23',0,-999,-999,-999),(51,NULL,NULL,'15429115102376398599086','2018-11-25 14:29:33',NULL,NULL,NULL,'Happy','2018-11-25 14:29:53',0,-999,-999,-999),(52,NULL,NULL,'15429115102376398599086','2018-11-25 14:29:55',NULL,NULL,NULL,'Happy','2018-11-25 14:30:01',0,-999,-999,-999),(53,NULL,NULL,'15429115102376398599086','2018-11-25 14:30:02',NULL,NULL,NULL,'Happy','2018-11-25 14:33:00',0,-999,-999,-999),(54,NULL,NULL,'15429115102376398599086','2018-11-25 14:38:53',NULL,NULL,NULL,'Happy','2018-11-25 14:39:07',0,-999,-999,-999),(55,NULL,NULL,'15429115102376398599086','2018-11-25 14:39:09',NULL,NULL,NULL,'Happy','2018-11-25 14:39:36',0,-999,-999,-999),(56,NULL,NULL,'15429115102376398599086','2018-11-25 14:39:38',NULL,NULL,NULL,'Happy','2018-11-25 14:40:14',0,-999,-999,-999),(57,NULL,NULL,'15429115102376398599086','2018-11-25 14:40:15',NULL,NULL,NULL,'Happy','2018-11-25 14:40:31',0,-999,-999,-999),(58,NULL,NULL,'15429115102376398599086','2018-11-25 15:02:32',NULL,NULL,NULL,'Neutral','2018-11-25 15:03:07',0,-999,-999,-999),(59,NULL,NULL,'15429115102376398599086','2018-11-25 15:06:54',NULL,NULL,NULL,'Neutral','2018-11-25 15:07:17',0,-999,-999,-999),(60,NULL,NULL,'15429115102376398599086','2018-11-25 16:02:03',NULL,NULL,NULL,'Very Sad','2018-11-25 16:02:18',0,-999,-999,-999),(61,NULL,NULL,'15429115102376398599086','2018-11-25 16:02:20',NULL,NULL,NULL,'Happy','2018-11-25 16:03:57',0,-999,-999,-999),(62,NULL,NULL,'15429115102376398599086','2018-11-25 16:03:59',NULL,NULL,NULL,'Very Happy','2018-11-25 16:07:15',0,-999,-999,-999),(63,NULL,NULL,'15429115102376398599086','2018-11-25 16:07:16',NULL,NULL,NULL,'Happy','2018-11-25 16:07:57',0,-999,-999,-999),(64,NULL,NULL,'15429115102376398599086','2018-11-25 16:07:59',NULL,NULL,NULL,'Neutral','2018-11-25 16:08:29',0,-999,-999,-999),(65,NULL,NULL,'15429115102376398599086','2018-11-25 16:08:30',NULL,NULL,NULL,'Neutral','2018-11-25 16:09:17',0,-999,-999,-999),(66,NULL,NULL,'15429115102376398599086','2018-11-25 16:09:19',NULL,NULL,NULL,'Very Happy','2018-11-25 16:18:17',0,-999,-999,-999),(67,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:18:19',201921,'2018-11-25 16:25:24',NULL,'Not So Good','2018-11-25 16:38:32',0,-999,-999,-999),(68,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:38:34',201921,'2018-11-25 16:25:24',NULL,'Happy','2018-11-25 16:39:31',0,-999,-999,-999),(69,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:39:32',201921,'2018-11-25 16:25:24',NULL,'Neutral','2018-11-25 16:40:05',0,-999,-999,-999),(70,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:40:09',201921,'2018-11-25 16:25:24',NULL,'Neutral','2018-11-25 16:40:51',0,-999,-999,-999),(71,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:40:53',201921,'2018-11-25 16:25:24',NULL,'Very Happy','2018-11-25 16:45:30',0,-999,-999,-999),(72,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:45:32',201921,'2018-11-25 16:25:24',NULL,'Neutral','2018-11-25 16:46:36',0,-999,-999,-999),(73,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:46:44',201921,'2018-11-25 16:25:24',NULL,'Very Happy','2018-11-25 16:47:02',0,-999,-999,-999),(74,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 16:47:04',201921,'2018-11-25 16:25:24',NULL,'Neutral','2018-11-25 17:03:40',0,-999,-999,-999),(75,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:03:44',201921,'2018-11-25 16:25:24',NULL,'Very Happy','2018-11-25 17:04:14',0,-999,-999,-999),(76,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:22:35',201921,'2018-11-25 16:25:24',NULL,'Not So Good','2018-11-25 17:22:41',0,-999,-999,-999),(77,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:35:28',201921,'2018-11-25 16:25:24',NULL,'Happy','2018-11-25 17:36:41',0,-999,-999,-999),(78,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:36:42',201921,'2018-11-25 16:25:24',NULL,'Very Happy','2018-11-25 17:36:45',0,-999,-999,-999),(79,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:43:49',201921,'2018-11-25 16:25:24',NULL,'Happy','2018-11-25 17:43:51',0,-999,-999,-999),(80,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:43:54',201921,'2018-11-25 16:25:24',NULL,'Very Sad','2018-11-25 17:44:35',0,-999,-999,-999);
/*!40000 ALTER TABLE `history_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hospital` varchar(500) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `longi` float DEFAULT NULL,
  `facilities` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Govt.  Hospital for Mental Health Care, S.R. Nagar, Hyderabad, Andra Pradesh','Andra Pradesh','500038',17.436,78.4454,NULL),(2,'Govt. Hospital for Mental Care, Chinnawaltair, Visakapatnam, Andra Pradesh','Andra Pradesh','500023',17.445,78.3856,NULL),(3,'Lokopriya Gopinath Bordoloi Institute of Mental Health,P.O. Tezpur, Sonitpur, Assam','Assam  ','784001',26.623,92.7998,NULL),(4,'Central Institute of Psychiatry, Kanke P.O. Ranchi, Jharkand','Jharkhand','834006',23.4084,85.3174,NULL),(5,'Ranchi Institute of Neuropsychiaty and Allied Science(RINPAS), Kanke, Ranchi ,Bihar, Jharkand','Jharkhand  ','834006',23.4084,85.3174,NULL),(6,'Institute of Human Behavior & Allied Sciences, G.T. Road, P.O. Box 9520, Jhilmil, Delhi','Delhi  ','110095',28.6585,77.281,NULL),(7,'Mental Health Centre, Oolampara, Thiruvanathapuram, Kerala','Kerala','695005',8.53399,76.9614,NULL),(8,'Institute of Psychiatry & Human Behavior,Altinho, Panaji, Goa','Goa','403001',15.51,73.8162,NULL),(9,'Hospital for Mental Health, Bhuj, Gujarat','Gujarat','370001',23.245,69.665,NULL),(10,'Hospital for Mental Health, Vikasgruh Road, Jamnagar, Gujarat','Gujarat','361008',22.479,70.0593,NULL),(11,'Hospital for Mental Health, Behind Kapadia High School, Outside Delhi Gate, Shahibaug Road, Ahamedabad, Gujarat','Gujarat','380004',23.0477,72.5888,NULL),(12,'Hospital for Mental Health, Karelibag, Baroda, Gujarat','Gujarat','390018',22.4123,79.1329,NULL),(13,'Govt. Hospital for Psychiatric Diseases, Rainawari, Khatidarwaze, Srinagar , Jammu & Kashmir','Jammu & Kashmir','190003',32.702,74.8719,NULL),(14,'Psychiatric Diseases hospital GMC, Jammu, Ambphalla B.C. Road,Jammu, Jammu & Kashmir','Jammu & Kashmir','180001',32.7186,74.8581,NULL),(15,'Karnataka Institute of Mental Health, Belgaum Road, Dharwad, Karnataka','Karnataka','580008',15.4617,75.0062,NULL),(16,'National Institute of Mental Health and Neuro Sciences, NIMHANS, P.O. Box No 2900, Bangalore, Karanataka','Karnataka','560029',12.9262,77.5974,NULL),(17,'Mental Health Centre, Oolampara, Thiruvanathapuram, Kerala','Kerala','695005',8.53656,76.9665,NULL),(18,'Govt. Mental Health Centre, Kuthiravattom P.O. Kozhikode, Kerala','Kerala','673016',11.2572,75.8182,NULL),(19,'Govt. Mental Health Centre, Poothole P.O., Thrissur, Kerala','Kerala','680004',10.5225,76.2054,NULL),(20,'Gwalior Manasik Arogyasala, Central jail Road, Gwalior, Madhya Pradesh','Madhya Pradesh','474012',24.5221,81.3106,NULL),(21,'Mental Hospital, Banganga Sawer Road, Indore, Madhya Pradesh','Madhya Pradesh','452002',22.7665,75.9007,NULL),(22,'Regional Mental Hospital, Nagpur, Maharashtra','Maharashtra','440029',21.1773,79.0819,NULL),(23,'Regional Mental Hospital, Yeravda, Pune, Maharashtra','Maharashtra','440029',18.5519,73.8918,NULL),(24,'Regional Mental Hospital, Ratnagiri, Maharashtra','Maharashtra','440029',16.9934,73.2954,NULL),(25,'Regional Mental Hospital, Wagle Estate, Thane (W), Maharashtra','Maharashtra','400604',19.2178,72.9854,NULL),(26,'Mental Hospital, Kohima, Nagaland','Nagaland','797001',25.6669,94.1055,NULL),(27,'Mental Health Institute, S.C.B. Medical College, Cuttack, Orissa','Orissa','753007',22.4123,79.1329,NULL),(28,'Dr. Vidyasagar Punjab Mental Hospital, \nCircular Road, Amritsar, Punjab','Punjab','143001',31.6324,74.869,NULL),(29,'Mental Hospital (Psychiatric Centre), \nJanta Colony, Jaipur, Rajasthan','Rajasthan','302004',26.9044,75.8323,NULL),(30,'Mental Hospital,(Psychiatric Center),Shastri Nagar, Jodhpur, Rajasthan','Rajasthan','342001',26.2656,72.9837,NULL),(31,'Institute of Mental Health, Medavakkam Tank Road, Kilpauk, Chennai, Tamil Nadu','Tamil Nadu','600010',13.0856,80.2348,NULL),(32,'Institute of Mental Health & Hospital, Billochpura, Mathura Road, Agra, Uttar Pradesh','Uttar Pradesh','282002',27.2199,77.9348,NULL),(33,'Mental Hospital Bareilly\nCivil Lines, Bareilly, Uttar Pradesh','Uttar Pradesh','243005',28.365,79.4325,NULL),(34,'Mental Hospital, S2/1 Pandeypur, Varanasi, Uttar Pradesh','Uttar Pradesh','221002',25.345,82.9904,NULL),(35,'Lumbini Park Mental Hospital, 115, G.S, Bose Road, Calcutta, West Bengal','West Bengal','700010',22.5656,88.3702,NULL),(36,'Calcutta Pavlov Hospital, 18, Gobra Road, Calcutta, West Bengal','West Bengal','700046',22.5313,88.396,NULL),(37,'Institute of Psychiatry, 7, D.L. Khan Road, Calcutta, West Bengal','West Bengal','700025',22.5257,88.3501,NULL),(38,'The Mental Hospital (Calcutta & Mankundu), 133, Vivekananda Road, Calcutta, West Bengal','West Bengal','700006',22.587,88.3704,NULL),(39,'Institute for Mental Care, Purulia P.O., Purulia, West Bengal','West Bengal','723103',23.2483,86.4997,NULL),(40,'Mental Hospital Berhampore, Berhampore Mental Hospital, Berhampore P.O, Murshidabad, West Bengal','West Bengal','742101',24.1048,88.251,NULL),(41,'Himachal Hospital of Mental Health & Rehabilitation, Boileauganj, Shimla','Shimla','171004',31.1042,77.171,NULL),(42,'Institute of Mental Health, Koelwar, Bhojpur, Bihar','Bihar','802301',27.25,87.0833,NULL),(43,'Meghalaya Institute of Mental Health & Neurosciences, Shillong, Meghalaya','Meghalaya','793001',25.576,91.8828,NULL),(44,'Government Mental Hospital, Agartala, Tripura','Tripura','799001',23.8328,91.2791,NULL);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pushd_details`
--

DROP TABLE IF EXISTS `pushd_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pushd_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(3000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pushd_details`
--

LOCK TABLES `pushd_details` WRITE;
/*!40000 ALTER TABLE `pushd_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `pushd_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `browserid` varchar(30) DEFAULT NULL,
  `chat_start` datetime DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `otp_sent_at` datetime DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `feeling` enum('Very Happy','Happy','Not So Bad','Neutral','Not So Good','Sad','Very Sad') DEFAULT NULL,
  `chat_end` datetime DEFAULT NULL,
  `reported` decimal(1,0) DEFAULT NULL,
  `who_score` int(11) DEFAULT '-999',
  `screener_score` int(11) DEFAULT '-999',
  `senti_score` int(11) DEFAULT '-999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessionid` (`browserid`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (222,NULL,'saigowri.kumar@gmail.com','15429117830151321963407','2018-11-23 12:28:52',NULL,NULL,1,'Happy','2018-11-23 12:28:52',0,-999,-999,-999),(224,NULL,'saigowri.kumar@gmail.com','15429129704222509531110','2018-11-23 00:26:15',943507,'2018-11-23 00:26:41',NULL,'Very Happy','2018-11-23 00:26:56',NULL,-999,-999,-999),(227,NULL,NULL,'15429556590748528575000','2018-11-23 12:18:07',NULL,NULL,NULL,'Not So Good','2018-11-23 12:20:00',0,-999,-999,-999),(232,NULL,NULL,'15429582733031935978848','2018-11-23 13:01:16',NULL,NULL,NULL,'Not So Good','1970-01-01 05:30:00',0,-999,-999,-999),(234,NULL,'minnuann5@gmail.com','15429115102376398599086','2018-11-25 17:44:42',201921,'2018-11-25 16:25:24',NULL,'Very Happy','1970-01-01 05:30:00',0,-999,-999,-999);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wellness_app_details`
--

DROP TABLE IF EXISTS `wellness_app_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellness_app_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feedback` varchar(3000) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wellness_app_details`
--

LOCK TABLES `wellness_app_details` WRITE;
/*!40000 ALTER TABLE `wellness_app_details` DISABLE KEYS */;
INSERT INTO `wellness_app_details` VALUES (1,'idk',2),(2,'bla',5),(3,'ijkdjk',4),(4,'jjj',1),(5,'qwe',1),(6,'okay',1),(7,'abcd',1),(8,'ijijijiji',2),(9,'lklklklklk',5),(10,'erer',4),(11,'minnamma',3),(12,'wow',1),(13,'bla bla ',4),(14,'kjkjfhgfh',4);
/*!40000 ALTER TABLE `wellness_app_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 18:45:09