SELECT UPPER(pr.productName) AS productName,
COUNT(od.priceEach) AS orderTotal,
GROUP_CONCAT(o.orderDate SEPARATOR ', ') AS orderTime, 
od.priceEach AS sellPrice, 
pr.buyPrice AS buyPrice, 
SUM(od.quantityOrdered) AS totalSumOrder,
CONCAT((od.priceEach * SUM(od.quantityOrdered)), ' - ' ,(pr.buyPrice * SUM(od.quantityOrdered))  , ' = ', ((od.priceEach * SUM(od.quantityOrdered))-(pr.buyPrice * SUM(od.quantityOrdered)))) AS profit
FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
JOIN products AS pr
ON pr.productCode = od.productCode
WHERE pr.productName LIKE '%Ferrari Enzo%'
GROUP BY od.priceEach
HAVING ((od.priceEach * SUM(od.quantityOrdered)) - (pr.buyPrice * SUM(od.quantityOrdered))) > 5000
ORDER BY ((od.priceEach * SUM(od.quantityOrdered)) - (pr.buyPrice * SUM(od.quantityOrdered))) DESC