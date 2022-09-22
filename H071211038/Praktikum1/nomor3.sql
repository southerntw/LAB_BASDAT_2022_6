CREATE DATABASE nomor3;

USE nomor3;

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

ALTER TABLE offices
MODIFY phone INT (20) NOT NULL;