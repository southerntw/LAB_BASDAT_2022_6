-- Nomor 1
-- 
-- USE classicmodels 
-- SELECT o.ordersDate, od.productCode, p.productName 
-- FROM orders o 
-- INNER JOIN orderdetails od 
-- ON od.orderNumber = o.orderNumber 
-- INNER JOIN products p
-- ON od.productCode = p.productCode 
-- WHERE p.productName  = '1940 Ford Pickup Truck'
-- ORDER BY o.orderDate DESC; 
   
-- Nomor 2
-- SELECT products.productName, products.productCode, orderdetails.priceEach,80/100*products.MSRP FROM products 
-- INNER JOIN orderdetails 
-- ON products.productCode = orderdetails.productCode
-- WHERE orderdetails.priceEach < 80/100*(products.MSRP);
-- -- 
Nomor 3
CREATE DATABASE appseminar;

USE appseminar 
SELECT ss_dosen.nama, ss_mahasiswa.nama FROM ss_pembimbing 
INNER JOIN ss_dosen ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama 
INNER JOIN ss_mahasiswa ON ss_mahasiswa.id_mahasiswa = ss_pembimbing.id_mahasiswa
WHERE is_mahasiswa.nama = 'Sulaeman';

Nomor 4 
SELECT ORDER 
FROM orderdetails AS od 
JOIN ORDER AS o 
ON od.orderNumber = o.orderNumber 
JOIN payments AS pa 
ON o.customerNumber = pa.customerNumber 
JOIN customer AS c 
ON pa.customerNumber = c.customerNumber 
WHERE od.quantityOrdered > 50 OR pa.amount >10000

UPDATE orderdetails 
JOIN ORDER ON orderdetails.orderNumber = orders.orderNumber 
JOIN payments ON orders.customerNumber = payment.customerNumber
JOIN customers ON payments.customerNumber = customer.customerNumber
SET customers.`'status'` = 'VIP'
WHERE quantityOrdered >= 50 OR amount >100000

UPDATE customers 
SET STATUS = 'Regular'
WHERE STATUS = 'VIP' OR STATUS IS NULL 
-- 
-- Nomor 5
-- 
-- 
USE classicmodels 
SELECT customer.customerNumber, orders.status 
FROM customers 
JOIN orders 
ON customers.customerNumber = orders.customerNumber
WHERE orders.status = 'cancelled';

DELETE customers 
FROM customers 
JOIN orders 
ON customers.customerNumber = orders.customerNumber
WHERE orders.status = 'cancelled';

SELECT TABLE_NAME, CONSTRAINT_NAME, referenced_column_name, referenced_table_name 
FROM information_schema.jey_column_usage 
WHERE TABLE_NAME = 'payments';

ALTER TABLE payments 
DROP constant payments_ibfk_1; 