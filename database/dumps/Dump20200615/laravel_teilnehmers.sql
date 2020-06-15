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
-- Table structure for table `teilnehmers`
--

DROP TABLE IF EXISTS `teilnehmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teilnehmers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anrede` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vorname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nachname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geb_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geb_ort` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beruf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kdnr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berater` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `werbung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wiegefunden` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktiv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `belehrung` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unterschrift_kunde` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobili` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `betreuung` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gesundheinschr` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zugangsdaten` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bemerkungpersoenlich` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vorken` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edv` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integration` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sprachkesprachke` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lebenslauf` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bemerkungfachlich` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teilnehmers`
--

LOCK TABLES `teilnehmers` WRITE;
/*!40000 ALTER TABLE `teilnehmers` DISABLE KEYS */;
INSERT INTO `teilnehmers` VALUES (1,NULL,'Herr','Sascha','Böge','Cosmarweg 51,\r\n13591 Berlin','s.boege@gmx.net','0303222','1977-12-30','Berlin','Dozent','123456789','AA Spandau','Test','1','1','1','dsgvo','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAcIAAAD6CAYAAAAyRkcxAAAgAElEQVR4Xu2dCdQWVf3HL//UlEJDxRUil9QUJVxSBI95tFxCjRJzS1MTTVFyS7O0NOsoGuaGomlp7msC','2020-06-11 11:44:47','2020-06-11 11:44:47','true','false','false','true','true',NULL,'true','true','true',NULL,NULL,NULL);
/*!40000 ALTER TABLE `teilnehmers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-15  7:45:06
