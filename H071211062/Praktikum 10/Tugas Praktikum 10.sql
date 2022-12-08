SELECT customers.customerName,CASE 
WHEN (customers.creditLimit-SUM(orderdetails.quantityOrdered*orderdetails.priceEach)) > 0 THEN 'You are Safe'
WHEN (customers.creditLimit-SUM(orderdetails.quantityOrdered*orderdetails.priceEach)) < 0 THEN 'You are in Debt'
ELSE 'You are running out of credits' END
AS 'Are You Safe?',(customers.creditLimit-SUM(orderdetails.quantityOrdered*orderdetails.priceEach)) AS Total FROM customers
JOIN orders 
USING (CustomerNumber)
JOIN orderdetails
USING (OrderNumber)
GROUP BY customers.customerName
ORDER BY customerNumber;



