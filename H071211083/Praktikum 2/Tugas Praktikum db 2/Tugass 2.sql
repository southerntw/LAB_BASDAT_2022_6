USE classicmodels;

SELECT * FROM offices WHERE city = 'San Francisco'

SELECT * FROM orderdetails WHERE quantityOrdered > 70 ORDER BY quantityOrdered ASC

SELECT distinct productLine FROM products


SELECT customerNumber AS `Nomor Customer`, customerName as `Nama Customer` FROM customers WHERE customerNumber >= 100 and customerNumber <= 150

SELECT * FROM customers WHERE country!="USA" and creditLimit > 0 ORDER BY customerName ASC  LIMIT 10,10;