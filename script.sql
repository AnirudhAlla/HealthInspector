CREATE DATABASE  IF NOT EXISTS `hi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hi`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: hi
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointmentId` int(11) NOT NULL AUTO_INCREMENT,
  `appointmentStatus` varchar(30) DEFAULT NULL,
  `clinicName` varchar(30) DEFAULT NULL,
  `diagnosis` varchar(30) DEFAULT NULL,
  `patientId` varchar(30) DEFAULT NULL,
  `prescription` varchar(30) DEFAULT NULL,
  `revisitDate` varchar(255) DEFAULT NULL,
  `revisitRequired` varchar(30) DEFAULT NULL,
  `seen` varchar(30) DEFAULT NULL,
  `symptoms` varchar(30) DEFAULT NULL,
  `treatmentPlanned` varchar(30) DEFAULT NULL,
  `visitDate` varchar(30) DEFAULT NULL,
  `doctorName` varchar(30) NOT NULL,
  `patientName` varchar(30) NOT NULL,
  PRIMARY KEY (`appointmentId`),
  KEY `FK33550d3y12u5e537bs3rxp6u3` (`doctorName`),
  KEY `FKgji2sjncy18trb3ny2fa1t01o` (`patientName`),
  CONSTRAINT `FK33550d3y12u5e537bs3rxp6u3` FOREIGN KEY (`doctorName`) REFERENCES `user` (`userid`),
  CONSTRAINT `FKgji2sjncy18trb3ny2fa1t01o` FOREIGN KEY (`patientName`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'P','OXY',NULL,NULL,NULL,NULL,NULL,'F',NULL,NULL,'2020-06-01','Ram@999','Naveen123');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinic` (
  `clinicId` varchar(40) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `clinicName` varchar(40) DEFAULT NULL,
  `contactNumber` varchar(50) DEFAULT NULL,
  `facilities` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`clinicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
INSERT INTO `clinic` VALUES ('APO','Vinayak nagar, near Pentachary Hospital','Apollo','9494172098','Operation Theatre','Khammam','www.apollo.com'),('OXY','Vinayak nagar, near Pentachary Hospital','Oxygen','9494172098','Operation Theatre','Hyderabad','www.oxygen.com');
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctorId` int(11) NOT NULL AUTO_INCREMENT,
  `days` varchar(30) DEFAULT NULL,
  `speciality` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `clinicId` varchar(40) NOT NULL,
  `userid` varchar(30) NOT NULL,
  PRIMARY KEY (`doctorId`),
  KEY `FK94kub6le4omeifq9ep50bcbvn` (`clinicId`),
  KEY `FKlcxdjgb9mp854wvx7d7i1659k` (`userid`),
  CONSTRAINT `FK94kub6le4omeifq9ep50bcbvn` FOREIGN KEY (`clinicId`) REFERENCES `clinic` (`clinicId`),
  CONSTRAINT `FKlcxdjgb9mp854wvx7d7i1659k` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Monday,Tuesday,Wednesday','Cardiologist','9:00 AM - 12:00 PM','OXY','Ram@999');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` varchar(30) NOT NULL,
  `answer` varchar(30) DEFAULT NULL,
  `contactNumber` varchar(30) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `securityQuestion` varchar(30) DEFAULT NULL,
  `user_category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin@123',NULL,'Admin'),('Naveen123','chess','9494172098','2016-01-01','rajashekar.chilumula@gmail.com','Naveen','Male','asam','nav@123','What is your favourite sport?','Patient'),('Ram@999','chess','9494172098','1998-01-01','sri@56.com','Sri','Male','Ram','ram123','What is your favourite sport?','Doctor');
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

-- Dump completed on 2020-05-11 12:06:10
