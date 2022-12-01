SELECT c.customerName, 
CASE
	WHEN c.creditLimit-SUM(od.quantityOrdered * od.priceEach)>'0' then 'You are safe'
	WHEN c.creditLimit-SUM(od.quantityOrdered * od.priceEach)<'0' then 'You are in debt'
	ELSE 'You are running out of credits'
END AS 'Are you safe?',
c.creditLimit-SUM(od.quantityOrdered * od.priceEach) AS 'total'
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o.customerNumber
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber