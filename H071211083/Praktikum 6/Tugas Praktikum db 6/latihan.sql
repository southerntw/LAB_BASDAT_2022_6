USE classicmodels

-- NO1
SELECT c.customerName, SUM(p.amount) AS 'Total_Belanja', c.creditLimit AS 'Batas_Kredit', SUM(p.amount)-c.creditLimit AS 'Selisih'
FROM customers AS c
JOIN payments AS p
ON c.customerNumber = p.customerNumber
GROUP BY c.customerName
HAVING Total_Belanja > c.creditLimit
ORDER BY Selisih DESC

#nomor 2
SELECT CONCAT (CONCAT_WS (' : ', c.customerName, c.contactFirstName), CONCAT_WS('@', c.contactLastName, c.addressLine1)) AS 'Pelanggan',
SUM(od.quantityOrdered) AS 'Jumlah_Orderan'
FROM customers c
JOIN orders
USING (customerNumber)
JOIN orderdetails od
USING (orderNumber)
GROUP BY c.customerName
ORDER BY Jumlah_Orderan DESC
LIMIT 1;

#nomor 3
SELECT CONCAT_WS(' ', MONTHNAME(p.paymentDate), YEAR(p.paymentDate)) AS 'Hari_Pembayaran',COUNT(c.customerName) AS 'Jumlah_Pelanggan', GROUP_CONCAT(c.customerName ORDER BY c.customerName ASC) AS 'List_Pelanggan', SUM(p.amount) AS 'Amount'
FROM customers AS c
JOIN payments AS p
ON c.customerNumber = p.customerNumber
GROUP BY Hari_Pembayaran
HAVING Hari_Pembayaran LIKE 'Feb%'
ORDER BY Amount DESC

#nomor 4
SELECT * FROM payments;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM orderdetails WHERE productCode = 'S12_1108';
SELECT * FROM products WHERE productName LIKE '%Ferrari Enzo';
SELECT * FROM productlines;


SELECT UPPER(pr.productName) AS `Nama Produk`, COUNT(od.orderNumber) AS `Jumlah Diorder`,
GROUP_CONCAT(o.orderDate) AS `Waktu Orderan`, pr.buyPrice AS `Harga Beli`, od.priceEach AS `Harga Jual`,
SUM(od.quantityOrdered) AS `Total Jumlah Orderan`,
CONCAT(od.priceEach*SUM(od.quantityOrdered), ' - ', pr.buyPrice*SUM(od.quantityOrdered), ' = ',
SUM(od.quantityOrdered) * (od.priceEach - pr.buyPrice)) AS `Pendapatan - Modal = Keuntungan`
FROM orders AS o
JOIN orderdetails AS od
orderdetailsUSING (orderNumber)
JOIN customers AS c
USING (customerNumber)
JOIN products AS pr
USING (productCode)
GROUP BY `Harga Jual`
HAVING `Nama Produk` LIKE '%ENZO'
AND SUM(od.quantityOrdered) * (od.priceEach - pr.buyPrice) > 5000
ORDER BY SUM(od.quantityOrdered) * (od.priceEach - pr.buyPrice) DESC
-- SELECT UPPER(pr.productName) AS 'Nama Produk', od.quantityOrdered, o.orderDate, pr.buyPrice, od.priceEach, od.priceEach-pr.buyPrice AS 'Keuntungan'
-- FROM orders AS o
-- JOIN orderdetails AS od
-- ON o.orderNumber = od.orderNumber
-- JOIN products AS pr
-- ON od.productCode = pr.productCode
-- WHERE pr.productName LIKE '%Ferrari Enzo'

#nomor 5
SELECT * FROM offices;
SELECT * FROM employees;
SELECT * FROM customers;

SELECT o.addressLine1, CONCAT(LEFT(o.phone, 9), '* ****') AS 'phone', COUNT(DISTINCT e.employeeNumber) AS 'Jumlah_Karyawan', COUNT(distinct c.customerNumber) AS 'Jumlah_Pelanggan', 
ROUND(AVG(p.amount), 2) AS 'Rata_rata_Penghasilan'
FROM offices AS o
right JOIN employees AS e
ON o.officeCode = e.officeCode
JOIN customers AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN payments AS p
ON c.customerNumber = p.customerNumber
GROUP BY e.officeCode
-- ORDER BY o.phone




