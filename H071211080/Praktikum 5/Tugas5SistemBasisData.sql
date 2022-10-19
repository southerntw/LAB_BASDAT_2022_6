-- SELECT customers.customerName, orders.`status`, orders.comments
-- FROM customers
-- INNER JOIN orders
-- ON customers.customerNumber = orders.customerNumber
-- WHERE orders.`status` = "On Hold" && orders.comments LIKE "C%";
-- 
-- SELECT c.customerName, o.`status`,o.comments FROM customers AS c inner jOIN orders AS o
-- ON c.customerNumber = o.customerNumber WHERE o.comments LIKE "%DHL%";
-- 
-- DESC customers;

-- SELECT DISTINCT productName FROM products AS p WHERE p.productName LIKE "%Ferrari%";
-- 
-- 
-- SELECT c.customerName,p.productName,o.`status`,o.orderDate FROM customers AS c INNER JOIN orders AS o ON c.customerNumber = o.customerNumber
-- INNER JOIN orderdetails AS e ON o.orderNumber = e.orderNumber INNER JOIN products AS p ON e.productCode
-- =p.productCode  WHERE p.productName LIKE "%Ferrari%" order BY o.orderDate;

USE classicmodels;

DESC orders;

insert into orders (orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber)
select 11111, date(now()), date_add(date(now()), interval 1 year), date(now()), 
'In Process', 'Buy A car', customers.customerNumber
from customers
where customerName like 'anton%';

SELECT * from orders;

insert into orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
select 11111, products.productCode, 50, products.MSRP, 1
from products
where products.productName = '1934 Ford V8 Coupe';




