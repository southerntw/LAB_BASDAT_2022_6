USE classicmodels;


select customers.customerName, customers.customerNumber, max(amo) as `pembayaran tertinggi`	, min(amo) as `pembayaran terendah` 
from 
(select customerNumber, amount as amo from payments) as lineamo 
inner join customers
using(customerNumber)
group by customerNumber;


SELECT officeCode,CONCAT(firstName,' ',lastName)
FROM employees 
WHERE officeCode=(SELECT officeCode from (SELECT count(employeeNumber) AS 'no',
o.officeCode FROM offices o INNER JOIN employees e 
ON o.officeCode = e.officeCode
GROUP BY officeCode
ORDER BY count(employeeNumber) desc LIMIT 1)AS a);

SELECT * FROM products WHERE productName IN
(SELECT productName FROM products WHERE productName LIKE '%ford%');

SELECT c.customerName AS 'nama pelanggan',
CONCAT(e.firstName,'',e.lastName)AS 'nama karyawan',
o.orderNumber AS 'nomor pesanan',
SUM(od.quantityOrdered * od.priceEach)AS 'total pembayaran'
FROM 
customers c INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
INNER JOIN orders o ON c.customerNumber = o.customerNumber INNER JOIN orderdetails
od ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber
having SUM(od.quantityOrdered * od.priceEach) =(
SELECT SUM(od.quantityOrdered * od.priceEach)AS `total pembayaran` FROM orderdetails
od group by orderNumber
ORDER BY `total pembayaran` desc limit 1);

SELECT distinct country,LENGTH(country) FROM customers
WHERE LENGTH(country)=(SELECT MAX(LENGTH(country))FROM customers) or
LENGTH(country) =(SELECT MIN(LENGTH(country))FROM customers);


