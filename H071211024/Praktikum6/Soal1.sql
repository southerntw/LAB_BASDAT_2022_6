SELECT c.customerName, SUM(p.amount) AS totalPayment, c.creditLimit, (SUM(p.amount) - c.creditLimit) AS difference
FROM customers AS c
JOIN payments AS p
ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber
HAVING SUM(p.amount) > c.creditLimit
ORDER BY difference DESC