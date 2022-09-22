CREATE DATABASE nomor1;

USE nomor1;

CREATE TABLE offices(
officeCode VARCHAR (10) NOT NULL,
city VARCHAR (50) NOT NULL,
phone VARCHAR (50) NOT NULL,
addressline1 VARCHAR (50) NOT NULL,
addressline2 VARCHAR (50),
state VARCHAR (50),
country VARCHAR (50) NOT NULL,
PRIMARY KEY (officeCode)
)