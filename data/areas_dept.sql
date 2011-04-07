# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: actdev1.inetu.net (MySQL 5.0.77-log)
# Database: ircdev
# Generation Time: 2011-04-07 14:53:16 -0500
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table staff_area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff_area`;

CREATE TABLE `staff_area` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `staff_area` WRITE;
/*!40000 ALTER TABLE `staff_area` DISABLE KEYS */;
INSERT INTO `staff_area` (`id`,`name`)
VALUES
	('CEO','CEO'),
	('COMM','Communications'),
	('CORPDELV_WORK ','Corporate Development'),
	('DEV','Development'),
	('EDUCATION','Education'),
	('ES','Education Services'),
	('FINANCE','Finance'),
	('INTERNATIONAL','INTERNATIONAL'),
	('IT','IT'),
	('OPS','Operations'),
	('RES','Research'),
	('RES_DEV','Research Development'),
	('WBD','WBD'),
	('WDO','WDO'),
	('WORKDELV','Workforce Development'),
	('WORKFORCE CURRICULUM','WORKFORCE CURRICULUM'),
	('WSS','WSS'),
	('WTD','WTD');

/*!40000 ALTER TABLE `staff_area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff_dept`;

CREATE TABLE `staff_dept` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `staff_dept_fk01` (`area`),
  CONSTRAINT `staff_dept_fk01` FOREIGN KEY (`area`) REFERENCES `staff_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9530 DEFAULT CHARSET=utf8;

