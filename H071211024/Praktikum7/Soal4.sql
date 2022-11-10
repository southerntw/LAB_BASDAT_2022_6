SELECT CONCAT(e.lastName, ' ', e.firstName) AS 'employeeName', 
c.customerName, o.orderNumber, jumlah
FROM (SELECT orderNumber, SUM(quantityOrdered * priceEach) 'jumlah' FROM orderdetails
GROUP BY orderNumber) od
INNER JOIN orders o ON o.orderNumber = od.orderNumber
JOIN customers c ON c.customerNumber = o.customerNumber
JOIN employees e ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE jumlah = (SELECT MAX(sq1.jumlah) AS 'maxJumlah' 
FROM (SELECT orderNumber, SUM(quantityOrdered * priceEach) 'jumlah' FROM orderdetails
GROUP BY orderNumber) AS sq1); 