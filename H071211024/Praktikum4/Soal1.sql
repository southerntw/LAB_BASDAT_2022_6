SELECT o.orderNumber, o.orderDate, p.productName
FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
JOIN products AS p
ON od.productCode = p.productCode
WHERE p.productName="1940 Ford Pickup Truck"
ORDER BY o.orderDate DESC;