LOCK TABLES `staff_dept` WRITE;
/*!40000 ALTER TABLE `staff_dept` DISABLE KEYS */;
INSERT INTO `staff_dept` (`id`, `name`,`area`)
VALUES
	(1,'ADMINISTRATION','CEO'),
	(2,'WASHINGTON DC','CEO'),
	(3,'HUMAN RESOURCES','CEO'),
	(4,'INTERNAL AUDIT','CEO'),
	(5,'ADMINISTRATION','FINANCE'),
	(6,'ACCT SYSTEMS & CONTROLS','FINANCE'),
	(7,'FINANCIAL PLANNING','FINANCE'),
	(8,'CENTRAL SERVICES','FINANCE'),
	(9,'LEGAL DEPARTMENT','FINANCE'),
	(10,'ADMINISTRATION','COMM'),
	(11,'PUBLICATIONS','COMM'),
	(12,'INFORMATION RESOURCE CTR','COMM'),
	(13,'MEDIA RELATIONS','COMM'),
	(14,'ACT WEBSITE','COMM'),
	(15,'ADMINISTRATION','DEV'),
	(17,'HIGHER EDUCATION PROGRAMS','DEV'),
	(18,'PLACEMENT','DEV'),
	(19,'ESSP','DEV'),
	(20,'EDITORIAL & QUALITY ASSURANCE','DEV'),
	(21,'TECHNICAL SUPPORT','DEV'),
	(22,'GMAT','DEV'),
	(23,'PERFORMANCE ASSESSMENT DEVELOPMENT','DEV'),
	(24,'PERFORMANCE SCORING CTR','DEV'),
	(25,'K12 ASSESSMENT','DEV'),
	(26,'CLASSROOM CONNECTIONS','DEV'),
	(27,'ITEM BANKING UNIT','DEV'),
	(28,'ADMINISTRATION','ES'),
	(29,'ACT STATE','ES'),
	(30,'CLIENT OUTREACH AND PARTNERSHIPS','ES'),
	(31,'CONTRACT MANAGEMENT','ES'),
	(32,'PROGRAM SOLUTIONS AND SUPPORT SERVICES','ES'),
	(33,'MARKET STRATEGY AND SERVICES','ES'),
	(34,'WEST REGION','ES'),
	(35,'SOUTHWEST REGION','ES'),
	(36,'MIDWEST REGION','ES'),
	(37,'SOUTHEAST REGION','ES'),
	(38,'NORTHEAST REGION','ES'),
	(39,'IBU','WTD'),
	(40,'TEST DEVELOPMENT','WTD'),
	(41,'WORKKEYS DEVELOPMENT','WTD'),
	(42,'OPERATIONS','WDO'),
	(43,'ADMINISTRATION','RES'),
	(44,'MEASUREMENT & REPORTING SVCS','RES'),
	(45,'MEASUREMENT RESEARCH','RES'),
	(46,'STATISTICAL SERVICES','RES'),
	(47,'APPLIED RESEARCH ADMIN','RES'),
	(48,'CAREER TRANSITIONS RES','RES'),
	(49,'EDUC & WORKFORCE RESEARCH SRVS','RES'),
	(50,'SURVEY RESEARCH SERVICES','RES'),
	(51,'ADMINISTRATION','EDUCATION'),
	(52,'NCEA ADMINISTRATION','EDUCATION'),
	(53,'DATA QUALITY CAMPAIGN','EDUCATION'),
	(54,'NCEA EDUCATION INITIATIVES','EDUCATION'),
	(55,'NCEA OUTREACH','EDUCATION'),
	(56,'NCEA RESEARCH','EDUCATION'),
	(57,'NCEA PROGRAMMING','EDUCATION'),
	(58,'ADMINISTRATION','RES_DEV'),
	(59,'ADMINISTRATION','WORKDELV'),
	(60,'ADMINISTRATION','WORKFORCE CURRICULUM'),
	(61,'MARKETING_SALES','WORKFORCE CURRICULUM'),
	(62,'TECHNOLOGY_OUTREACH','WORKFORCE CURRICULUM'),
	(63,'ADMINISTRATION','CORPDELV_WORK'),
	(64,'CORPORATE ASSESSMENT INFRASTRUCTURE','CORPDELV_WORK '),
	(65,'DATA WAREHOUSE','CORPDELV_WORK '),
	(66,'CORE SERVICES','CORPDELV_WORK '),
	(67,'SUPPORT SERVICES','WSS'),
	(68,'CUSTOMER SERVICES','WSS'),
	(69,'ADMINISTRATION','WBD'),
	(70,'BUSINESS DEVELOPMENT & MARKETING','WBD'),
	(71,'SALES','WBD'),
	(72,'I/O PSYCHOLOGY','WBD'),
	(73,'ADMINISTRATION','IT'),
	(74,'CLIENT ENGAGEMENT','IT'),
	(75,'E-BUSINESS DEVELOPMENT','IT'),
	(76,'ARCHITECTURE','IT'),
	(77,'OPERATIONS','IT'),
	(78,'DATA','IT'),
	(79,'AUDIT & REPORTING','IT'),
	(80,'ADMINISTRATION','OPS'),
	(81,'CUSTOMER SERVICE CENTER ADMIN','OPS'),
	(82,'E-BUSINESS-ADMINISTRATION','OPS'),
	(83,'CONTRACT OPERATIONS','OPS'),
	(84,'STATE TESTING','OPS'),
	(85,'PRODUCTION PLANNING AND SERVICES','OPS'),
	(86,'ASSESS PROG SERV ADMIN','OPS'),
	(87,'INSTITUTIONAL SERVICES','OPS'),
	(88,'PROG ADMIN SERVICES','OPS'),
	(89,'REGISTRATION','OPS'),
	(90,'TEST ADMINISTRATION','OPS'),
	(91,'RECORDS','OPS'),
	(92,'TEST SECURITY','OPS'),
	(93,'CUSTOMER SERVICES','OPS'),
	(94,'ACT PROGRAM DEVELOPMENT','OPS'),
	(95,'CUSTOMER SERVICES_HV','OPS'),
	(96,'PRODUCTION SERVICES','OPS'),
	(97,'PRINTING & BINDERY SOLUTIONS','OPS'),
	(98,'DISTRIBUTION SERVICES','OPS'),
	(99,'ADMIN','INTERNATIONAL'),
	(100,'LINDQUIST BLDG','FINANCE'),
	(101,'TYLER BLDG','FINANCE'),
	(102,'DAVIDSEN BLDG','FINANCE'),
	(103,'ACT CIRCLE','FINANCE');

/*!40000 ALTER TABLE `staff_dept` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
