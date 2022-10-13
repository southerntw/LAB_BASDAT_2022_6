SET foreign_key_checks = 0;

DELETE o,p,c 
FROM customers AS c
INNER JOIN orders AS o
ON c.customerNumber = o.customerNumber
INNER JOIN payments AS p
ON c.customerNumber = p.customerNumber
WHERE o.`status`="Cancelled";

SET foreign_key_checks = 1;