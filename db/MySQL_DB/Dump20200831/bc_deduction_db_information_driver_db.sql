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
-- Table structure for table `information_driver_db`
--

DROP TABLE IF EXISTS `information_driver_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information_driver_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information_driver_no` varchar(45) NOT NULL,
  `information_driver_name` varchar(45) NOT NULL,
  `information_driver_license_id` varchar(45) NOT NULL,
  `information_driver_rfc` varchar(45) NOT NULL,
  `information_driver_ife` varchar(45) NOT NULL,
  `information_driver_address` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`information_driver_no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_driver_db`
--

LOCK TABLES `information_driver_db` WRITE;
/*!40000 ALTER TABLE `information_driver_db` DISABLE KEYS */;
INSERT INTO `information_driver_db` VALUES (6,'D-0001','Kevin K','R895623','abc123456','123456abc','2356 LB 90001','2020-06-19 14:56:13','2020-06-19 21:56:13'),(7,'D-0002','Mike M','K654987','zxc123456','456123rgn','9876 HB 90002','2020-06-19 14:57:27','2020-06-19 21:57:27'),(8,'D-0003','Maria B','R5553244','RFC5648','IFE68793','8451 North SD 90045','2020-06-22 16:38:53','2020-06-22 23:38:53'),(9,'D-0004','Eddie J','HF39203','RFC320940','IFE203003','489 West LA 90005','2020-06-25 13:43:57','2020-06-25 20:44:07'),(10,'d-0001','gd','fgd','gd','gdf','fgd','2020-08-04 08:34:25','2020-08-04 15:34:25'),(11,'D-0001','fhd','hfd','fhd','hdf','hdf','2020-08-04 08:34:35','2020-08-04 15:34:35'),(12,'d-00011','s','s','s','s','s','2020-08-04 11:27:34','2020-08-04 18:27:34'),(13,'a','a','a','a','a','a','2020-08-05 11:20:40','2020-08-05 18:20:40'),(14,'c','c','c','c','c','c','2020-08-05 11:21:27','2020-08-05 18:21:27'),(15,'33','3','3','3','3','3','2020-08-05 11:34:30','2020-08-05 18:34:30'),(16,'11','1','1','1','1','1','2020-08-05 13:23:21','2020-08-05 20:23:21'),(17,'2','2','2','2','2','2','2020-08-11 10:20:13','2020-08-11 17:20:13');
/*!40000 ALTER TABLE `information_driver_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 10:41:16
