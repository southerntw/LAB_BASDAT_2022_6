USE classicmodels

#nomor 1
SELECT customers.customerName, customers.creditLimit, orders.status, payments.amount, orders.comments
FROM customers INNER JOIN orders
ON customers.customerNumber = orders.customerNumber
INNER JOIN payments ON orders.customerNumber = payments.customerNumber
WHERE orders.status = 'On Hold' AND orders.comments LIKE '%credit limit exceeded%';

#nomor 2
SELECT customers.customerName, orders.status, orders.comments FROM customers INNER JOIN orders 
ON customers.customerNumber = orders.customerNumber WHERE orders.comments LIKE '%DHL%';

#nomor 3
SELECT customers.customerName, products.productName, orders.`status`, orders.orderDate
FROM customers INNER JOIN orders ON customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN products ON orderdetails.productCode = products.productCode
WHERE products.productName LIKE '%FERRARI%' ORDER BY orders.orderDate DESC;

#nomor 4
USE classicmodels
SELECT * FROM customers WHERE customerName LIKE '%Anton Designs%';
SELECT * FROM orders
INSERT INTO orders ( orderNumber, orderDate, requiredDate, `STATUS`, customerNumber)
VALUES (10426, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 1 YEAR), 'In Process', 465);


SELECT * FROM products WHERE productName =  '1934 Ford V8 Coupe';
SELECT * FROM orderdetails
SELECT * FROM products
INSERT INTO orderdetails VALUES (10426, 'S18_2957', 50, 62.46, 1);
