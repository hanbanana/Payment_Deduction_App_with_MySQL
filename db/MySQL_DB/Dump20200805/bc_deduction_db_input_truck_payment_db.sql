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
-- Table structure for table `input_truck_payment_db`
--

DROP TABLE IF EXISTS `input_truck_payment_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `input_truck_payment_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input_truck_payment_truck_no` varchar(45) NOT NULL,
  `input_truck_payment_owner_id` varchar(45) NOT NULL,
  `input_truck_payment_owner_name` varchar(45) NOT NULL,
  `input_truck_payment_truck_total_amount` varchar(45) NOT NULL,
  `input_truck_payment_down_payment` varchar(45) NOT NULL,
  `input_truck_payment_sale_date` varchar(45) NOT NULL,
  `input_truck_payment_pay_month` varchar(45) NOT NULL,
  `input_truck_payment_paid_amount` varchar(45) NOT NULL,
  `input_truck_payment_this_time_payment` varchar(45) DEFAULT NULL,
  `input_truck_payment_balance_amount` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `input_truck_payment_db`
--

LOCK TABLES `input_truck_payment_db` WRITE;
/*!40000 ALTER TABLE `input_truck_payment_db` DISABLE KEYS */;
INSERT INTO `input_truck_payment_db` VALUES (42,'T-0002','O-0002','Luis R','500000','50000','2020-01-01','5000','5000',NULL,'445000.00','2020-06-25 11:45:12','2020-06-25 18:45:12'),(43,'T-0002','O-0002','Luis R','500000','50000','2020-01-01','5000','5000','5000','440000.00','2020-06-25 11:45:32','2020-06-25 18:45:32'),(45,'T-0004','O-0004','Nancy E','123456789','123456','2020-06-01','1000','1000','1005','123331328.00','2020-06-25 15:33:11','2020-06-25 22:33:11'),(48,'T-0004','O-0004','Nancy E','123456','133','2020-01-01','123','123',NULL,'123200.00','2020-07-08 14:20:19','2020-07-08 21:20:19'),(50,'T-0001','O-0001','Jose M','55000.00','15000','2020-01-01','2000','15000.00',NULL,'40000.00','2020-07-20 08:40:22','2020-07-20 15:40:22'),(51,'T-0001','O-0001','Jose M','55000.00','15000','2020-01-01','2000','17000.00','2000','38000.00','2020-07-20 08:46:20','2020-07-20 15:46:20'),(52,'T-0001','O-0001','Jose M','55000.00','15000','2020-01-01','2000','19000.00','2000','36000.00','2020-07-20 08:47:59','2020-07-20 15:47:59'),(53,'T-0001','O-0001','Jose M','55000.00','15000','2020-01-01','2000','21000.00','2000','34000.00','2020-07-28 15:32:43','2020-07-28 22:32:43'),(54,'T-0001','O-0001','Jose M','55000.00','15000','2020-01-01','2000','23000.00','2000','32000.00','2020-07-30 10:48:17','2020-07-30 17:48:17'),(55,'T-0005','O-0004','Nancy E','11111.00','1111','2020-01-01','100','1211.00',NULL,'9900.00','2020-08-03 13:55:57','2020-08-03 20:55:57'),(56,'T-0005','O-0004','Luis R','22222.00','222','2020-02-02','200','422.00','200','21800.00','2020-08-03 13:57:56','2020-08-03 20:57:56'),(57,'T-0005','O-0004','Nancy E','123.00','23','2020-01-01','10','23.00','0','100.00','2020-08-03 14:02:14','2020-08-03 21:02:14'),(58,'T-0005','O-0004','Nancy E','123.00','23','2020-01-01','10','24.00','1','99.00','2020-08-03 14:03:00','2020-08-03 21:03:00'),(59,'11','1','1','5555555.00','55','2020-01-01','500','555.00','500','5555000.00','2020-08-04 09:17:12','2020-08-04 16:17:12'),(60,'11','1','1','5555555.00','55','2020-01-01','500','605.00','50','5554950.00','2020-08-04 09:26:16','2020-08-04 16:26:16'),(62,'T-0001','12','Nancy E','100010.00','10','2019-01-01','100','50010.00','50000','50000.00','2020-08-05 09:08:00','2020-08-05 16:08:00'),(63,'T-0001','12','Nancy E','100010.00','10','2019-01-01','100','50054.00','44','49956.00','2020-08-05 09:38:51','2020-08-05 16:38:51');
/*!40000 ALTER TABLE `input_truck_payment_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-05 15:24:19
