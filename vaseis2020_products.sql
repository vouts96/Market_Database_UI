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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Barcode` varchar(45) NOT NULL,
  `Price` float NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Brand_name` varchar(45) DEFAULT NULL,
  `First_Transaction` varchar(45) DEFAULT NULL,
  `Category_Category_id` int NOT NULL,
  PRIMARY KEY (`Barcode`),
  KEY `fk_Products_Category1_idx` (`Category_Category_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_Products_Category1` FOREIGN KEY (`Category_Category_id`) REFERENCES `category` (`Category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('09202000',4.67,'Product-100','Goondle',NULL,2),('09202001',11.34,'Product-1','Chami',NULL,4),('09202002',33.83,'Product-2','Yammy',NULL,3),('09202003',2.92,'Product-3','Goondle',NULL,2),('09202004',15.79,'Product-4','Microcol',NULL,1),('09202005',1.99,'Product-5','Altavita',NULL,4),('09202006',34.18,'Product-6','Final',NULL,2),('09202007',39.33,'Product-7','Market',NULL,4),('09202008',31.28,'Product-8','Lycos',NULL,4),('09202009',39.34,'Product-9','Market',NULL,2),('09202010',34.09,'Product-10','Market',NULL,5),('09202011',21.31,'Product-11','Yammy',NULL,4),('09202012',5.43,'Product-12','Adot',NULL,5),('09202013',31.26,'Product-13','Goondle',NULL,4),('09202014',19.04,'Product-14','Lavas',NULL,6),('09202015',36.67,'Product-15','Macrom',NULL,4),('09202016',18,'Product-16','Macrom',NULL,6),('09202017',4.38,'Product-17','Adot',NULL,1),('09202018',13.43,'Product-18','Caker',NULL,2),('09202019',26.26,'Product-19','Macrom',NULL,6),('09202020',17.92,'Product-20','Altavita',NULL,1),('09202021',29.21,'Product-21','Sibelius',NULL,3),('09202022',10.05,'Product-22','Caker',NULL,5),('09202023',25.52,'Product-23','Yammy',NULL,6),('09202024',1.55,'Product-24','Market',NULL,4),('09202025',0.69,'Product-25','Yammy',NULL,4),('09202026',0.53,'Product-26','Caker',NULL,3),('09202027',1.85,'Product-27','Lycos',NULL,5),('09202028',1.64,'Product-28','Lycos',NULL,2),('09202029',23.27,'Product-29','Adot',NULL,5),('09202030',31.52,'Product-30','Market',NULL,1),('09202031',17.51,'Product-31','Sibelius',NULL,5),('09202032',2.09,'Product-32','Adot',NULL,1),('09202033',0.1,'Product-33','Lycos',NULL,2),('09202034',17.61,'Product-34','Sibelius',NULL,6),('09202035',32.94,'Product-35','Goondle',NULL,5),('09202036',15.19,'Product-36','Sibelius',NULL,3),('09202037',2.41,'Product-37','Altavita',NULL,5),('09202038',33.9,'Product-38','Lavas',NULL,2),('09202039',9.67,'Product-39','Lycos',NULL,6),('09202040',34.91,'Product-40','Lycos',NULL,2),('09202041',30.52,'Product-41','Adot',NULL,5),('09202042',19.77,'Product-42','Adot',NULL,3),('09202043',12.14,'Product-43','Sibelius',NULL,1),('09202044',19.35,'Product-44','Final',NULL,6),('09202045',22.27,'Product-45','Lycos',NULL,2),('09202046',6.4,'Product-46','Market',NULL,2),('09202047',7.24,'Product-47','Altavita',NULL,3),('09202048',27.65,'Product-48','Sibelius',NULL,4),('09202049',2.71,'Product-49','Goondle',NULL,5),('09202050',37.09,'Product-50','Chami',NULL,1),('09202051',26.3,'Product-51','Caker',NULL,5),('09202052',31.81,'Product-52','Chami',NULL,4),('09202053',35.16,'Product-53','Final',NULL,4),('09202054',32.39,'Product-54','Macrom',NULL,2),('09202055',20.38,'Product-55','Lycos',NULL,1),('09202056',15.76,'Product-56','Altavita',NULL,6),('09202057',35.96,'Product-57','Final',NULL,1),('09202058',24.31,'Product-58','Altavita',NULL,1),('09202059',39.3,'Product-59','Altavita',NULL,1),('09202060',19.52,'Product-60','Lycos',NULL,6),('09202061',20.58,'Product-61','Goondle',NULL,3),('09202062',26.52,'Product-62','Altavita',NULL,2),('09202063',18.76,'Product-63','Sibelius',NULL,2),('09202064',22.79,'Product-64','Sibelius',NULL,3),('09202065',12.39,'Product-65','Macrom',NULL,6),('09202066',34,'Product-66','Market',NULL,2),('09202067',35.71,'Product-67','Yammy',NULL,4),('09202068',4.65,'Product-68','Lavas',NULL,5),('09202069',6.24,'Product-69','Caker',NULL,1),('09202070',13.17,'Product-70','Caker',NULL,2),('09202071',2.28,'Product-71','Adot',NULL,4),('09202072',37.8,'Product-72','Adot',NULL,6),('09202073',23.05,'Product-73','Sibelius',NULL,2),('09202074',25.25,'Product-74','Lycos',NULL,4),('09202075',35.28,'Product-75','Yammy',NULL,6),('09202076',5.84,'Product-76','Adot',NULL,4),('09202077',5.4,'Product-77','Chami',NULL,1),('09202078',33.02,'Product-78','Altavita',NULL,3),('09202079',32.63,'Product-79','Final',NULL,6),('09202080',21.18,'Product-80','Goondle',NULL,6),('09202081',22.16,'Product-81','Sibelius',NULL,4),('09202082',38.61,'Product-82','Macrom',NULL,3),('09202083',36.08,'Product-83','Adot',NULL,4),('09202084',23.15,'Product-84','Market',NULL,4),('09202085',32.6,'Product-85','Microcol',NULL,2),('09202086',26.01,'Product-86','Chami',NULL,4),('09202087',3.38,'Product-87','Lavas',NULL,3),('09202088',33.77,'Product-88','Caker',NULL,4),('09202089',6.85,'Product-89','Market',NULL,4),('09202090',5.95,'Product-90','Lavas',NULL,4),('09202091',11.78,'Product-91','Chami',NULL,4),('09202092',29.81,'Product-92','Caker',NULL,3),('09202093',26.06,'Product-93','Yammy',NULL,1),('09202094',8.89,'Product-94','Macrom',NULL,2),('09202095',5.41,'Product-95','Adot',NULL,6),('09202096',26.63,'Product-96','Microcol',NULL,6),('09202097',38.63,'Product-97','Market',NULL,4),('09202098',25.62,'Product-98','Final',NULL,1),('09202099',22.09,'Product-99','Caker',NULL,6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-02 16:46:38
