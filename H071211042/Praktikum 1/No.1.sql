CREATE DATABASE tugas;
USE tugas;
CREATE TABLE offices (
officeCode varchar(10) not null,
city varchar(50) not null,
phone varchar(50) not null,
addressline1 varchar(50) not null,
addressline2 varchar(50),
state varchar(50),
country varchar(50) not null,
primary key (officeCode)
);