CREATE DATABASE  IF NOT EXISTS `invoicing_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `invoicing_db`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: invoicing_db
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` varchar(255) DEFAULT NULL,
  `EMAIL1` varchar(255) DEFAULT NULL,
  `MOBILE` varchar(255) DEFAULT NULL,
  `PIN_CODE` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CLIENT_NAME` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `CST_NO` varchar(255) DEFAULT NULL,
  `GSTIN` varchar(255) DEFAULT NULL,
  `PHONE_OFFICE` varchar(255) DEFAULT NULL,
  `PAN_NO` varchar(255) DEFAULT NULL,
  `ST_NO` varchar(255) DEFAULT NULL,
  `TAN_NO` varchar(255) DEFAULT NULL,
  `UPDATED_BY` varchar(255) DEFAULT NULL,
  `UPDATED_DATE` varchar(255) DEFAULT NULL,
  `VAT_NO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,1,'KA , INDIA','Bangalore','2017-11-11 00:49:26','xxxxx@gamil.com','9999999999','560000','KA','Tester','Admin','','29ABCDE1234X7Z7','9999999999','ABCDE1234X','','','Admin','2017-11-29 12:18:19','');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `DESIGNATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `DESIGNATION_NAME` varchar(255) DEFAULT NULL,
  `ROLE_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DESIGNATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,1,'ADMIN','ROLE_ADMIN'),(2,1,'USER','ROLE_USER');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE_FLAG` int(11) DEFAULT NULL,
  `CREATED_DATE` varchar(255) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `FAILURE_ATTEMPTS_DATE` varchar(255) DEFAULT NULL,
  `LOCK_STATUS` varchar(255) DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `NO_OF_FAILURE_ATTEMPTS` int(11) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `UPDATED_DATE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `DESIGNATION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `USER_NAME` (`USER_NAME`,`EMAIL_ID`),
  KEY `FK27E3CB27D9DD6A` (`DESIGNATION_ID`),
  CONSTRAINT `FK27E3CB27D9DD6A` FOREIGN KEY (`DESIGNATION_ID`) REFERENCES `designation` (`DESIGNATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'2017-08-10 23:19:32','Admin','admin@gmail.com',NULL,'0','8123993744',0,'25d55ad283aa400af464c76d713c07ad',NULL,'Admin',1),(2,1,'2017-08-10 23:22:10','Test','test@gmail.com',NULL,'0','9876543210',0,'25d55ad283aa400af464c76d713c07ad','2017-11-29 12:15:18','Testing',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-09  9:33:08