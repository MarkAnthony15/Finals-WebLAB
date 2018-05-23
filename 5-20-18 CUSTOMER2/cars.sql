-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2018 at 10:12 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(255) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Age` int(255) DEFAULT NULL,
  `ConfirmPassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=123457 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Brand` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Rate` varchar(45) NOT NULL,
  `Penalty` varchar(45) NOT NULL,
  `Transmission` varchar(45) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `image` blob NOT NULL,
  `CarID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CarID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`Brand`, `Model`, `Rate`, `Penalty`, `Transmission`, `Contact`, `Description`, `image`, `CarID`) VALUES
('Toyota', 'Grandia', '1500', '1000', 'Automatic', '0989-789-5678', 'For family travels', 0x6772616e6469612e6a7067, 1),
('Datsun', 'D-510', '500', '50', 'Manual', '09876666875', 'Good as new', 0x44617473756e20442d3531302e6a7067, 2),
('Datsun', 'D-1200', '800', '80', 'Automatic', '09546333764', 'Good as new', 0x44617473756e20442d313230302e6a7067, 3),
('Ferrari', 'enzo', '25000', '2500', 'Automatic', '0936-4577-788', 'Brand New', 0x456e7a6f2e6a7067, 4),
('Ferrari', 'California', '30000', '3000', 'Automatic', '0945-9876-900', 'Brand New', 0x43616c69666f726e69612e6a7067, 5),
('Toyota', 'Fortuner', '6000', '600', 'Automatic', '0936-5000-325', 'Good as new.', 0x466f7274756e65722e6a7067, 6),
('Honda', 'Civic', '1000', '100', 'Manual', '0945-3000-456', 'Good as new', 0x486f6e64612043697669632e706e67, 7),
('Honda', 'Accord', '950', '90', 'Manual', '0987-4999-544', 'Good as new', 0x486f6e6461206163636f72642e6a7067, 8),
('Ford', 'Ranger', '1500', '28', 'Automatic', '0976-4399-325', 'Good as new', 0x466f72642052616e6765722e6a7067, 9),
('Ford', 'Mustang', '600', '60', 'Manual', '0943-5999-234', 'Brand new', 0x6d757374616e672e6a706567, 10),
('Chevrolet', 'camaro', '500', '50', 'Manual', '0945-4000-454', 'Brand new', 0x63616d61726f, 11),
('Chevrolet', 'Spark', '1200', '50', 'Manual', '0978-4568-500', 'Ready to go.', 0x737061726b2e6a7067, 12);

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
CREATE TABLE IF NOT EXISTS `serviceprovider` (
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `SPID` int(255) NOT NULL AUTO_INCREMENT,
  `BusinessEntity` enum('Individual','Company') NOT NULL DEFAULT 'Company',
  `BasedIn` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `BankAccName` varchar(255) NOT NULL,
  `BankAccNum` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ConfirmPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SPID`)
) ENGINE=MyISAM AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `TID` int(255) NOT NULL AUTO_INCREMENT,
  `SPID` int(255) NOT NULL,
  `CustomerID` int(255) NOT NULL,
  `CarID` int(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `ReturnPoint` varchar(255) NOT NULL,
  `TotalPrice` int(11) DEFAULT NULL,
  `Status` enum('Success') NOT NULL DEFAULT 'Success',
  `TDate` date NOT NULL,
  PRIMARY KEY (`TID`),
  KEY `Transaction_fk0` (`SPID`),
  KEY `Transaction_fk1` (`CustomerID`),
  KEY `Transaction_fk2` (`CarID`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
