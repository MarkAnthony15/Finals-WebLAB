CREATE TABLE `Customer` (
	`CustomerID` INT NOT NULL AUTO_INCREMENT,
	`FirstName` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`LastName` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`PhoneNumber` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`CustomerEmail` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Address` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Username` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`CustomerID`)
);

CREATE TABLE `ServiceProvider` (
	`SPID` VARCHAR(255) NOT NULL,
	`SPName` VARCHAR(255) NOT NULL,
	`SPEmail` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`SPID`)
);

CREATE TABLE `CarRental` (
	`CarID` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Type` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Model` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`BodyType` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`PlateNumber` VARCHAR(255) NOT NULL AUTO_INCREMENT,
	`Seats` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`CarID`)
);

CREATE TABLE `Transaction` (
	`TransactionID` VARCHAR(255) NOT NULL,
	`CustomerID` VARCHAR(255) NOT NULL,
	`SPID` VARCHAR(255) NOT NULL,
	`CarID` VARCHAR(255) NOT NULL,
	`StartOfRent` VARCHAR(255) NOT NULL,
	`EndOfRent` VARCHAR(255) NOT NULL,
	`Duration` VARCHAR(255) NOT NULL,
	`Price` VARCHAR(255) NOT NULL
);

