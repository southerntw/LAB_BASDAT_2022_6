#no1
USE classicmodels;

SELECT * FROM payments WHERE amount = 
(SELECT amount FROM payments
ORDER BY amount DESC
LIMIT 1)
OR amount = 
(SELECT amount FROM payments
ORDER BY amount ASC LIMIT 1);

#no2 

USE classicmodels;
SELECT * FROM employees WHERE officeCode =
(SELECT officeCode
FROM employees
GROUP BY officeCode
ORDER BY COUNT(*) desc
LIMIT 1
)
;


#no3 
USE classicmodels; 
SELECT productName, productScale FROM products WHERE productName LIKE "%ford%";

-- Nomor 4
SELECT c.customerName, e.firstName, e.lastName, o.orderNumber, SUM(od.priceEach*od.quantityOrdered) AS total_order
FROM employees e
JOIN customers c
ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o
USING (customerNumber)
JOIN orderdetails od
USING (orderNumber)
WHERE o.orderNumber = 
	(SELECT orderNumber FROM orderdetails
	GROUP BY orderNumber
	ORDER BY SUM(quantityOrdered * priceEach) DESC
	LIMIT 1);

-- Nomor 5
SELECT DISTINCT LENGTH(country) AS panjang_karakter, country AS negara
FROM customers
WHERE LENGTH(country) IN
	((SELECT MAX(LENGTH(country)) FROM customers),
	(SELECT MIN(LENGTH(country)) FROM customers))
	ORDER BY negara ASC;