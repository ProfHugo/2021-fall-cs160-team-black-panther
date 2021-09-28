-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: interval
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventID` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `completion` tinyint unsigned NOT NULL,
  `repeat` varchar(20) DEFAULT NULL,
  `alarm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Doctor\'s appointment','yearly check-up','Kaiser Hospital','13:00:00','14:15:00','2021-05-12','2021-05-12','appointments',0,NULL,'30 minutes before'),(2,'Pick up Sam from school',NULL,'Miller Elementary School','14:45:00','14:50:00','2021-03-11','2021-03-11','school',0,'weekly','10 minutes before'),(3,'Prepare and eat lunch','Meal Plan: turkey sandwich, carrots, soup, salad, pretzels',NULL,'11:30:00','12:15:00','2021-03-14','2021-03-14','meal planning',0,NULL,'5 minutes before'),(4,'Vacation','Trip to Los Angeles with family','Los Angeles','07:00:00','22:00:00','2021-05-31','2021-06-09','trips',0,NULL,'24 hours  before'),(5,'Football game','Varsity game','South High School','19:00:00','22:00:00','2021-03-26','2021-03-26','football games',0,NULL,'1 hour before'),(6,'Staff meeting','','Conference room','11:00:00','12:00:00','2021-03-25','2021-03-25','meetings',0,NULL,'1 hour before'),(7,'Video conference with client','Client Bob Richardson','Zoom meeting','13:00:00','14:30:00','2021-04-13','2021-04-13','meetings',0,NULL,'1 hour before'),(8,'Guitar Lesson',NULL,NULL,'10:00:00','11:30:00','2021-04-04','2021-04-04','lessons',0,'monthly','30 minutes before'),(9,'Writing Workshop','','Ronson Hall','16:00:00','17:00:00','2021-04-02','2021-04-02',NULL,0,NULL,'30 minutes before'),(10,'Party','','Jordan\'s house','20:00:00','01:00:00','2021-04-10','2021-04-11','parties',0,NULL,'1 hour before');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 18:52:25
