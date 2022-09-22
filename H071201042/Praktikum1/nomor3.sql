CREATE TABLE `offices` (
	`officeCode` VARCHAR(10) NOT NULL DEFAULT '0',
	`city` VARCHAR(50) NOT NULL DEFAULT '0',
	`phone` VARCHAR(50) NOT NULL DEFAULT '0',
	`addressline1` VARCHAR(50) NOT NULL DEFAULT '0',
	`addressline2` VARCHAR(50),
	`state` VARCHAR(50),
	`country` VARCHAR(50) NOT NULL DEFAULT '0',
	PRIMARY KEY (`officeCode`)
);

DESCRIBE offices;
ALTER TABLE offices MODIFY COLUMN phone int(20);