-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: vaseis2020
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `Store_id` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Operating_hours` longtext NOT NULL,
  `Size` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Postal_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES ('07724','+30-6768366222','8am - 8pm, Monday to Saturday','300-ft2','Thessaloniki','496 Lacinia Av.','76701'),('09276','+30-5819634422','8am - 8pm, Monday to Saturday','210-ft2','Thessaloniki','9513 Ligula Road','71433'),('18226','+30-9678382176','8am - 8pm, Monday to Saturday','360-ft2','Athens','Ap #410-7888 Vitae Rd.','64172'),('29286','+30-8615145391','8am - 8pm, Monday to Saturday','150-ft2','Athens','963-2197 A, Street','15047'),('46358','+30-8153127591','8am - 8pm, Monday to Saturday','390-ft2','Patra','P.O. Box 352, 8875 Sagittis Rd.','41734'),('48119','+30-2727088109','8am - 8pm, Monday to Saturday','120-ft2','Patra','249 Ante Avenue','44064'),('59469','+30-7372408711','8am - 8pm, Monday to Saturday','270-ft2','Thessaloniki','Ap #486-8611 Quisque Av.','30451'),('74349','+30-9110035049','8am - 8pm, Monday to Saturday','330-ft2','Thessaloniki','766-6648 Id Street','04590'),('93205','+30-5838548651','8am - 8pm, Monday to Saturday','240-ft2','Patra','7759 Ultrices St.','49950'),('93842','+30-7688057955','8am - 8pm, Monday to Saturday','180-ft2','Athens','Ap #495-8762 Ornare, Avenue','02579');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-02 16:46:37
