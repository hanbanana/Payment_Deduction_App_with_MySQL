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
-- Table structure for table `information_truck_db`
--

DROP TABLE IF EXISTS `information_truck_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information_truck_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_truck_no` varchar(45) NOT NULL,
  `information_truck_us_plate_no` varchar(45) NOT NULL,
  `information_truck_mx_plate` varchar(45) NOT NULL,
  `information_truck_maker` varchar(45) NOT NULL,
  `information_truck_model` varchar(45) NOT NULL,
  `information_truck_year` varchar(45) NOT NULL,
  `information_truck_color` varchar(45) NOT NULL,
  `information_truck_owner_no` varchar(45) NOT NULL,
  `information_truck_owner_name` varchar(45) NOT NULL,
  `information_truck_driver_id` varchar(45) NOT NULL,
  `information_truck_driver_name` varchar(45) NOT NULL,
  `information_truck_registration_name` varchar(45) NOT NULL,
  `information_truck_rfid_tag` varchar(45) NOT NULL,
  `information_truck_date` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_truck_db`
--

LOCK TABLES `information_truck_db` WRITE;
/*!40000 ALTER TABLE `information_truck_db` DISABLE KEYS */;
INSERT INTO `information_truck_db` VALUES (22,'T-0001','8US123','3MX456','Volvo','XC60','2018','White','O-0001','Jose M','D-0001','Kevin K','RG123','RF789','','2020-06-19 14:59:17','2020-06-19 21:59:17'),(23,'T-0002','5US654','2MX753','Benz','E500','2019','Blue','O-0002','Luis R','D-0002','Mike M','RG00254','RF99921','','2020-06-19 15:00:21','2020-06-19 22:00:21'),(24,'T-0003','8US234','7MX987','BMW','M4','2019','Blue','O-0003','Jay L','D-0003','Maria B','R648432','RFID98435465','','2020-06-22 16:40:09','2020-06-26 16:48:49'),(25,'T-0004','shdf','dsk','sk','dskj','2020','WH','O-0002','Jose M','D-0001','Kevin Kfff','dskjfff','skjdfffffa','','2020-06-22 22:35:31','2020-06-25 22:29:45'),(26,'T-0005','US123','MX456','HHD','CVB','2019','Blue','O-0001','Jose M','D-0002','Mike M','REG123','RFID456','','2020-07-09 10:26:38','2020-07-09 17:26:38'),(35,'t-0001','1','1','1','1','1','1','1','1','11','1','1','1','2020-08-11','2020-08-11 16:26:37','2020-08-11 23:26:37'),(36,'t-0002','1','1','1','1','1','1','1','1','11','1','1','1','2020-08-11','2020-08-11 16:26:59','2020-08-11 23:26:59'),(37,'t-0001','2','2','2','2','2','2','1','2','2','2','2','2','2020-02-11','2020-08-11 16:48:38','2020-08-11 23:48:38'),(38,'T-0001','951','951','951','951','951','951','999','Dave','D-0001','Kevin K','951','951','2020-08-13','2020-08-13 14:48:05','2020-08-13 21:48:05');
/*!40000 ALTER TABLE `information_truck_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 10:41:15
