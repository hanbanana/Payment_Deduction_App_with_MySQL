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
-- Table structure for table `input_part_purchase_db`
--

DROP TABLE IF EXISTS `input_part_purchase_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `input_part_purchase_db` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `input_part_purchase_status` varchar(45) NOT NULL,
  `input_part_purchase_type` varchar(45) NOT NULL,
  `input_part_purchase_truck_no` varchar(45) NOT NULL,
  `input_part_purchase_owner_id` varchar(45) NOT NULL,
  `input_part_purchase_driver_id` varchar(45) NOT NULL,
  `input_part_purchase_invoice_no` varchar(45) NOT NULL,
  `input_part_purchase_amount` varchar(45) NOT NULL,
  `input_part_purchase_pay_week` varchar(45) NOT NULL,
  `input_part_purchase_date` varchar(45) NOT NULL,
  `input_part_purchase_cr` varchar(45) NOT NULL,
  `input_part_purchase_invoice` varchar(45) NOT NULL,
  `input_part_purchase_desc` varchar(45) NOT NULL,
  `input_part_purchase_paid_amount` varchar(45) NOT NULL,
  `input_part_purchase_this_time_payment` varchar(45) DEFAULT NULL,
  `input_part_purchase_paid_date` varchar(45) NOT NULL,
  `input_part_purchase_balance_amount` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input_part_purchase_db`
--

LOCK TABLES `input_part_purchase_db` WRITE;
/*!40000 ALTER TABLE `input_part_purchase_db` DISABLE KEYS */;
INSERT INTO `input_part_purchase_db` VALUES (25,'Open','S','T-0001','O-0002','D-0002','d','200','10','2020-01-01','d','d','d','5.00','5','2020-02-02','195.00','2020-08-03 16:01:10','2020-08-04 15:29:21'),(26,'Open','S','T-0001','O-0002','D-0002','d','200','10','2020-01-01','d','d','d','11.00','6','2020-05-05','189.00','2020-08-03 16:01:24','2020-08-04 15:29:33');
/*!40000 ALTER TABLE `input_part_purchase_db` ENABLE KEYS */;
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
