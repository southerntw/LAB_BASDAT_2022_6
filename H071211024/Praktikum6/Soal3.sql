SELECT DATE_FORMAT(p.paymentDate, '%M %Y') AS paymentDate,
COUNT(c.customerName) AS totalCustomer,
GROUP_CONCAT(c.customerName ORDER BY c.customerName ASC SEPARATOR ',') AS customerList,
SUM(p.amount) AS totalPayment 
FROM payments AS p
INNER JOIN customers AS c
ON p.customerNumber = c.customerNumber
WHERE MONTH(p.paymentDate) = 2
GROUP BY YEAR(p.paymentDate)
ORDER BY SUM(p.amount) DESC