SELECT c.customerName, pr.productName, p.paymentDate, o.`status`
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o.customerNumber
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
JOIN products AS pr
ON od.productCode = pr.productCode
JOIN payments AS p
ON c.customerNumber = p.customerNumber
WHERE pr.productName LIKE '%FERRARI%' AND STATUS = 'Shipped'