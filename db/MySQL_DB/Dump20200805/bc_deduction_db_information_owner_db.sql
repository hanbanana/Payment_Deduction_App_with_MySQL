-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bc_deduction_db
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `information_owner_db`
--

DROP TABLE IF EXISTS `information_owner_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information_owner_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_owner_no` varchar(45) NOT NULL,
  `information_owner_name` varchar(45) NOT NULL,
  `information_owner_address` varchar(45) NOT NULL,
  `information_owner_tel` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_owner_db`
--

LOCK TABLES `information_owner_db` WRITE;
/*!40000 ALTER TABLE `information_owner_db` DISABLE KEYS */;
INSERT INTO `information_owner_db` VALUES (29,'O-0001','Jose M','1234 LA 90000','123-56-7890','2020-06-19 14:51:57','2020-06-19 21:57:37'),(30,'O-0002','Luis R','9876 SD 91111','987-654-3210','2020-06-19 14:52:53','2020-06-19 21:57:43'),(31,'O-0003','Jay L','533 South LA 90002','321-654-9877','2020-06-22 16:37:52','2020-06-22 23:41:54'),(32,'O-0004','Nancy E','5465 East LA 90003','325-658-9865','2020-06-25 13:42:18','2020-06-25 20:42:30'),(33,'1','1','1','1','2020-08-04 09:15:38','2020-08-04 16:15:38'),(34,'1111','11','11','1','2020-08-04 11:14:38','2020-08-04 18:14:38'),(35,'11','2','2','2','2020-08-04 11:15:09','2020-08-04 18:15:09'),(36,'1','3','3','3','2020-08-04 11:15:22','2020-08-04 18:15:22'),(37,'1','23','34','55','2020-08-04 11:16:23','2020-08-04 18:16:23'),(38,'1','34','43','34','2020-08-04 11:18:42','2020-08-04 18:18:42'),(39,'1d','sdf','sdf','sdf','2020-08-04 11:20:17','2020-08-04 18:20:17'),(40,'d-0001','1','1','1','2020-08-04 11:55:45','2020-08-04 18:55:45'),(41,'12','1','1','1','2020-08-04 11:56:38','2020-08-04 18:56:38');
/*!40000 ALTER TABLE `information_owner_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-05 15:24:20
