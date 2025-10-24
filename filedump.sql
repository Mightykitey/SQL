-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: primaryoaks
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `patient_id` int NOT NULL,
  `code` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` text COLLATE utf8mb4_general_ci NOT NULL,
  `longdesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `audit_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,'reg','2025-10-21','New user registered'),(1,'reg','2025-10-21','New user registered'),(1,'reg','2025-10-21','New user registered'),(7,'log','2025-10-21','User has been successfully logged in.'),(7,'log','2025-10-21','User has been successfully logged in.'),(7,'log','2025-10-21','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-23','User has been successfully logged in.'),(1,'reg','2025-10-23','New user registered'),(8,'log','2025-10-23','User has been successfully logged in.'),(8,'log','2025-10-23','User has been successfully logged in.'),(8,'log','2025-10-23','User has been successfully logged in.'),(7,'log','2025-10-24','User has been successfully logged in.');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `appdate` int NOT NULL,
  `bookdon` int NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `patient_id` (`patient_id`,`staff_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (6,8,3,1765384500,1761222993),(7,8,3,1761921540,1761223005),(8,8,1,1764099900,1761223022),(9,7,1,1761309840,1761298871),(10,7,1,1761309840,1761299086),(11,7,3,1764848820,1761299273),(12,7,3,1768816260,1761299312),(13,7,1,1768489200,1761299576),(14,7,3,1770289200,1761299850),(15,7,3,1770289200,1761299982),(16,7,1,1765969200,1761300243);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `fname` text COLLATE utf8mb4_general_ci NOT NULL,
  `lname` text COLLATE utf8mb4_general_ci NOT NULL,
  `dob` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `pwd` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Bob','tester','12/12/2012','tester','65e84be33532fb784c48129675f9eff3a682b27168c0ea744b2cf58ee02337c5'),(2,'kite','jarvis','1/4/2000','test','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'),(3,'test','test','test','tests','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08'),(4,'work','work','work','work','00e13ed7af55b27622f1d6eab5bec0147e68efe28dc2b12461117afa1a5ed40e'),(5,'ad','ad','ad','ad','70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67'),(7,'ggg','ggg','1/4/2000','ggg','$2y$10$pjUCgNau0zlz3XeDXW9vtO/o/UFF4Azxf5GTfJGkPgrj.TwA51MfO'),(8,'kite','jarvis','1/4/2000','Might','$2y$10$SX95kFlmhuafFAZwlcHMA.p8n7jH6MoCkFnOcFqBNnxNWmlwSP6Ym');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `fname` text COLLATE utf8mb4_general_ci NOT NULL,
  `lname` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `pwd` text COLLATE utf8mb4_general_ci NOT NULL,
  `job` text COLLATE utf8mb4_general_ci NOT NULL,
  `rom` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'kite','jarvis','mightykitey@gmail.com','Kj01.08?!','Doc','s13'),(2,'Bob','smith','bigbob','$2y$10$md49fx6bCb0xhCdWp0z60OlD.VKRiONcf2Hnil1NpGcpQb3kP30EW','on','g5'),(3,'adam','watkin','ggg','$2y$10$7LWXHTK3TOxOeuEvU1WnfufnYnjPBqgDrFUKRyuR51cyQasWrCxNK','on','g1');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_audit`
--

DROP TABLE IF EXISTS `staff_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_audit` (
  `staff_id` int NOT NULL,
  `job` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` text COLLATE utf8mb4_general_ci NOT NULL,
  `desc` text COLLATE utf8mb4_general_ci NOT NULL,
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `staff_audit_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_audit`
--

LOCK TABLES `staff_audit` WRITE;
/*!40000 ALTER TABLE `staff_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_audit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-24 14:05:10
