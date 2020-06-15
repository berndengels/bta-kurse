-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 213.109.160.69    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kurs`
--

DROP TABLE IF EXISTS `kurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kurs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kurs_id` int(11) NOT NULL,
  `kurs_titel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_kurzname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_massnahmenummer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs_preis` decimal(10,2) NOT NULL,
  `kurs_sortierung` int(11) NOT NULL,
  `kurs_aktiv` int(11) NOT NULL,
  `kursdauer` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurs`
--

LOCK TABLES `kurs` WRITE;
/*!40000 ALTER TABLE `kurs` DISABLE KEYS */;
INSERT INTO `kurs` VALUES (1,1,'Finanzmanagement / Controlling','FM / Controlling','962/226/18',1198.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 12:06:33'),(2,3,'Finanzmanagement / IFRS','IFRS','962/226/18',1240.20,0,1,'1','2018-11-23 23:00:00','2018-11-28 06:54:42'),(3,7,'Anwendungsberater Lexware/ Datev I','Lexware/ Datev I','962/226/18',1999.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 13:47:14'),(4,8,'Anwendungsberater Lexware/ Datev II','Lexware/ Datev II','962/226/18',1999.80,0,1,'1',NULL,'2018-11-24 13:47:56'),(5,9,'Anwendungsberater Datev für Lohn- und Gehaltsabrechnung','Lohn- und Gehaltsabrechnung','962/226/18',1999.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 13:48:55'),(6,11,'ERP-Systemb. A.M. SAP FI','SAP FI','962/226/18',1999.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 13:49:39'),(7,12,'ERP-Systemb. A.M. SAP CO','SAP CO','962/226/18',1999.80,0,1,'1',NULL,'2018-11-24 13:50:24'),(8,13,'EDV FK Rechnungswesen Office','MS Office','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:01:21'),(9,14,'EDV FK Logistik Office','Logistik Office','962/226/18',3549.60,0,1,'1',NULL,'2018-11-24 14:02:01'),(10,15,'Personal- Organisation Recruiting und Einsatz','Recruiting und Einsatz','962/226/18',1272.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:02:53'),(11,16,'Personal- Arbeitsrecht und Grundlagen','Arbeitsrecht und Grundlagen','962/226/18',1272.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:04:13'),(12,17,'Personal- Prozesse','Personal- Prozesse','962/226/18',1272.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:05:18'),(13,18,'Personal- Entwicklung & Führung','Entwicklung & Führung','962/226/18',1272.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:06:03'),(14,20,'Personalcoach I zerifiziert nach QRC','Coach','962/226/18',1276.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:14:43'),(15,21,'Personalcoach II zertifiziert nach QRC','Jobcoach','962/226/18',1276.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:15:21'),(16,22,'Kommunikationsorganisation/ Unternehmensführung','Unternehmensführung','962/226/18',1351.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:16:09'),(17,23,'Managementtrainer/Train the Trainer','Train the Trainer','962/226/18',1276.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:17:02'),(18,24,'Ausbildungsleitung','AEVO','962/226/18',1218.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:17:33'),(19,25,'ERP-Systemb. A.M. SAP HCM','SAP HR','962/226/18',1999.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:18:25'),(20,28,'Webprogrammierer m. Typo 3','Web 2.0','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:19:01'),(21,29,'Community Manager Social Media/ E-Commerce','Social Media','962/226/18',1351.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:19:49'),(22,30,'Webprogrammierer für Online Journalismus-PR2.0','PR2.0','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:20:27'),(23,31,'Softwareentwickler Mobile','Mobile','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:21:06'),(24,32,'Entwickler digitale Medien','Mediengestaltung','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:21:50'),(25,35,'DV Projektleitung GPM Basis ink. MS Project und Scrum','PM Basis','962/226/18',3999.60,0,1,'2','2018-11-23 23:00:00','2018-11-24 14:22:55'),(26,36,'DV Projektleitung GPM D Level inkl. Srum, agile Methoden und MS Project','PM Level D','962/226/18',5999.40,0,1,'3',NULL,'2018-11-24 14:23:43'),(27,37,'Casemanagement/ Sozialberatung','Casemanagement','962/226/18',4564.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:24:30'),(28,39,'Systemischer Coach','Systemischer Coach','962/226/18',1276.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:25:05'),(29,40,'Diversity / interkulturelles Management','Diversity','962/226/18',1440.00,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:25:37'),(30,41,'Content Marketing','Content Marketing','962/226/18',1351.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 16:13:40'),(31,42,'Konfliktcoach / Mediator','Mediator','962/226/18',1204.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:26:47'),(32,43,'IT Projektleiter Agiles Management / Berater','Agiles Management','962/226/18',1999.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:27:20'),(33,44,'NLP Practioner','NLP Practioner','962/226/18',1272.60,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:27:54'),(34,45,'Conversion & Usability Optimierer','Online Marketing','962/226/18',1774.80,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:28:39'),(35,46,'Anwendungsberater Datev für Steuerrecht','Steuerrecht','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:29:29'),(36,47,'IT-Projektleiter, Prozess- & Changemanagement','Prozess- & Changem.','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2019-11-28 07:57:39'),(37,48,'Personalreferent/in: Betriebliches Eingliederungsmanagement, Change-Management','Change-Management','962/226/18',1283.40,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:30:42'),(38,49,'Data Scientist','Data Scientist','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:31:14'),(39,50,'Softwareentewickler: PHP, Java Script, SQL','PHP, Java Script, SQL','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:31:51'),(40,52,'Softwarentwickler: Python','Python','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:32:33'),(41,51,'Softwareentewickler: Ruby on Rails','Ruby on Rails','962/226/18',1996.20,0,1,'1','2018-11-23 23:00:00','2018-11-24 14:33:07'),(42,53,'Entwickler digitale Medien Visualisierung','Foto / Video','962/226/18',1774.00,0,1,'1','2018-11-23 23:00:00','2020-06-11 07:46:45'),(43,54,'UI/UX Design','UI/UX Design','962/226/18',1996.00,0,1,'1','2018-11-23 23:00:00','2020-06-11 07:47:30'),(45,55,'Softwareentewickler: PHP Frameworks Laravel Vue React','PHP Frameworks','962/226/18',1996.00,0,1,'1','2018-11-23 23:00:00','2020-06-11 07:48:18'),(46,56,'Programmierung Advanced Python','Python Adv.','962/226/18',1996.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:49:27'),(47,57,'Psychologischer Coach und Berater','HP Psych','962/226/18',1150.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:50:25'),(48,58,'IT Projektleiter Scrum Master/Product Owner','Product Owner','962/226/18',1996.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:51:07'),(49,59,'Projekteiter Fördermittelmanagement ','Fördermittelmanagement ','962/226/18',1292.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:51:44'),(50,60,'Programmierung: Java Script / node js','node js','962/226/18',2066.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:52:24'),(51,61,'NLP Master','NLP Master','962/226/18',2617.00,0,1,'2','2020-06-11 00:00:00','2020-06-11 07:53:18'),(52,62,'Anwendungsberater IFRS Lexware & Datev','IFRS Lexware & Datev','962/226/18',2066.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:54:06'),(53,63,'Umwelt- & Nachhaltigkeitsmanagement','Nachhaltigkeitsmanagement','962/226/18',1652.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:54:38'),(54,64,'IT Security – Ethical Hacking Information Security Consultant','Security Consultant','962/226/18',4132.00,0,1,'2','2020-06-11 00:00:00','2020-06-11 07:55:24'),(55,65,'Cloud Computing / IoT','Cloud','962/226/18',2066.00,0,1,'1','2020-06-11 00:00:00','2020-06-11 07:55:55');
/*!40000 ALTER TABLE `kurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-15  7:45:11
