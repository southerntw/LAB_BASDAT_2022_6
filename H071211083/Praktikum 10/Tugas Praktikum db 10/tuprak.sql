USE classicmodels
SELECT * FROM products
SELECT * FROM customers

SELECT c.customerName, (c.creditLimit - SUM(od.quantityOrdered * od.priceEach)) AS 'total', case
when  (c.creditLimit - SUM(od.quantityOrdered * od.priceEach)) > 0 then "you are safe"
when (c.creditLimit - SUM(od.quantityOrdered * od.priceEach)) < 0 then "you are in debt"
when (c.creditLimit - SUM(od.quantityOrdered * od.priceEach)) = 0 then "you are running out of credits "
END AS `Are you safe?`
FROM customers c JOIN orders o USING(customerNumber)
JOIN orderdetails od GROUP BY customerName;

