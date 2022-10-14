#nomor 1
USE classicmodels
-- SELECT * FROM products;
-- SELECT * FROM orderdetails;
-- select orders.orderDate from orders inner join orderdetails
-- on orderdetails.orderNumber = orders.orderNumber inner join products
-- on products.productCode = orderdetails.productCode
-- where products.productName = "1940 Ford Pickup Truck"
-- order by orders.orderDate DESC;
-- 
#nomor 2
-- select products.productName, orderdetails.priceEach, products.MSRP from orders inner join orderdetails
-- on orderdetails.orderNumber = orders.orderNumber inner join products
-- on products.productCode = orderdetails.productCode
-- where orderdetails.priceEach < (products.MSRP*80)/100;

#nomor 3
USE appseminar
select ss_dosen.nama, ss_mahasiswa.nama from ss_pembimbing
inner join ss_dosen on ss_dosen.id_dosen = ss_pembimbing.id_pembimbing_utama
inner join ss_mahasiswa on ss_mahasiswa.id_mahasiswa = ss_pembimbing.id_mahasiswa
where ss_mahasiswa.nama = 'Sulaeman';

#nomor 4
USE classicmodels
-- SELECT * FROM customers
-- ALTER TABLE `customers`
-- ADD `status` varchar(50) DEFAULT 'Regular';
-- 
-- UPDATE customers
-- INNER JOIN payments
-- ON customers.customerNumber = payments.customerNumber
-- INNER JOIN orders ON orders.customerNumber = customers.customerNumber
-- INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
-- SET customers.status = 'VIP'
-- WHERE payments.amount >100000 OR orderdetails.quantityOrdered >= 50;

SELECT customers.customerNumber, customers.status, payments.amount, orderdetails.quantityOrdered
FROM customers
JOIN payments
ON customers.customerNumber = payments.customerNumber
JOIN orders
ON orders.customerNumber = customers.customerNumber
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber;


#nomor 5
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

