# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.11-MariaDB)
# Datenbank: bta
# Erstellt am: 2020-06-14 16:27:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle coursedates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coursedates`;

CREATE TABLE `coursedates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) unsigned NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `coursedates` WRITE;
/*!40000 ALTER TABLE `coursedates` DISABLE KEYS */;

INSERT INTO `coursedates` (`id`, `course_id`, `start`, `end`)
VALUES
	(1,1,'2020-04-06','2020-05-06'),
	(2,1,'2020-07-08','2020-08-04'),
	(3,2,'2020-02-10','2020-03-06'),
	(4,2,'2020-05-11','2020-06-09'),
	(5,4,'2020-01-05','2020-02-02');

/*!40000 ALTER TABLE `coursedates` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `name`)
VALUES
	(1,'PHP'),
	(2,'PHP-Frameworks'),
	(3,'Cloud'),
	(4,'Web');

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Export von Tabelle migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle participant_coursedate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `participant_coursedate`;

CREATE TABLE `participant_coursedate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) unsigned NOT NULL,
  `course_date_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`),
  KEY `course_date_id` (`course_date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `participant_coursedate` WRITE;
/*!40000 ALTER TABLE `participant_coursedate` DISABLE KEYS */;

INSERT INTO `participant_coursedate` (`id`, `participant_id`, `course_date_id`)
VALUES
	(1,1,1),
	(2,1,3),
	(3,1,5),
	(4,2,1),
	(5,2,3),
	(6,2,5),
	(7,3,1),
	(8,3,3),
	(9,3,5),
	(10,4,2),
	(11,5,2);

/*!40000 ALTER TABLE `participant_coursedate` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle participants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `participants`;

CREATE TABLE `participants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;

INSERT INTO `participants` (`id`, `name`)
VALUES
	(1,'Bernd Engels'),
	(2,'Sascha Böge'),
	(3,'Paul Meier'),
	(4,'Liese Meitner'),
	(5,'Albert Einstein');

/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Export von Tabelle users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','engels@f50.de',NULL,'$2y$10$8yvy7cF7FJaaOwnF8syTaue/f1Di553GoKgkHYx2rbuAFhgioSpnW',NULL,'2020-06-14 12:21:04','2020-06-14 12:21:04');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
