SELECT CONCAT(c.customerName,' : ',c.contactFirstName,' ',c.contactLastName,'@',c.addressLine1) AS customer, SUM(od.quantityOrdered) AS quantity
FROM customers AS c
JOIN orders AS o
ON c.customerNumber = o.customerNumber
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber
ORDER BY quantity DESC
LIMIT 1