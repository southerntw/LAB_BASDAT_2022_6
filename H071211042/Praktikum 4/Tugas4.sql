#no1
USE classicmodels
SELECT o.orderDate, od.productCode, p.productName
FROM orders o 
INNER JOIN orderdetails od
ON od.orderNumber = o.orderNumber
INNER JOIN products p
ON od.productCode = p.productCode
WHERE productName = '1940 Ford Pickup Truck'
ORDER BY orderDate DESC;

#no2
SELECT products.productName, orderdetails.priceEach, (0.8 * products.MSRP) AS "80% MSRP"
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
WHERE orderdetails.priceEach<0.8* products.MSRP;

#no3
SELECT ss_pembimbing.id_mahasiswa, ss_dosen.nama, ss_mahasiswa.nama
FROM ss_pembimbing
JOIN ss_mahasiswa
ON ss_pembimbing.id_mahasiswa = ss_mahasiswa.id_mahasiswa
JOIN ss_dosen
ON ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
WHERE ss_mahasiswa.nama = 'Sulaeman'

#no4
USE classicmodels
ALTER TABLE `customers`
ADD `status`VARCHAR(50);

SELECT od.orderNumber, od.quantityOrdered, o.customerNumber,pa.amount, c.`status`, c.customerName
FROM orderdetails AS od
JOIN orders AS o
ON od.orderNumber = o.orderNumber
JOIN payments AS pa
ON o.customerNumber = pa.customerNumber
JOIN customers AS c
ON pa.customerNumber = c.customerNumber
WHERE od.quantityOrdered > 50 OR pa.amount > 100000
-- 
UPDATE orderdetails 
JOIN orders ON orderdetails.orderNumber = orders.orderNumber
JOIN payments ON orders.customerNumber = payments.customerNumber
JOIN customers ON payments.customerNumber = customers.customerNumber
SET customers.`status` = 'VIP'
WHERE quantityOrdered >= 50 OR amount > 100000

UPDATE customers
SET STATUS = 'Regular'
WHERE STATUS != 'VIP' OR STATUS IS NULL

#no5
USE classicmodels
SELECT customers.customerNumber, orders.status
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
FROM information_schema.key_column_usage
WHERE TABLE_NAME = 'orders';

ALTER TABLE orders
DROP CONSTRAINT orders_ibfk_1;

SELECT TABLE_NAME, CONSTRAINT_NAME, referenced_column_name, referenced_table_name
FROM information_schema.key_column_usage
WHERE TABLE_NAME = 'payments';

ALTER TABLE payments
DROP CONSTRAINT payments_ibfk_1;

ALTER TABLE orders
ADD constraint orders_ibfk_1
FOREIGN KEY (customerNumber)
REFERENCES customers (customerNumber)
ON DELETE CASCADE ON UPDATE NO ACTION;