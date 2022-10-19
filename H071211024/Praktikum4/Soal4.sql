ALTER TABLE customers 
ADD status VARCHAR(255) DEFAULT "Regular";

UPDATE customers AS c 
INNER JOIN payments AS p 
ON p.customerNumber = c.customerNumber 
INNER JOIN orders AS o 
ON o.customerNumber = c.customerNumber
INNER JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
SET c.status="VIP"
WHERE p.amount >= 10000 OR od.quantityOrdered >= 50;