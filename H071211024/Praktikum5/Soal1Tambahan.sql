SELECT c.customerName, o.`status`, o.comments
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o.customerNumber
WHERE o.`status` LIKE 'On Hold' AND o.comments LIKE '%credit limit%'