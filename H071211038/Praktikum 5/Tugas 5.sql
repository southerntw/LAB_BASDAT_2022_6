USE classicmodels;
-- 1
SELECT c.customerName, o.status, o.comments
FROM orders AS o
JOIN customers AS c
USING (customerNumber)
WHERE o.status LIKE 'On Hold' AND o.comments LIKE '%limit exceeded%';

-- 2
SELECT c.customerName, o.status, o.comments
FROM orders AS o
JOIN customers AS c
USING (customerNumber)
WHERE o.comments LIKE '%DHL%';

-- 3
SELECT c.customerName,  p.productName, o.status, o.shippedDate
FROM orders AS o
JOIN customers AS c
USING (customerNumber)
JOIN orderdetails AS od
USING (orderNumber)
JOIN products AS p
USING (productCode)
WHERE p.productName LIKE '%Ferrari%' ORDER BY o.shippedDate DESC;

-- 4
-- cek customer
SELECT * FROM customers
WHERE customerName LIKE 'Anton%';
-- cek produk
SELECT * FROM products
WHERE productName LIKE '1934 Ford%';

-- tambah pemesanan
INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
VALUE (10426, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 1 YEAR), 'In Process', 465);
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach)
VALUE (10426, 'S18_2957', 50, 62.46);

-- tampilkan pemesanan
SELECT
o.orderNumber, c.customerName, od.quantityOrdered, p.productName,
od.priceEach, p.MSRP, o.orderDate, o.requiredDate, o.status
FROM orders as o
JOIN orderdetails AS od
USING (orderNumber)
JOIN customers AS c
USING (customerNumber)
JOIN products AS p
USING (productCode)
WHERE c.customerName LIKE 'Anton%';