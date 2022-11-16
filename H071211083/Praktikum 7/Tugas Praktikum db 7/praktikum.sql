USE classicmodels;

#nomor1
SELECT nama, MAX(harga), MIN(harga) FROM 
(SELECT c.customerName nama, p.amount harga FROM customers c 
INNER JOIN payments p 
ON p.customerNumber = c.customerNumber) sq1;

#nomor 2
SELECT employeeNumber AS nomor, CONCAT(firstName, lastname) AS nama, officeCode
FROM employees WHERE officeCode = ((
SELECT MAX(office_Code) AS kode_kantor FROM (
SELECT COUNT(officeCode) AS office_Code FROM employees
GROUP BY employeeNumber) AS count_office))

#nomor3
SELECT * FROM 
(SELECT productName, productScale FROM products WHERE productName LIKE "%ford%") AS sq1 

#nomor4
SELECT CONCAT(emp.lastName, ' ', emp.firstName) AS 'employeeName', 
c.customerName, o.orderNumber, jumlah
FROM (SELECT orderNumber, SUM(quantityOrdered * priceEach) 'jumlah' FROM orderdetails
GROUP BY orderNumber) od
INNER JOIN orders o ON o.orderNumber = od.orderNumber
JOIN customers c ON c.customerNumber = o.customerNumber
JOIN employees emp ON emp.employeeNumber = c.salesRepEmployeeNumber
WHERE jumlah = (SELECT MAX(sq1.jumlah) AS 'maxJumlah' 
FROM (SELECT orderNumber, SUM(quantityOrdered * priceEach) 'jumlah' FROM orderdetails
GROUP BY orderNumber) AS sq1);

#nomor5
SELECT DISTINCT country FROM customers WHERE LENGTH(country) IN (
(SELECT MAX(LENGTH(country)) FROM customers), (SELECT MIN(LENGTH(country)) FROM customers));



