-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 10:58 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carget_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CarID` int(255) NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Rate` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` longblob NOT NULL,
  `Name` varchar(255) NOT NULL,
  `penalty` varchar(255) NOT NULL,
  `transmission` enum('Manual','Automatic') NOT NULL DEFAULT 'Manual',
  `contact` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `customer` (
  `CustomerID` int(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Age` int(255) DEFAULT NULL,
  `ConfirmPassword` varchar(45) DEFAULT NULL,
  `Role` enum('Customer','Service Provider','Administrator') NOT NULL DEFAULT 'Customer'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Gender`, `Email`, `PhoneNumber`, `Password`, `Age`, `ConfirmPassword`, `Role`) VALUES
(1, 'Arnel', 'Agusdan', 'Male', 'arnel@somewhere.ru', '0934780293', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Administrator'),
(2, 'Mark Anthony', 'Bambico', 'Female', 'mark@russian.ru', '23124124', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Customer'),
(3, 'Justine Ray', 'Dungan', 'Female', 'dungan@rusky.ru', '0999999999', '4297f44b13955235245b2497399d7a93', 19, NULL, 'Service Provider'),
(4, 'Tony', 'Stark', 'Male', 'ironman@stark.com', '123', '$2y$10$v8XulxuigDmD3R0Mu.BZDeNC0rh/qmta2h4fjeGPOnAAd/sEh/mbK', 35, NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `CompanyName` varchar(255) NOT NULL,
  `Entity` varchar(255) NOT NULL,
  `BasedIn` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `BankAccName` varchar(255) NOT NULL,
  `BankAccNum` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`CompanyName`, `Entity`, `BasedIn`, `PhoneNumber`, `Email`, `Address`, `BankAccName`, `BankAccNum`, `Password`) VALUES
('Cachin\'s Parlor Shop', '', 'Bokawkan, Baguio City', '0239123', 'ben@noob.noob', 'Bokawkan, Baguio City', 'Suka Blyat', '5555555', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TID` int(255) NOT NULL,
  `CustomerID` int(255) NOT NULL,
  `CarID` int(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `ReturnPoint` varchar(255) NOT NULL,
  `TotalPrice` int(11) DEFAULT NULL,
  `SPID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TID`, `CustomerID`, `CarID`, `Status`, `Duration`, `ReturnPoint`, `TotalPrice`, `SPID`) VALUES
(1, 2, 2, 'Success', '24 Hours', 'Bokawkan', 15000, 3),
(2, 1, 1, 'Pending', '12 Hours', 'Centermall', 5000, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CarID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`CompanyName`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TID`),
  ADD KEY `Transaction_fk1` (`CustomerID`),
  ADD KEY `Transaction_fk2` (`CarID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CarID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
