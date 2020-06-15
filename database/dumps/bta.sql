# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.11-MariaDB)
# Datenbank: bta
# Erstellt am: 2020-06-14 19:51:12 +0000
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
  KEY `course_id` (`course_id`),
  CONSTRAINT `coursedates_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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


# Export von Tabelle participant_coursedate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `participant_coursedate`;

CREATE TABLE `participant_coursedate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) unsigned NOT NULL,
  `course_date_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `participant_id` (`participant_id`),
  KEY `course_date_id` (`course_date_id`),
  CONSTRAINT `participant_coursedate_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `participant_coursedate_ibfk_2` FOREIGN KEY (`course_date_id`) REFERENCES `coursedates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
