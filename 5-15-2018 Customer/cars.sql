-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2018 at 03:05 PM
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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `CarID` int(255) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` longblob NOT NULL,
  `Name` varchar(255) NOT NULL,
  `penalty` varchar(255) NOT NULL,
  `transmission` enum('Manual','Automatic') NOT NULL DEFAULT 'Manual',
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`CarID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CarID`, `BrandName`, `Model`, `Rate`, `Description`, `image`, `Name`, `penalty`, `transmission`, `contact`) VALUES
(1, 'Jeep', '2019 Jeep Cherokee', 1000, 'No Free Ride', '', '', '', 'Manual', ''),
(2, 'MINI', 'Countryman', 2500, 'Driver Sweet Lover', '', '', '', 'Manual', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(255) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Age` int(255) DEFAULT NULL,
  `ConfirmPassword` varchar(45) DEFAULT NULL,
  `Role` enum('Customer','Service Provider','Administrator') NOT NULL DEFAULT 'Customer',
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Gender`, `Email`, `PhoneNumber`, `Password`, `Age`, `ConfirmPassword`, `Role`) VALUES
(1, 'Arnel', 'Agusdan', 'Male', 'arnel@somewhere.ru', '0934780293', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Administrator'),
(2, 'Mark Anthony', 'Bambico', 'Female', 'mark@russian.ru', '23124124', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Customer'),
(3, 'Justine Ray', 'Dungan', 'Female', 'dungan@rusky.ru', '0999999999', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Service Provider');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
CREATE TABLE IF NOT EXISTS `serviceprovider` (
  `BasedIn` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `BankAccName` varchar(255) NOT NULL,
  `BankAccNum` varchar(255) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`BasedIn`, `PhoneNumber`, `CompanyName`, `Email`, `Address`, `BankAccName`, `BankAccNum`, `CustomerID`) VALUES
('Bokawkan, Baguio City', '0239123', 'Cachin\'s Parlor Shop', 'ben@noob.noob', 'Bokawkan, Baguio City', 'Suka Blyat', '5555555', 3);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
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

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TID`, `CustomerID`, `CarID`, `Status`, `Duration`, `ReturnPoint`, `TotalPrice`, `SPID`) VALUES
(1, 2, 2, 'Success', '24 Hours', 'Bokawkan', 15000, 3),
(2, 1, 1, 'Pending', '12 Hours', 'Centermall', 5000, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
