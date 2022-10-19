SELECT c.customerName, o.`status`, o.comments
FROM orders AS o
JOIN customers AS c
ON o.customerNumber = c.customerNumber
WHERE o.comments LIKE '%DHL%'