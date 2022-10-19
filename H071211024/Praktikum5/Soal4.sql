INSERT INTO orders(orderNumber, `status`, orderDate, requiredDate, customerNumber)
VALUES ('10426', 'In Process', CURRENT_DATE(), CURRENT_DATE() + INTERVAL 1 YEAR, '465')

INSERT INTO orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES ('10426', 'S18_2957', '50', '62.46', '19')

SELECT * FROM orders AS o
JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
WHERE o.orderNumber = '10426'

SELECT * FROM customers
WHERE customerNumber = '465'