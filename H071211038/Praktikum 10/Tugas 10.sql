USE classicmodels;

SELECT customerName, CASE 
	WHEN creditLimit-SUM(quantityOrdered*priceEach) > 0 THEN "you are safe"
    WHEN creditLimit-SUM(quantityOrdered*priceEach) < 0 THEN "you are in debt"
    ELSE "you are running out of credits"
END AS `are you safe?`,
creditLimit-SUM(quantityOrdered*priceEach) AS total
FROM customers
JOIN orders
USING (customerNumber)
JOIN orderdetails
USING (orderNumber)
GROUP BY customerName;