SELECT o.addressLine1 AS address, 
CONCAT(LEFT(o.phone, 9), '* **') AS phoneNumber, 
COUNT(DISTINCT e.employeeNumber) AS employeeTotal, 
COUNT(DISTINCT c.customerName) AS customerTotal, 
FORMAT(AVG(p.amount),2) AS profitAverage
FROM employees AS e
LEFT JOIN customers AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN payments AS p
ON c.customerNumber = p.customerNumber
JOIN offices AS o
ON o.officeCode = e.officeCode
GROUP BY e.officeCode
ORDER BY o.phone ASC