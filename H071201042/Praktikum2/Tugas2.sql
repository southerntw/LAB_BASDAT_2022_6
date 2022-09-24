/*Nomor 1*/
SELECT*FROM offices 
WHERE city='San Francisco';

/*Nomor 2*/
SELECT*FROM orderdetails
WHERE quantityOrdered>70 
ORDER BY quantityOrdered ASC;

/*Nomor 3*/
SELECT DISTINCT productLine 
FROM products;

/*Nomor 4*/
SELECT customerNumber,customerName 
FROM customers 
WHERE customerNumber 
BETWEEN 103 AND 150;

/*Nomor 5*/
SELECT*FROM customers 
WHERE NOT country='USA' AND NOT creditLimit=0 
ORDER BY customerName ASC LIMIT 10,19;