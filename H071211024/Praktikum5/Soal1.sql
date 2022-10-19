SELECT o.orderNumber, o.`status`, o.shippedDate, od.quantityOrdered
FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
WHERE o.`status` = 'Cancelled' AND o.shippedDate IS NOT NULL