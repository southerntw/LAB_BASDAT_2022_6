USE classicmodels;
#Nmor1
-- INSERT INTO employees
-- VALUES
-- (1800,'Jack','Jock','x102','jackolantern@classicmodelcars.com',2,1621,'Sales Rep'),
-- (1003,'Luis','Rendy','X5393','rendy@classicmodelcars.com',1,1002,'Vice President'),
-- (1500,'Jane','Aliza','x102','janen@classicmodelcars.com',4,1621,'Sales Rep');

#Nomor2
INSERT INTO offices
VALUE
('8','Makassar','+6283658474321','perintis Kemerdekaan 1','perintis','South Sulawesi','Indonesian','90245','APAC');

UPDATE employees
SET officeCode =  8 WHERE officeCode = 4 AND jobTitle = 'Sales Rep';