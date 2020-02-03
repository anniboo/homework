-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: VK
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (8,'ad'),(3,'commodi'),(10,'consectetur'),(9,'hic'),(2,'in'),(5,'magnam'),(1,'possimus'),(4,'sit'),(7,'ut'),(6,'voluptatibus');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,4),(1,10),(1,36),(1,46),(2,7),(2,8),(2,22),(2,33),(2,38),(2,50),(3,2),(3,6),(3,15),(3,16),(3,20),(3,26),(3,32),(4,12),(5,18),(5,27),(5,29),(5,45),(6,11),(6,30),(6,34),(6,41),(6,47),(7,39),(7,40),(7,49),(8,3),(8,13),(8,19),(8,23),(8,35),(8,43),(9,5),(9,17),(9,24),(9,37),(9,44),(9,48),(10,1),(10,9),(10,14),(10,21),(10,25),(10,28),(10,31),(10,42);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_statuses`
--

DROP TABLE IF EXISTS `family_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_statuses`
--

LOCK TABLES `family_statuses` WRITE;
/*!40000 ALTER TABLE `family_statuses` DISABLE KEYS */;
INSERT INTO `family_statuses` VALUES (2,'Married'),(1,'Single');
/*!40000 ALTER TABLE `family_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,56,1,'1977-04-22 22:24:28',NULL),(2,50,3,'1974-02-23 01:22:02',NULL),(2,64,3,'1980-11-27 13:06:05',NULL),(2,83,1,'2007-09-27 14:05:43',NULL),(4,62,1,'1994-08-14 21:14:01',NULL),(4,71,2,'1983-11-04 09:45:20','1983-11-04 09:45:20'),(8,3,3,'1982-09-14 05:11:07',NULL),(8,98,2,'2001-03-18 09:01:45','2001-03-18 09:01:45'),(10,20,3,'1978-03-08 17:02:03',NULL),(10,91,3,'1994-08-16 20:01:44',NULL),(10,92,2,'1994-04-19 03:58:47','1994-04-19 03:58:47'),(10,93,1,'1981-01-18 01:05:28',NULL),(12,32,2,'2001-05-25 04:55:48','2001-05-25 04:55:48'),(12,82,1,'1974-03-04 07:26:04',NULL),(14,15,1,'1991-03-12 16:53:32',NULL),(14,80,3,'2014-06-28 05:40:13',NULL),(16,20,1,'2011-09-17 23:38:02',NULL),(16,41,2,'2017-12-30 19:40:26','2017-12-30 19:40:26'),(16,43,3,'1991-06-18 02:32:28',NULL),(16,52,3,'1994-10-16 01:06:04',NULL),(16,54,1,'2017-02-07 19:23:12',NULL),(17,34,2,'1970-07-02 17:53:28','1970-07-02 17:53:28'),(17,43,2,'2000-02-26 12:53:15','2000-02-26 12:53:15'),(17,89,1,'1996-01-04 23:25:02',NULL),(17,93,2,'1978-11-17 02:59:05','1978-11-17 02:59:05'),(20,45,2,'1978-11-29 22:25:43','1978-11-29 22:25:43'),(21,54,1,'1991-09-24 11:39:46',NULL),(21,58,1,'1975-09-07 00:29:29',NULL),(24,7,3,'2001-12-29 23:23:05',NULL),(24,94,1,'1990-02-20 13:13:37',NULL),(26,40,2,'2007-04-06 16:23:47','2007-04-06 16:23:47'),(26,43,1,'1992-07-26 07:14:19',NULL),(26,52,3,'2018-07-07 07:01:31',NULL),(27,93,3,'1993-11-08 08:45:31',NULL),(28,36,1,'2010-03-19 04:33:15',NULL),(33,90,1,'1993-11-14 07:18:41',NULL),(33,100,2,'2017-11-05 23:50:18','2017-11-05 23:50:18'),(34,53,2,'2000-10-24 03:39:27','2000-10-24 03:39:27'),(34,91,3,'2017-12-25 01:15:33',NULL),(35,11,3,'2000-10-30 03:49:31',NULL),(35,97,2,'1991-04-11 16:43:27','1991-04-11 16:43:27'),(37,63,3,'2016-03-20 05:25:22',NULL),(37,82,3,'1984-12-07 02:58:04',NULL),(41,20,3,'1988-04-12 18:42:36',NULL),(43,52,2,'2011-10-19 00:12:16','2011-10-19 00:12:16'),(45,46,1,'2017-07-21 18:07:38',NULL),(45,100,1,'2003-05-11 14:47:15',NULL),(46,24,2,'1988-05-17 08:03:07','1988-05-17 08:03:07'),(51,84,2,'1992-07-15 05:44:19','1992-07-15 05:44:19'),(52,48,1,'1994-04-15 12:38:20',NULL),(54,86,2,'1977-08-17 05:28:58','1977-08-17 05:28:58'),(55,85,2,'1979-10-12 15:00:14','1979-10-12 15:00:14'),(57,69,2,'2013-12-07 11:00:47','2013-12-07 11:00:47'),(58,88,3,'1979-05-01 18:30:51',NULL),(59,31,3,'1990-12-21 11:59:10',NULL),(62,91,1,'1979-03-07 11:01:52',NULL),(63,62,3,'1983-06-30 21:05:27',NULL),(66,35,1,'1980-02-10 12:57:09',NULL),(66,90,3,'1988-12-28 02:35:16',NULL),(68,45,1,'1982-08-20 03:24:54',NULL),(69,26,3,'1986-04-09 21:28:15',NULL),(69,52,2,'2000-05-18 19:05:59','2000-05-18 19:05:59'),(69,74,2,'1992-11-08 15:50:32','1992-11-08 15:50:32'),(70,91,1,'1985-08-10 11:32:12',NULL),(71,32,3,'1990-01-31 14:50:07',NULL),(72,47,2,'1984-10-20 12:02:48','1984-10-20 12:02:48'),(72,89,2,'2008-03-01 10:53:41','2008-03-01 10:53:41'),(73,68,1,'2018-12-16 15:14:09',NULL),(73,85,1,'1992-09-23 02:26:44',NULL),(73,98,1,'1999-01-05 07:12:21',NULL),(74,31,2,'2011-10-28 09:22:01','2011-10-28 09:22:01'),(76,100,2,'1977-07-14 06:55:49','1977-07-14 06:55:49'),(77,7,3,'2001-11-20 16:48:11',NULL),(77,35,3,'2000-05-20 07:34:54',NULL),(77,53,1,'2012-01-25 14:22:35',NULL),(78,31,2,'2017-02-17 01:28:36','2017-02-17 01:28:36'),(78,58,2,'1982-02-15 21:12:33','1982-02-15 21:12:33'),(79,13,1,'1992-09-10 13:35:48',NULL),(79,19,2,'1994-02-01 01:32:01','1994-02-01 01:32:01'),(79,81,3,'1970-11-29 11:23:53',NULL),(80,27,1,'1989-05-26 14:04:05',NULL),(80,57,1,'1983-06-25 09:03:06',NULL),(81,62,1,'2004-04-28 03:40:47',NULL),(82,28,1,'1997-11-21 09:25:52',NULL),(83,55,3,'1978-12-06 08:43:59',NULL),(83,89,1,'1993-01-30 02:11:04',NULL),(85,40,2,'2003-02-22 14:01:26','2003-02-22 14:01:26'),(85,82,2,'1981-04-06 23:34:55','1981-04-06 23:34:55'),(86,56,3,'2016-09-03 22:18:03',NULL),(86,59,3,'1975-05-07 14:50:04',NULL),(89,25,3,'1978-10-12 21:20:52',NULL),(90,49,2,'1979-08-25 06:44:39','1979-08-25 06:44:39'),(90,67,1,'2000-10-03 22:34:00',NULL),(94,90,2,'1972-01-08 22:10:31','1972-01-08 22:10:31'),(97,46,2,'1999-08-18 12:49:42','1999-08-18 12:49:42'),(97,61,1,'1972-02-02 20:20:49',NULL),(98,41,3,'1996-08-16 18:27:08',NULL),(98,65,1,'1994-04-13 21:15:26',NULL),(99,11,2,'2002-03-09 15:17:43','2002-03-09 15:17:43'),(100,29,1,'2001-07-16 16:17:49',NULL);
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (2,'Confirmed'),(3,'Rejected'),(1,'Requested');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,3,84,'https://dropbox/vk/file_0',0,'{\"owner\": \"Justen Weimann\"}','1987-01-17 21:14:16','2020-01-26 18:02:55'),(2,1,13,'https://dropbox/vk/file_98121404',98121404,'{\"owner\": \"Clementine O\'Kon\"}','1981-05-08 22:24:56','2020-01-26 18:02:55'),(3,2,10,'https://dropbox/vk/file_41154202',41154202,'{\"owner\": \"Abigayle Shanahan\"}','1986-06-14 15:51:13','2020-01-26 18:02:55'),(4,3,11,'https://dropbox/vk/file_133149',133149,'{\"owner\": \"Gerry Considine\"}','2015-09-26 08:07:01','2020-01-26 18:02:55'),(5,2,25,'https://dropbox/vk/file_940958877',940958877,'{\"owner\": \"Abdiel Cole\"}','1986-09-04 02:19:51','2020-01-26 18:02:55'),(6,1,93,'https://dropbox/vk/file_80629',80629,'{\"owner\": \"Amiya Bogan\"}','1985-07-31 20:15:59','2020-01-26 18:02:55'),(7,3,89,'https://dropbox/vk/file_479179881',479179881,'{\"owner\": \"Foster Brekke\"}','1974-11-28 20:57:49','2020-01-26 18:02:55'),(8,1,66,'https://dropbox/vk/file_55',55,'{\"owner\": \"Muhammad Emard\"}','2014-12-15 03:06:39','2020-01-26 18:02:55'),(9,2,63,'https://dropbox/vk/file_7766820',7766820,'{\"owner\": \"Beryl Hickle\"}','1980-11-22 23:11:58','2020-01-26 18:02:55'),(10,2,17,'https://dropbox/vk/file_5564091',5564091,'{\"owner\": \"Suzanne Hudson\"}','1987-12-23 06:00:34','2020-01-26 18:02:55'),(11,1,95,'https://dropbox/vk/file_21114',21114,'{\"owner\": \"Landen Bednar\"}','2014-09-13 16:07:33','2020-01-26 18:02:55'),(12,1,22,'https://dropbox/vk/file_608182537',608182537,'{\"owner\": \"Palma Jacobson\"}','2005-06-23 05:09:29','2020-01-26 18:02:55'),(13,2,24,'https://dropbox/vk/file_3135180',3135180,'{\"owner\": \"Carson Labadie\"}','2006-06-05 06:28:36','2020-01-26 18:02:55'),(14,2,55,'https://dropbox/vk/file_1213',1213,'{\"owner\": \"Stone Cremin\"}','1975-01-05 09:41:48','2020-01-26 18:02:55'),(15,2,3,'https://dropbox/vk/file_0',0,'{\"owner\": \"Alia Gaylord\"}','2003-05-12 21:45:55','2020-01-26 18:02:55'),(16,3,50,'https://dropbox/vk/file_7405830',7405830,'{\"owner\": \"Durward Paucek\"}','1983-07-24 15:12:42','2020-01-26 18:02:55'),(17,3,38,'https://dropbox/vk/file_849985',849985,'{\"owner\": \"Hallie Bosco\"}','1998-12-13 23:52:26','2020-01-26 18:02:55'),(18,1,42,'https://dropbox/vk/file_4157',4157,'{\"owner\": \"Destiney Ledner\"}','2010-08-06 21:28:29','2020-01-26 18:02:55'),(19,1,95,'https://dropbox/vk/file_0',0,'{\"owner\": \"Landen Bednar\"}','1977-07-09 18:44:34','2020-01-26 18:02:55'),(20,3,46,'https://dropbox/vk/file_9054111',9054111,'{\"owner\": \"Hester Cartwright\"}','2013-07-12 11:56:09','2020-01-26 18:02:55'),(21,3,46,'https://dropbox/vk/file_7',7,'{\"owner\": \"Hester Cartwright\"}','1974-10-12 20:07:52','2020-01-26 18:02:55'),(22,3,93,'https://dropbox/vk/file_0',0,'{\"owner\": \"Amiya Bogan\"}','2004-06-04 18:52:48','2020-01-26 18:02:55'),(23,2,26,'https://dropbox/vk/file_91677779',91677779,'{\"owner\": \"Josue Hegmann\"}','1991-01-26 21:26:06','2020-01-26 18:02:55'),(24,3,49,'https://dropbox/vk/file_6223',6223,'{\"owner\": \"Kellie Keebler\"}','2017-03-24 01:28:39','2020-01-26 18:02:55'),(25,2,68,'https://dropbox/vk/file_5165',5165,'{\"owner\": \"Raheem Satterfield\"}','1995-01-13 00:05:47','2020-01-26 18:02:55'),(26,3,91,'https://dropbox/vk/file_105011896',105011896,'{\"owner\": \"Camylle Monahan\"}','2017-04-30 01:42:19','2020-01-26 18:02:55'),(27,3,49,'https://dropbox/vk/file_61090',61090,'{\"owner\": \"Kellie Keebler\"}','1995-12-30 14:31:34','2020-01-26 18:02:55'),(28,1,74,'https://dropbox/vk/file_9',9,'{\"owner\": \"Alexandria Jenkins\"}','2014-01-11 14:18:54','2020-01-26 18:02:55'),(29,3,23,'https://dropbox/vk/file_1290544',1290544,'{\"owner\": \"Krista Christiansen\"}','1987-05-06 01:33:38','2020-01-26 18:02:55'),(30,2,91,'https://dropbox/vk/file_156017',156017,'{\"owner\": \"Camylle Monahan\"}','1974-09-11 02:27:46','2020-01-26 18:02:55'),(31,2,84,'https://dropbox/vk/file_545718848',545718848,'{\"owner\": \"Justen Weimann\"}','1979-07-13 15:00:24','2020-01-26 18:02:55'),(32,2,48,'https://dropbox/vk/file_28',28,'{\"owner\": \"Garnett Bartoletti\"}','1985-12-11 15:44:48','2020-01-26 18:02:55'),(33,1,89,'https://dropbox/vk/file_7239405',7239405,'{\"owner\": \"Foster Brekke\"}','2006-01-27 15:16:14','2020-01-26 18:02:55'),(34,2,100,'https://dropbox/vk/file_22',22,'{\"owner\": \"Cade Dare\"}','1975-07-02 08:36:49','2020-01-26 18:02:55'),(35,2,32,'https://dropbox/vk/file_55965',55965,'{\"owner\": \"Tamara Brown\"}','1999-12-25 02:04:28','2020-01-26 18:02:55'),(36,3,59,'https://dropbox/vk/file_62729',62729,'{\"owner\": \"Tyreek Keebler\"}','2004-02-11 21:49:56','2020-01-26 18:02:55'),(37,2,98,'https://dropbox/vk/file_245896',245896,'{\"owner\": \"Clovis Wolff\"}','1971-02-03 17:26:54','2020-01-26 18:02:55'),(38,2,13,'https://dropbox/vk/file_222590799',222590799,'{\"owner\": \"Clementine O\'Kon\"}','1978-01-18 05:41:17','2020-01-26 18:02:55'),(39,2,72,'https://dropbox/vk/file_456',456,'{\"owner\": \"Major Jacobson\"}','1991-04-07 09:35:48','2020-01-26 18:02:55'),(40,2,21,'https://dropbox/vk/file_8',8,'{\"owner\": \"Ulises Welch\"}','1984-02-20 10:02:36','2020-01-26 18:02:55'),(41,1,89,'https://dropbox/vk/file_685628360',685628360,'{\"owner\": \"Foster Brekke\"}','2002-11-27 19:51:19','2020-01-26 18:02:55'),(42,2,82,'https://dropbox/vk/file_7',7,'{\"owner\": \"Delpha Kreiger\"}','1989-05-08 08:00:41','2020-01-26 18:02:55'),(43,2,41,'https://dropbox/vk/file_582',582,'{\"owner\": \"Neal McDermott\"}','2006-05-24 11:13:27','2020-01-26 18:02:55'),(44,1,58,'https://dropbox/vk/file_4832799',4832799,'{\"owner\": \"Bella Swift\"}','1995-12-21 20:34:23','2020-01-26 18:02:55'),(45,1,65,'https://dropbox/vk/file_385',385,'{\"owner\": \"Samir Bednar\"}','1976-06-06 16:01:24','2020-01-26 18:02:55'),(46,3,52,'https://dropbox/vk/file_8611554',8611554,'{\"owner\": \"German Schinner\"}','1988-01-27 23:04:45','2020-01-26 18:02:55'),(47,3,63,'https://dropbox/vk/file_84864',84864,'{\"owner\": \"Beryl Hickle\"}','1976-04-02 02:33:22','2020-01-26 18:02:55'),(48,3,60,'https://dropbox/vk/file_271',271,'{\"owner\": \"Mckayla Bosco\"}','2015-07-30 18:37:19','2020-01-26 18:02:55'),(49,3,12,'https://dropbox/vk/file_878',878,'{\"owner\": \"Abigayle Grant\"}','1981-08-29 09:47:21','2020-01-26 18:02:55'),(50,1,79,'https://dropbox/vk/file_877272147',877272147,'{\"owner\": \"Loren Adams\"}','2011-04-25 01:40:10','2020-01-26 18:02:55'),(51,3,57,'https://dropbox/vk/file_57',57,'{\"owner\": \"Brock Considine\"}','2003-12-10 20:34:22','2020-01-26 18:02:55'),(52,2,50,'https://dropbox/vk/file_5',5,'{\"owner\": \"Durward Paucek\"}','1985-01-31 08:21:04','2020-01-26 18:02:55'),(53,1,76,'https://dropbox/vk/file_77499',77499,'{\"owner\": \"Deshawn Simonis\"}','2016-03-12 20:08:19','2020-01-26 18:02:55'),(54,1,29,'https://dropbox/vk/file_98',98,'{\"owner\": \"Deondre Kassulke\"}','1980-08-01 13:16:37','2020-01-26 18:02:55'),(55,2,19,'https://dropbox/vk/file_744294261',744294261,'{\"owner\": \"Iliana Monahan\"}','1975-10-23 06:52:00','2020-01-26 18:02:55'),(56,3,8,'https://dropbox/vk/file_61424638',61424638,'{\"owner\": \"Destiney Mosciski\"}','2006-07-07 05:19:32','2020-01-26 18:02:55'),(57,1,83,'https://dropbox/vk/file_7',7,'{\"owner\": \"Rowland Wintheiser\"}','1975-06-06 14:00:47','2020-01-26 18:02:55'),(58,3,90,'https://dropbox/vk/file_5584',5584,'{\"owner\": \"Vickie Johnson\"}','2000-12-20 20:54:21','2020-01-26 18:02:55'),(59,1,98,'https://dropbox/vk/file_286832',286832,'{\"owner\": \"Clovis Wolff\"}','1983-01-03 13:19:55','2020-01-26 18:02:55'),(60,1,22,'https://dropbox/vk/file_178',178,'{\"owner\": \"Palma Jacobson\"}','2008-05-21 15:36:14','2020-01-26 18:02:55'),(61,2,14,'https://dropbox/vk/file_43445',43445,'{\"owner\": \"Keira Hamill\"}','1990-12-05 16:27:09','2020-01-26 18:02:55'),(62,1,2,'https://dropbox/vk/file_5333',5333,'{\"owner\": \"Lafayette Runte\"}','1998-11-30 19:57:46','2020-01-26 18:02:55'),(63,3,69,'https://dropbox/vk/file_7424445',7424445,'{\"owner\": \"Adelia Harvey\"}','1970-06-28 13:21:18','2020-01-26 18:02:55'),(64,1,39,'https://dropbox/vk/file_2',2,'{\"owner\": \"Alison Pouros\"}','1978-05-21 12:01:20','2020-01-26 18:02:55'),(65,2,88,'https://dropbox/vk/file_0',0,'{\"owner\": \"Yesenia Crist\"}','1981-02-08 15:36:59','2020-01-26 18:02:55'),(66,1,24,'https://dropbox/vk/file_565',565,'{\"owner\": \"Carson Labadie\"}','2008-09-10 15:00:29','2020-01-26 18:02:55'),(67,1,52,'https://dropbox/vk/file_1545',1545,'{\"owner\": \"German Schinner\"}','1983-11-09 11:58:56','2020-01-26 18:02:55'),(68,1,88,'https://dropbox/vk/file_98482585',98482585,'{\"owner\": \"Yesenia Crist\"}','1996-12-13 07:07:47','2020-01-26 18:02:55'),(69,1,86,'https://dropbox/vk/file_5031',5031,'{\"owner\": \"Maegan Braun\"}','1985-03-11 03:27:35','2020-01-26 18:02:55'),(70,1,65,'https://dropbox/vk/file_8',8,'{\"owner\": \"Samir Bednar\"}','1984-08-09 21:05:55','2020-01-26 18:02:55'),(71,2,66,'https://dropbox/vk/file_31',31,'{\"owner\": \"Muhammad Emard\"}','1979-01-01 15:26:36','2020-01-26 18:02:55'),(72,3,33,'https://dropbox/vk/file_72365475',72365475,'{\"owner\": \"Thea Balistreri\"}','2013-09-02 05:12:32','2020-01-26 18:02:55'),(73,1,66,'https://dropbox/vk/file_8409',8409,'{\"owner\": \"Muhammad Emard\"}','1979-04-25 10:45:23','2020-01-26 18:02:55'),(74,1,31,'https://dropbox/vk/file_3549',3549,'{\"owner\": \"Zakary Blanda\"}','1983-04-12 01:56:24','2020-01-26 18:02:55'),(75,3,56,'https://dropbox/vk/file_52560972',52560972,'{\"owner\": \"Callie Doyle\"}','1984-04-26 06:08:46','2020-01-26 18:02:55'),(76,3,87,'https://dropbox/vk/file_1',1,'{\"owner\": \"Evangeline Schaden\"}','2010-03-26 06:25:13','2020-01-26 18:02:55'),(77,2,67,'https://dropbox/vk/file_97315812',97315812,'{\"owner\": \"Josefina Jakubowski\"}','1995-10-31 05:26:02','2020-01-26 18:02:55'),(78,1,73,'https://dropbox/vk/file_892699',892699,'{\"owner\": \"Adelia Hintz\"}','1994-11-25 14:18:47','2020-01-26 18:02:55'),(79,1,63,'https://dropbox/vk/file_379',379,'{\"owner\": \"Beryl Hickle\"}','2004-07-01 13:41:24','2020-01-26 18:02:55'),(80,1,95,'https://dropbox/vk/file_0',0,'{\"owner\": \"Landen Bednar\"}','2009-01-22 18:55:47','2020-01-26 18:02:55'),(81,1,85,'https://dropbox/vk/file_33437',33437,'{\"owner\": \"Kale Miller\"}','2003-07-11 00:15:18','2020-01-26 18:02:55'),(82,1,40,'https://dropbox/vk/file_18108',18108,'{\"owner\": \"Elda Schamberger\"}','1998-01-15 03:14:28','2020-01-26 18:02:55'),(83,1,45,'https://dropbox/vk/file_43352032',43352032,'{\"owner\": \"Kim Schumm\"}','2010-04-06 14:05:30','2020-01-26 18:02:55'),(84,3,5,'https://dropbox/vk/file_140178',140178,'{\"owner\": \"Griffin Renner\"}','1996-01-18 15:38:17','2020-01-26 18:02:55'),(85,2,90,'https://dropbox/vk/file_0',0,'{\"owner\": \"Vickie Johnson\"}','1982-01-08 01:55:45','2020-01-26 18:02:55'),(86,2,32,'https://dropbox/vk/file_20349',20349,'{\"owner\": \"Tamara Brown\"}','2010-06-07 17:07:06','2020-01-26 18:02:55'),(87,1,89,'https://dropbox/vk/file_7166',7166,'{\"owner\": \"Foster Brekke\"}','1994-12-02 02:04:57','2020-01-26 18:02:55'),(88,2,52,'https://dropbox/vk/file_1791917',1791917,'{\"owner\": \"German Schinner\"}','1995-04-23 22:14:34','2020-01-26 18:02:55'),(89,3,90,'https://dropbox/vk/file_268265',268265,'{\"owner\": \"Vickie Johnson\"}','1983-05-12 04:32:34','2020-01-26 18:02:55'),(90,2,94,'https://dropbox/vk/file_8',8,'{\"owner\": \"Helmer Rodriguez\"}','1986-05-12 07:23:28','2020-01-26 18:02:55'),(91,2,1,'https://dropbox/vk/file_1390622',1390622,'{\"owner\": \"Emmitt Haag\"}','1988-01-20 21:31:59','2020-01-26 18:02:55'),(92,2,22,'https://dropbox/vk/file_97902',97902,'{\"owner\": \"Palma Jacobson\"}','2014-08-30 21:27:36','2020-01-26 18:02:55'),(93,3,5,'https://dropbox/vk/file_23798959',23798959,'{\"owner\": \"Griffin Renner\"}','2005-03-21 09:05:43','2020-01-26 18:02:55'),(94,3,61,'https://dropbox/vk/file_647',647,'{\"owner\": \"Roderick Kemmer\"}','1996-01-05 18:20:58','2020-01-26 18:02:55'),(95,3,89,'https://dropbox/vk/file_91',91,'{\"owner\": \"Foster Brekke\"}','1978-07-02 05:34:33','2020-01-26 18:02:55'),(96,3,62,'https://dropbox/vk/file_686',686,'{\"owner\": \"Phoebe Fritsch\"}','2002-09-18 09:39:54','2020-01-26 18:02:55'),(97,3,44,'https://dropbox/vk/file_92',92,'{\"owner\": \"Henry Block\"}','1989-10-10 18:52:40','2020-01-26 18:02:55'),(98,2,31,'https://dropbox/vk/file_32076',32076,'{\"owner\": \"Zakary Blanda\"}','1979-10-01 13:03:03','2020-01-26 18:02:55'),(99,2,24,'https://dropbox/vk/file_643',643,'{\"owner\": \"Carson Labadie\"}','1994-12-26 22:30:55','2020-01-26 18:02:55'),(100,2,27,'https://dropbox/vk/file_9',9,'{\"owner\": \"Emmanuel Goldner\"}','1972-05-30 01:13:28','2020-01-26 18:02:55');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (2,'audio'),(3,'photo'),(1,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,22,10,'Magni nihil dolorem consequatur rem veritatis culpa consequatur qui. Rem aliquam hic ut aut ut. Distinctio quasi voluptatem velit at repellendus sunt maxime. Amet et rerum rerum sed aut molestias quia tempora. Veniam quia modi ipsa repellendus.',1,0,'2013-01-15 14:15:05'),(2,85,96,'Exercitationem voluptatum id laudantium dolores est ea perferendis. Recusandae aut culpa dolorem tempore esse dolorum. Quidem aut eos quia at sint ducimus eos ut.',0,1,'2017-06-11 14:44:00'),(3,23,28,'Quia cumque at ipsa provident. Fuga voluptatem omnis aut illum repudiandae. Eos eum nihil placeat. Laboriosam ut temporibus molestiae quos.',1,1,'1977-12-14 17:16:34'),(4,69,59,'Doloribus dolor tempore eligendi natus modi velit dolorum. Ea odit nemo amet sit hic unde est. Est eaque accusantium voluptas qui rem laudantium. Perferendis soluta vel omnis earum eum ipsa.',0,1,'1970-12-17 02:25:28'),(5,90,73,'Laborum ab aut molestiae alias quis velit omnis. Sit eum quo in numquam. Tempora nostrum dolores culpa ab eum ut maxime. Odio voluptatem qui esse rerum est sunt doloribus dolor.',0,0,'2008-09-18 10:51:20'),(6,92,42,'Et est omnis et voluptatibus. Reprehenderit eum provident soluta laborum quia libero.',1,1,'1972-07-29 02:28:18'),(7,32,36,'Nulla dolorum soluta dolorem esse. Vel pariatur ut quo voluptas. Et voluptatem ex autem error ducimus cumque. Ratione est magni quia cumque incidunt. Itaque beatae in et reiciendis quas laudantium.',1,1,'1978-10-29 04:34:27'),(8,83,8,'Id dolorem labore perferendis velit. Et quia dolorem aperiam quisquam impedit dolorem saepe. Modi ducimus inventore dolorum facere sit delectus. Aut ut doloremque expedita consequatur libero vitae sit.',0,0,'1977-05-09 19:10:58'),(9,89,18,'Dolor qui ipsum debitis ut. Dolorum omnis et consequatur amet ratione et sed.',0,0,'2000-04-12 17:30:46'),(10,26,76,'Architecto explicabo sunt blanditiis aut cumque. Aspernatur aspernatur dolores vero omnis eos neque. Vero repudiandae quo et quasi aut.',0,0,'1970-02-12 03:02:18');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `birthdate` date DEFAULT NULL,
  `sex_id` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hometown` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `family_status_id` int(10) unsigned DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'1977-07-18','2','Waelchiburgh',1,'Poland',1,'1999-10-05 09:40:14','2020-01-26 17:35:28'),(2,'2016-06-25','1','Reneebury',2,'Malta',2,'2016-06-25 07:35:32','2020-01-26 17:35:28'),(3,'1982-11-03','1','New Colby',2,'Kazakhstan',3,'1982-11-03 06:13:08','2020-01-26 17:35:28'),(4,'1974-02-05','1','Port Kaneside',1,'Burundi',4,'1995-10-09 13:28:50','2020-01-26 17:35:28'),(5,'1973-04-22','2','Port Angus',2,'Myanmar',5,'1973-04-22 21:36:52','2020-01-26 17:35:28'),(6,'1980-08-04','1','Port Ebbaville',2,'Guadeloupe',6,'1980-08-04 21:09:29','2020-01-26 17:35:28'),(7,'1983-05-04','2','East Lanceberg',1,'Belarus',7,'1983-05-04 08:59:44','2020-01-26 17:35:28'),(8,'1970-10-21','2','Gleichnerville',1,'Qatar',8,'1981-06-25 07:22:25','2020-01-26 17:35:28'),(9,'1997-05-21','2','Port Jaden',1,'Kenya',9,'1997-05-21 09:56:18','2020-01-26 17:35:28'),(10,'1997-08-12','2','Kautzerhaven',1,'Netherlands',10,'2015-04-25 19:20:46','2020-01-26 17:35:28'),(11,'1975-02-22','2','Weissnathaven',2,'Vietnam',11,'1975-02-22 23:50:38','2020-01-26 17:35:28'),(12,'1985-07-11','1','Ricetown',1,'Sudan',12,'1985-07-11 04:45:21','2020-01-26 17:35:28'),(13,'1973-01-05','2','East Chaim',1,'Faroe Islands',13,'2006-01-11 05:23:58','2020-01-26 17:35:28'),(14,'1979-11-05','2','Anitaland',1,'Korea',14,'2008-01-03 10:41:35','2020-01-26 17:35:28'),(15,'1974-09-09','2','Murphyview',1,'Ireland',15,'1974-09-09 19:10:37','2020-01-26 17:35:28'),(16,'1992-01-09','2','Gislasonberg',1,'Guatemala',16,'2015-08-22 14:11:02','2020-01-26 17:35:28'),(17,'1990-09-29','1','Crystelberg',1,'Yemen',17,'1990-09-29 21:15:53','2020-01-26 17:35:28'),(18,'1974-11-09','2','South Arianna',1,'Moldova',18,'1975-10-14 14:12:30','2020-01-26 17:35:28'),(19,'1980-10-28','2','Earnestineton',1,'Cambodia',19,'1980-10-28 02:13:16','2020-01-26 17:35:28'),(20,'1974-06-15','2','Astridstad',1,'South Africa',20,'1999-12-08 22:39:47','2020-01-26 17:35:28'),(21,'1974-08-20','2','Carterview',1,'Montenegro',21,'1974-08-20 06:23:32','2020-01-26 17:35:28'),(22,'1983-12-03','1','Jessycastad',1,'Croatia',22,'1983-12-03 10:48:33','2020-01-26 17:35:28'),(23,'1980-08-27','1','Lake Edgarport',2,'Sudan',23,'2010-04-28 21:41:02','2020-01-26 17:35:28'),(24,'1971-04-11','1','Hahnmouth',1,'Christmas Island',24,'1971-04-11 14:55:07','2020-01-26 17:35:28'),(25,'1974-04-28','1','West Nelda',1,'Svalbard & Jan Mayen Islands',25,'1982-03-09 05:53:30','2020-01-26 17:35:28'),(26,'1989-02-19','2','West Felicityberg',2,'Vietnam',26,'2010-10-11 10:17:33','2020-01-26 17:35:28'),(27,'1974-10-14','2','Hellerside',2,'Equatorial Guinea',27,'1974-10-14 11:14:01','2020-01-26 17:35:28'),(28,'1986-01-31','1','Handchester',2,'American Samoa',28,'2009-09-08 20:22:56','2020-01-26 17:35:28'),(29,'1985-07-24','2','North Newellchester',1,'Philippines',29,'1993-01-03 20:14:09','2020-01-26 17:35:28'),(30,'1989-05-25','1','South Betsy',1,'Korea',30,'1989-05-25 02:55:24','2020-01-26 17:35:28'),(31,'1990-11-18','1','South Kaitlynton',1,'Hungary',31,'2010-08-11 21:15:44','2020-01-26 17:35:28'),(32,'1974-04-29','2','Ortizfurt',1,'Ecuador',32,'1974-04-29 01:16:02','2020-01-26 17:35:28'),(33,'1980-08-29','1','Langport',2,'American Samoa',33,'1980-08-29 05:41:12','2020-01-26 17:35:28'),(34,'1979-06-19','1','Schmidtberg',2,'Madagascar',34,'1979-06-19 10:25:46','2020-01-26 17:35:28'),(35,'1991-08-04','1','Terranceberg',2,'French Polynesia',35,'2004-02-29 10:02:06','2020-01-26 17:35:28'),(36,'1975-08-24','2','Judeside',2,'British Indian Ocean Territory (Chagos Archipelago)',36,'2006-03-14 15:37:38','2020-01-26 17:35:28'),(37,'1992-07-17','2','Maiamouth',1,'Liberia',37,'2003-05-18 03:03:26','2020-01-26 17:35:28'),(38,'1978-12-25','1','North Monserrat',1,'Martinique',38,'1978-12-25 03:12:43','2020-01-26 17:35:28'),(39,'1972-04-25','2','Boyleville',1,'Lebanon',39,'1972-04-25 18:27:07','2020-01-26 17:35:28'),(40,'1984-11-10','1','Schuppemouth',2,'Afghanistan',40,'1984-11-10 10:28:54','2020-01-26 17:35:28'),(41,'2004-05-02','1','Sauerborough',2,'Tunisia',41,'2019-10-29 12:13:47','2020-01-26 17:35:28'),(42,'2006-01-15','2','Haileyshire',2,'Bahrain',42,'2006-01-15 19:40:08','2020-01-26 17:35:28'),(43,'1988-11-21','1','Lednerville',2,'Macao',43,'2001-12-15 23:37:43','2020-01-26 17:35:28'),(44,'1978-09-05','2','Windlerville',1,'Guernsey',44,'1978-09-05 17:37:25','2020-01-26 17:35:28'),(45,'1987-12-02','1','Shermanborough',1,'Cambodia',45,'1987-12-02 03:14:48','2020-01-26 17:35:28'),(46,'1981-01-14','2','Lake Stuart',1,'Cape Verde',46,'1981-01-14 06:08:49','2020-01-26 17:35:28'),(47,'1992-10-25','2','South Lowell',2,'Pakistan',47,'1992-10-25 14:03:22','2020-01-26 17:35:28'),(48,'1970-07-20','1','Moseshaven',2,'Belgium',48,'1988-11-14 01:56:13','2020-01-26 17:35:28'),(49,'1974-02-19','2','North Vincenzochester',1,'Mali',49,'1974-02-19 07:02:25','2020-01-26 17:35:28'),(50,'1982-11-01','1','Bennyfort',2,'Belarus',50,'1982-11-01 23:03:33','2020-01-26 17:35:28'),(51,'1997-08-01','1','Turcotteberg',1,'Colombia',51,'1999-10-12 14:13:23','2020-01-26 17:35:28'),(52,'1985-11-14','1','Alekshire',1,'Cambodia',52,'1985-11-14 09:44:23','2020-01-26 17:35:28'),(53,'2005-10-31','1','Boylestad',2,'United Arab Emirates',53,'2010-12-21 02:52:44','2020-01-26 17:35:28'),(54,'1990-06-10','2','North Mario',1,'Russian Federation',54,'2012-06-07 17:21:52','2020-01-26 17:35:28'),(55,'1995-07-22','2','South Candacebury',2,'Uzbekistan',55,'2001-09-19 00:14:35','2020-01-26 17:35:28'),(56,'1996-07-27','2','East Greysonhaven',1,'Svalbard & Jan Mayen Islands',56,'1996-07-27 15:34:34','2020-01-26 17:35:28'),(57,'2008-10-07','1','Kuhnton',1,'Angola',57,'2016-11-25 07:22:02','2020-01-26 17:35:28'),(58,'1970-06-28','2','Abbiefort',1,'China',58,'2016-12-24 21:17:39','2020-01-26 17:35:28'),(59,'1978-10-19','2','Jaronport',1,'Vietnam',59,'1989-03-17 20:18:41','2020-01-26 17:35:28'),(60,'1971-02-15','2','Abbieview',1,'Sao Tome and Principe',60,'2007-02-25 08:12:49','2020-01-26 17:35:28'),(61,'1991-10-09','1','Marcport',1,'Rwanda',61,'1991-10-09 08:39:31','2020-01-26 17:35:28'),(62,'1987-04-13','1','South Sidton',2,'Seychelles',62,'1987-04-13 14:14:26','2020-01-26 17:35:28'),(63,'1971-07-04','1','Elisebury',2,'Italy',63,'2012-09-17 01:37:37','2020-01-26 17:35:28'),(64,'1988-08-11','1','Mohrborough',2,'Cote d\'Ivoire',64,'1988-08-11 11:20:13','2020-01-26 17:35:28'),(65,'1976-09-07','1','Elyseport',2,'Puerto Rico',65,'1976-09-07 07:37:03','2020-01-26 17:35:28'),(66,'1989-01-24','1','Francestown',2,'Sudan',66,'2011-07-21 20:55:32','2020-01-26 17:35:28'),(67,'1986-05-27','1','Vivianville',1,'Jordan',67,'2014-06-24 22:25:58','2020-01-26 17:35:28'),(68,'1976-12-15','1','Hoegerville',1,'Martinique',68,'1994-01-26 14:06:58','2020-01-26 17:35:28'),(69,'1974-07-08','1','East Blanca',2,'Brazil',69,'1974-07-08 20:18:29','2020-01-26 17:35:28'),(70,'1983-11-22','2','Brownport',2,'Austria',70,'2011-07-02 21:48:53','2020-01-26 17:35:28'),(71,'1989-04-26','1','Kilbackborough',2,'Albania',71,'1989-04-26 08:24:32','2020-01-26 17:35:28'),(72,'1991-09-16','1','Jessburgh',2,'Gabon',72,'1991-09-16 15:05:57','2020-01-26 17:35:28'),(73,'1980-09-18','1','East Bethany',1,'Paraguay',73,'2009-10-31 17:17:18','2020-01-26 17:35:28'),(74,'1978-10-26','2','Kuhlmanstad',1,'South Georgia and the South Sandwich Islands',74,'1986-03-15 04:36:49','2020-01-26 17:35:28'),(75,'1978-02-24','1','East Aidan',2,'Pakistan',75,'1981-11-23 17:41:46','2020-01-26 17:35:28'),(76,'1976-11-07','1','West Brent',2,'Namibia',76,'2018-03-02 15:52:01','2020-01-26 17:35:28'),(77,'1986-12-24','1','Lake Assunta',1,'Mozambique',77,'1986-12-24 16:37:13','2020-01-26 17:35:28'),(78,'1971-05-23','1','West Santafurt',2,'Aruba',78,'1971-05-23 02:55:47','2020-01-26 17:35:28'),(79,'1992-08-27','2','Andersonmouth',1,'Hungary',79,'1992-08-27 21:28:45','2020-01-26 17:35:28'),(80,'1977-12-28','1','Bashirianshire',1,'Mozambique',80,'2011-11-22 10:31:03','2020-01-26 17:35:28'),(81,'1978-10-08','1','New Wilhelm',1,'Rwanda',81,'1978-10-08 19:12:50','2020-01-26 17:35:28'),(82,'1994-03-03','1','Schinnerview',1,'Sierra Leone',82,'1994-03-03 03:55:23','2020-01-26 17:35:28'),(83,'1984-08-31','1','South Lonzoside',2,'Slovakia (Slovak Republic)',83,'1984-08-31 20:08:50','2020-01-26 17:35:28'),(84,'1981-07-30','2','Kylieshire',1,'Grenada',84,'2002-06-15 05:49:02','2020-01-26 17:35:28'),(85,'1985-12-10','2','New Benedict',2,'Ethiopia',85,'1992-06-29 09:27:12','2020-01-26 17:35:28'),(86,'1973-12-17','2','Adellemouth',2,'Malaysia',86,'1996-08-26 03:15:24','2020-01-26 17:35:28'),(87,'1970-09-27','1','New Alishaview',2,'Cocos (Keeling) Islands',87,'1972-10-11 04:11:12','2020-01-26 17:35:28'),(88,'2000-11-17','2','Lake Allison',1,'El Salvador',88,'2016-12-01 02:59:35','2020-01-26 17:35:28'),(89,'1973-07-14','1','Louveniabury',1,'Panama',89,'1985-12-05 05:56:19','2020-01-26 17:35:28'),(90,'1983-09-24','1','Maryjanefort',1,'Belgium',90,'2003-09-21 23:49:58','2020-01-26 17:35:28'),(91,'2009-07-08','2','Lawrencechester',2,'Thailand',91,'2017-04-30 16:24:14','2020-01-26 17:35:28'),(92,'1985-11-03','1','East Amani',2,'Nepal',92,'1985-11-03 00:48:54','2020-01-26 17:35:28'),(93,'1978-11-15','2','Port Yasmeenview',1,'Bangladesh',93,'1978-11-15 17:53:48','2020-01-26 17:35:28'),(94,'1979-01-28','2','East Adelberthaven',1,'Rwanda',94,'2001-07-23 14:10:38','2020-01-26 17:35:28'),(95,'1995-07-13','2','Beerfort',1,'Sri Lanka',95,'1995-07-13 13:51:21','2020-01-26 17:35:28'),(96,'1971-02-20','2','Swaniawskiborough',2,'Panama',96,'1971-02-20 10:50:31','2020-01-26 17:35:28'),(97,'1972-08-17','2','South Erynstad',2,'Slovakia (Slovak Republic)',97,'1972-08-17 15:24:24','2020-01-26 17:35:28'),(98,'1993-07-07','2','Port Lesly',1,'British Virgin Islands',98,'1995-12-15 10:12:45','2020-01-26 17:35:28'),(99,'1975-12-16','2','New Carlosbury',1,'Kyrgyz Republic',99,'1975-12-16 23:57:09','2020-01-26 17:35:28'),(100,'1980-07-04','2','Parisianton',1,'Gabon',100,'1980-07-04 21:01:05','2020-01-26 17:35:28');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sex`
