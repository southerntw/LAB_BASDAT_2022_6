create database tugaspraksbd1;
use tugaspraksbd1;

 create table offices(
 officeCode varchar (10) NOT NULL,
 city varchar (50) NOT NULL,
 phone varchar (50) NOT NULL,
 addresline1 varchar (50) NOT NULL, 
 addresline2 varchar (50),
 state varchar (50), 
 country varchar(50) NOT NULL,
 primary key (officeCode)
 );
desc offices;

 alter table offices
 modify phone int (20) NOT NULL;
 desc offices;

 alter table offices
 drop addresline2;
desc offices;





