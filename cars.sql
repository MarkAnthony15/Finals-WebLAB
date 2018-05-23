-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: cars
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_details`
--

DROP TABLE IF EXISTS `car_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_details` (
  `capacity` int(11) DEFAULT NULL,
  `serviceprovider` char(80) DEFAULT NULL,
  `carmodel` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_details`
--

LOCK TABLES `car_details` WRITE;
/*!40000 ALTER TABLE `car_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Cars Thunder','1.jpeg',1000),(2,'Mater','2.jpg',100),(3,'wakwkawka','3.jpg',1000),(4,'heuehuaue','4.png',2000),(5,'Hudson','5.jpg',500),(6,'Hicks','6.jpg',1666);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(255) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Age` int(255) DEFAULT NULL,
  `Role` enum('Customer','Service Provider','Administrator') NOT NULL DEFAULT 'Customer',
  `Status` enum('Pending','Approved','Banned') NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Arnel','Agusdan','Male','arnel@somewhere.ru','0934780293','4297f44b13955235245b2497399d7a93',19,'Administrator','Approved'),(2,'Mark Anthony','Bambico','Female','mark@russian.ru','23124124','4297f44b13955235245b2497399d7a93',19,'Customer','Pending'),(3,'Justine Ray','Dungan','Female','dungan@rusky.ru','0999999999','4297f44b13955235245b2497399d7a93',19,'Service Provider','Approved'),(4,'Tony','Stark','Male','ironman@stark.com','123','202cb962ac59075b964b07152d234b70',25,'Customer','Pending');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceprovider` (
  `BasedIn` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `BankAccName` varchar(255) NOT NULL,
  `BankAccNum` varchar(255) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovider`
--

LOCK TABLES `serviceprovider` WRITE;
/*!40000 ALTER TABLE `serviceprovider` DISABLE KEYS */;
INSERT INTO `serviceprovider` VALUES ('Bokawkan, Baguio City','0239123','Cachin\'s Parlor Shop','ben@noob.noob','Bokawkan, Baguio City','Suka Blyat','5555555',3);
/*!40000 ALTER TABLE `serviceprovider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `TID` int(255) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(255) NOT NULL,
  `CarID` int(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `ReturnPoint` varchar(255) NOT NULL,
  `TotalPrice` int(11) DEFAULT NULL,
  `SPID` int(11) NOT NULL,
  PRIMARY KEY (`TID`),
  KEY `Transaction_fk1` (`CustomerID`),
  KEY `Transaction_fk2` (`CarID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,2,2,'Success','24 Hours','Bokawkan',15000,3),(2,1,1,'Pending','12 Hours','Centermall',5000,3);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `pickuplocation` varchar(80) NOT NULL,
  `pickupdate` date NOT NULL,
  `pickuptime` varchar(6) NOT NULL,
  `returndate` date NOT NULL,
  `returntime` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('baguio','2018-12-12','12:12','2018-12-31','12:12'),('manila','2018-12-12','12:12','2018-12-31','12:12');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23  9:57:17