--

DROP TABLE IF EXISTS `sex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sex` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sex`
--

LOCK TABLES `sex` WRITE;
/*!40000 ALTER TABLE `sex` DISABLE KEYS */;
INSERT INTO `sex` VALUES (1,'male'),(2,'female');
/*!40000 ALTER TABLE `sex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emmitt','Haag','russell10@example.net','06736340777','b03f00d07b6d02d','2018-06-01 18:42:31','2018-06-01 18:42:31'),(2,'Lafayette','Runte','cpredovic@example.com','+23(1)171192930','610abd71f7d313a','1986-12-30 03:48:07','1992-08-20 10:22:44'),(3,'Alia','Gaylord','claudie.west@example.net','1-981-218-9112','550285ab109ed8d','1998-05-25 00:56:14','2019-11-01 19:58:23'),(4,'Abdul','Blanda','afton.dickinson@example.com','1-446-386-4075x','1b061b9835804ec','2016-04-04 10:31:53','2016-05-17 01:25:12'),(5,'Griffin','Renner','judd.nitzsche@example.com','808.657.7681x28','5075a138b706dad','2012-11-15 01:09:05','2012-11-15 01:09:05'),(6,'Margot','Thiel','hartmann.destiney@example.net','899.976.9100','9978df431437490','1996-01-18 19:52:05','2010-12-03 13:15:34'),(7,'Ariane','Volkman','olen35@example.org','01778127346','693140717b30d70','1988-01-07 10:31:11','1988-12-15 23:38:41'),(8,'Destiney','Mosciski','kemmer.virginia@example.org','(969)574-4665x9','60f1f9a92d75d5e','1992-12-07 23:19:45','1992-12-07 23:19:45'),(9,'Maximillian','Lesch','lorenzo90@example.com','733-280-2634','1f5c3497d8566bd','1986-10-24 11:42:00','2003-10-16 23:29:50'),(10,'Abigayle','Shanahan','maggio.jewell@example.com','+30(0)026754239','73adf55aa7bfdb0','1976-12-24 11:45:53','1976-12-24 11:45:53'),(11,'Gerry','Considine','constantin.goodwin@example.com','1-458-008-6963x','be0d985ee599333','2003-06-17 20:26:16','2003-06-17 20:26:16'),(12,'Abigayle','Grant','shaina39@example.com','+23(3)187330571','9534544f990047e','1993-12-19 12:55:54','1994-09-07 00:39:45'),(13,'Clementine','O\'Kon','cordie57@example.com','351.067.1520x64','9245def980a72ce','1987-12-04 19:10:37','1991-01-01 02:47:15'),(14,'Keira','Hamill','alessandra.koelpin@example.com','263.276.4200','8717087433a2d51','1975-11-02 20:59:49','2015-03-20 00:40:19'),(15,'Cassandra','Rohan','price.aaron@example.org','225-777-5954x77','8b0134cc7a14b8a','2005-07-19 14:38:00','2005-07-19 14:38:00'),(16,'Neha','Ondricka','nitzsche.jeffery@example.org','404.952.9431','2293afc51205bbb','1998-09-28 00:28:17','2013-11-24 07:44:15'),(17,'Suzanne','Hudson','hester39@example.net','736.789.8619x90','324b8d0d6b43f2b','2018-08-22 10:51:46','2018-08-22 10:51:46'),(18,'Jerome','Feest','pdaugherty@example.net','1-942-879-6742','0904160bafdb801','1997-03-12 20:47:31','1997-03-12 20:47:31'),(19,'Iliana','Monahan','pmetz@example.com','761-794-4804x68','55f0b21fe8ecc58','1981-11-12 12:20:33','2011-04-26 09:17:20'),(20,'Faustino','Stiedemann','bauch.roberto@example.net','1-732-874-1052','b1558370b09021e','1994-08-15 23:48:28','1994-08-15 23:48:28'),(21,'Ulises','Welch','claudine40@example.org','1-407-457-4001x','abc946459e954e7','1995-03-06 03:04:29','2010-01-23 05:42:23'),(22,'Palma','Jacobson','lola.schumm@example.org','241.439.8063','1a0ea528ab591f7','2012-02-01 03:57:25','2012-02-01 03:57:25'),(23,'Krista','Christiansen','elza87@example.com','1-288-061-1771','5e0969a4bae17c2','1995-03-04 01:28:49','2019-03-22 02:08:30'),(24,'Carson','Labadie','wyatt41@example.com','1-999-423-1412','5e40afaef73b20d','1979-08-07 04:01:38','2014-08-13 09:39:36'),(25,'Abdiel','Cole','reid.abbott@example.com','+91(0)794347130','648431a2619949c','2002-02-05 19:57:02','2002-02-05 19:57:02'),(26,'Josue','Hegmann','jaskolski.antonio@example.com','261-600-1378x60','96c4267f6625306','1993-08-16 05:48:45','1994-10-08 08:01:29'),(27,'Emmanuel','Goldner','priscilla.stoltenberg@example.org','1-649-356-2610','d44cf4be8be6f2d','2013-04-20 19:20:04','2015-11-14 19:11:34'),(28,'Luther','Leuschke','qzulauf@example.org','386-972-8084x97','aa158a87dfd1da5','1981-02-17 19:23:20','1993-08-29 19:49:26'),(29,'Deondre','Kassulke','lillian86@example.com','+28(8)763635791','175aacd8813f831','1975-09-10 08:28:09','1984-01-31 22:52:50'),(30,'Jammie','Koelpin','luettgen.guillermo@example.com','+04(6)662002894','ea6d68e02689f48','1990-05-27 08:19:43','1999-01-13 03:21:00'),(31,'Zakary','Blanda','robert.hills@example.net','1-354-801-8882x','e28dde97c6617de','1974-09-05 18:53:07','1974-09-05 18:53:07'),(32,'Tamara','Brown','shirley51@example.com','844-138-3917x59','96a0810f05d9f9b','1986-11-05 20:21:43','1986-11-05 20:21:43'),(33,'Thea','Balistreri','fritsch.abel@example.com','453-607-1602x10','75d3293f7f3f582','1991-07-18 03:41:16','1991-08-03 20:15:45'),(34,'Lurline','Heller','brett.satterfield@example.org','+31(0)817273970','94ab38d106c343d','2010-05-19 10:09:43','2010-05-19 10:09:43'),(35,'Delia','McKenzie','wbreitenberg@example.org','417.805.0771','54111e2e71855d0','1997-06-28 07:05:05','2005-07-15 16:21:30'),(36,'Malvina','Will','preston68@example.org','(996)747-4382x0','98ec266b18f02a3','2008-10-29 04:36:39','2008-10-29 04:36:39'),(37,'Nils','Jerde','kulas.justice@example.com','886.794.5691','5b3d0c8fbef9854','2019-08-18 10:49:19','2019-08-18 10:49:19'),(38,'Hallie','Bosco','ymante@example.com','1-007-626-9586','3ce6aecce5c2bbd','1998-03-11 09:51:37','1998-03-11 09:51:37'),(39,'Alison','Pouros','harrison.rodriguez@example.org','(167)896-8828x5','6ee9558c2bedc97','2013-09-19 18:16:27','2013-09-19 18:16:27'),(40,'Elda','Schamberger','destini.runte@example.org','704-125-7970x55','bfeef7f96a1e0b8','1996-07-17 00:33:32','2001-09-30 17:38:41'),(41,'Neal','McDermott','upton.liliane@example.org','881.336.1487','693807c200bbb51','2001-12-10 07:46:50','2012-01-10 20:03:45'),(42,'Destiney','Ledner','orrin.keeling@example.net','1-394-795-8654','c4d0a5496a9f9b3','1971-06-21 06:55:43','2017-01-08 02:38:51'),(43,'Madonna','Lang','mary.goldner@example.net','373.141.8637','1ded0384e84d336','1971-09-22 02:56:50','1991-11-07 11:01:38'),(44,'Henry','Block','ustracke@example.org','617.431.8595x09','4adfe3173f8f7c3','1980-03-26 10:24:43','1980-03-26 10:24:43'),(45,'Kim','Schumm','wklocko@example.com','404-077-2859x41','598865bfe5bd944','1974-06-25 05:48:57','2010-07-28 17:05:45'),(46,'Hester','Cartwright','zoie.bosco@example.org','1-172-690-5012','c123af393820f88','2012-07-01 08:08:02','2012-07-01 08:08:02'),(47,'Savanah','Bailey','tjenkins@example.org','562.344.9594x07','b9c53ffdb6ae504','1972-11-17 20:08:05','1995-04-08 01:23:38'),(48,'Garnett','Bartoletti','blanda.rashawn@example.com','1-582-738-7060x','b6f6313abf8fbdc','1982-02-01 14:57:42','1982-02-01 14:57:42'),(49,'Kellie','Keebler','augustus.armstrong@example.com','879.567.8870','abcd896daf01741','1992-10-01 00:54:20','2013-08-14 12:01:43'),(50,'Durward','Paucek','imani.lehner@example.org','(484)476-9873x6','44770232d914eb0','1970-05-24 05:14:41','1972-03-19 00:55:40'),(51,'Mustafa','Considine','jordi88@example.net','725.129.6499x33','d628713c33e482d','2016-08-31 23:30:55','2016-08-31 23:30:55'),(52,'German','Schinner','leland.bradtke@example.org','02939980670','60e02a80b40eae2','1991-11-15 13:11:21','1991-11-15 13:11:21'),(53,'Nicole','Rolfson','jovany48@example.com','(981)009-6637x0','9362a69c96f67eb','1976-08-09 00:22:07','2006-10-30 19:10:34'),(54,'Dandre','Schoen','flittel@example.com','075.789.8435','5ce3087cc717e66','2016-04-25 20:24:20','2016-04-25 20:24:20'),(55,'Stone','Cremin','ethel.goodwin@example.com','1-770-604-6556x','ba1cd584cc351af','1996-03-24 20:32:31','1996-03-24 20:32:31'),(56,'Callie','Doyle','olangworth@example.org','06466231644','571e0435478d3b1','1982-11-12 09:33:23','2010-08-04 17:23:30'),(57,'Brock','Considine','eloisa.barrows@example.net','452-662-3132','2ee5895bae05e59','1992-08-09 13:57:38','1992-08-09 13:57:38'),(58,'Bella','Swift','tod80@example.org','(172)251-1759','4e8353351ea39f8','1994-10-20 04:17:49','1994-11-10 20:11:42'),(59,'Tyreek','Keebler','garth49@example.com','1-061-054-0952x','8ffada90d7f9096','1972-10-24 08:47:52','1977-02-26 06:16:30'),(60,'Mckayla','Bosco','dell36@example.net','1-683-312-9778x','1e56d346939c6e6','1987-09-18 14:03:49','2000-02-17 01:20:20'),(61,'Roderick','Kemmer','angeline.donnelly@example.org','+48(5)156169682','904b135d0815781','1998-02-28 19:46:59','2018-06-29 08:59:02'),(62,'Phoebe','Fritsch','vtillman@example.org','939.261.8324x77','6befa31783d7508','1988-12-13 11:05:28','1988-12-13 11:05:28'),(63,'Beryl','Hickle','prohaska.wilton@example.org','(595)627-7911x9','ee35670338f6098','1973-03-20 07:01:36','2013-08-09 22:37:31'),(64,'Nettie','O\'Kon','mspinka@example.net','+75(5)247596690','cbff39003d93744','1973-03-05 20:35:20','1984-08-29 13:55:31'),(65,'Samir','Bednar','walsh.oma@example.org','(076)300-6914x4','7a0819eb99e7c96','2000-04-04 13:10:28','2018-11-11 14:25:04'),(66,'Muhammad','Emard','nellie.krajcik@example.com','1-954-704-7448','4a843d31c3f5789','1975-03-22 00:04:27','1975-03-22 00:04:27'),(67,'Josefina','Jakubowski','lang.alessandra@example.org','479-120-5413','fd5e413f55bb924','1983-06-19 22:55:18','1997-06-08 22:56:05'),(68,'Raheem','Satterfield','modesto.bernhard@example.net','1-460-028-5733','65be6e9e8a3739a','2008-08-17 23:26:16','2008-08-17 23:26:16'),(69,'Adelia','Harvey','elizabeth.bayer@example.com','023.020.2792x70','d214a639565e670','2011-04-18 23:52:02','2011-04-18 23:52:02'),(70,'Reggie','Spencer','bruen.domingo@example.com','566.909.9496','9970d3ce16c6405','2008-08-20 12:52:06','2008-08-20 12:52:06'),(71,'Jude','Wiza','priscilla.cronin@example.org','1-631-829-7207x','675a1328101c82a','2020-01-10 10:32:50','2020-01-10 10:32:50'),(72,'Major','Jacobson','uschinner@example.com','677-775-8253','35659eb34d61d17','2008-04-02 06:42:24','2008-04-02 06:42:24'),(73,'Adelia','Hintz','athena76@example.net','1-213-303-2355x','14bfb1f641ac6dc','2008-08-09 10:04:14','2014-11-10 15:26:29'),(74,'Alexandria','Jenkins','wiza.blair@example.org','852.857.4421x82','714ccea637ece09','1983-01-12 12:44:02','1983-01-12 12:44:02'),(75,'Alice','Hickle','meichmann@example.com','1-292-190-2626x','eaae650c267b53e','2007-08-28 22:00:23','2007-08-28 22:00:23'),(76,'Deshawn','Simonis','moore.wilber@example.org','1-207-280-5005x','78a60e5af01ed5b','1975-09-08 17:44:16','1978-07-19 02:24:55'),(77,'Florine','Mitchell','kulas.ara@example.org','724-753-4498','5675ca8474b99ad','1978-02-24 16:13:48','1984-10-08 18:32:27'),(78,'Geovanni','Krajcik','albert76@example.com','721.839.9395x36','f9c41252734c00e','2003-02-10 01:38:39','2016-01-19 18:21:13'),(79,'Loren','Adams','emerson.white@example.net','363.171.4186x00','1ec1c8b4871e851','2011-03-26 05:57:13','2011-03-26 05:57:13'),(80,'Maurine','Herzog','pat.bauch@example.com','1-157-759-4166x','a38242acd218f18','2013-01-07 23:16:12','2013-01-07 23:16:12'),(81,'Queen','Wisoky','andre.lindgren@example.org','1-097-945-5695x','2a029be700f32b1','2014-05-22 09:53:02','2014-05-22 09:53:02'),(82,'Delpha','Kreiger','annabelle.lowe@example.org','05972470543','ee4f84c0a2beae7','1983-07-14 04:13:49','2004-05-02 11:35:01'),(83,'Rowland','Wintheiser','sally.macejkovic@example.com','(452)936-8512x3','2f80a894b01a0bd','1986-11-24 16:17:34','1986-11-24 16:17:34'),(84,'Justen','Weimann','fiona10@example.net','577.885.7674x83','e6fda83971fff4e','1971-07-06 04:23:51','1973-04-14 17:44:58'),(85,'Kale','Miller','lind.alfreda@example.net','1-047-433-1347','f271f31d0c6be00','1987-10-16 12:51:23','1987-10-16 12:51:23'),(86,'Maegan','Braun','magdalena67@example.net','(184)086-4130','747167609ad0169','1972-04-21 00:50:42','2003-05-27 22:37:20'),(87,'Evangeline','Schaden','kade.ziemann@example.com','640.964.8345x22','f17ce07b7304497','1998-12-19 11:31:03','2010-11-09 02:21:28'),(88,'Yesenia','Crist','ursula99@example.com','(609)136-0389','3505057e736bf45','1998-03-21 08:56:30','1998-03-21 08:56:30'),(89,'Foster','Brekke','edyth.schaefer@example.net','(996)791-2014x6','a231de67935ba78','1974-11-08 17:52:14','1989-03-24 12:49:23'),(90,'Vickie','Johnson','mary.o\'conner@example.org','1-753-875-4211x','d54c46b93b40707','1989-04-04 23:19:04','2018-03-23 18:22:55'),(91,'Camylle','Monahan','lesch.arely@example.org','1-161-195-1916','ef2ca926d1bb8d4','1984-05-28 12:20:42','2013-01-05 19:40:46'),(92,'Burley','Barrows','keyshawn36@example.net','(195)228-3861','6e800db43ad8707','1974-09-18 09:00:55','2015-07-12 22:41:31'),(93,'Amiya','Bogan','elroy33@example.org','+13(4)763065278','9e948911dd50d14','1990-11-24 00:04:11','1990-12-06 02:15:08'),(94,'Helmer','Rodriguez','brittany.mueller@example.org','581-961-1465','7fba8f997b2bee2','2009-07-10 21:08:28','2009-07-10 21:08:28'),(95,'Landen','Bednar','retha55@example.org','1-006-856-6798x','43cb4d25e59ae31','1978-05-23 04:45:38','2004-04-26 17:03:21'),(96,'Ken','Bernier','briana62@example.net','(360)749-2990x5','89cb199cdf78780','1997-08-05 14:06:06','2003-04-16 23:55:50'),(97,'Hassie','Jacobs','lenny30@example.org','(109)209-7582x2','d79a65d81617587','1987-03-16 22:28:41','1999-11-15 08:32:52'),(98,'Clovis','Wolff','eugenia.dickinson@example.com','471.749.1789x28','ffdd3105b474ef5','1981-08-31 00:38:14','1992-11-24 12:47:42'),(99,'Elza','Bashirian','vcollier@example.net','1-123-214-1081x','678dc71f544b0b3','1987-01-24 22:12:49','1987-01-24 22:12:49'),(100,'Cade','Dare','rmiller@example.org','+23(3)441752552','309373acdf59c78','2004-05-18 10:44:10','2004-05-18 10:44:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-26 18:53:56
