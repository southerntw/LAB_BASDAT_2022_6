USE classicmodels;
-- Nomor 1
SELECT * FROM ORDERS;
SELECT * FROM orderdetails;
SELECT * FROM CUSTOMERS;
SELECT customers.customerName AS 'Nama Pelanggan',SUM(quantityOrdered*priceEach) AS  'Total Belanja', customers.creditLimit AS 'Batas Credit',SUM(quantityOrdered*priceEach) - customers.creditLimit AS Selisih FROM customers
INNER JOIN orders
ON  customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON  orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName
ORDER BY Selisih DESC;

-- Nomor 2
SELECT concat(Customers.customerName, " : ", customers.contactFirstName," ", customers.contactLastName,"@", customers.addressLine1) AS 'Nama Pelanggan',
SUM(quantityOrdered) AS 'Jumlah Orderan' FROM customers
INNER JOIN orders
ON  customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON  orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName
ORDER BY SUM(quantityOrdered) desc LIMIT 1;

-- Nomor 3
SELECT concat(monthname(PaymentDate),' ',year(PaymentDate)) AS 'Hari Pembayaran', 
COUNT(customers.customerNumber) AS 'Jumlah Pelanggan', GROUP_concat(Customers.customerName SEPARATOR ",") AS 'List Pelanggan', 
SUM(Payments.amount) AS 'Jumlah Pembayaran' FROM customers
JOIN Payments
ON  customers.customerNumber = Payments.customerNumber
GROUP BY  `Hari Pembayaran`
HAVING `Hari Pembayaran` LIKE "February%" ORDER BY `Jumlah Pembayaran` DESC;

-- Nomor 4
SELECT UPPER(pr.productName) AS 'Nama Produk',
COUNT(od.priceEach) AS 'Jumlah di Order',
GROUP_CONCAT(o.orderDate SEPARATOR ',') AS 'Waktu Orderan', 
od.priceEach AS 'Harga Jual', 
pr.buyPrice AS 'Harga Beli', 
SUM(od.quantityOrdered) AS 'Total Jumlah Orderan',
CONCAT((od.priceEach * SUM(od.quantityOrdered)), ' - ' ,(pr.buyPrice * SUM(od.quantityOrdered))  , ' = ', ((od.priceEach * SUM(od.quantityOrdered))-(pr.buyPrice * SUM(od.quantityOrdered)))) AS 'Pendapatan - Modal = Keuntungan'
FROM orders AS o
INNER JOIN orderdetails AS od
ON o.orderNumber = od.orderNumber
INNER JOIN products AS pr
ON pr.productCode = od.productCode
WHERE pr.productName LIKE '%Ferrari Enzo%'
GROUP BY od.priceEach
HAVING ((od.priceEach * SUM(od.quantityOrdered)) - (pr.buyPrice * SUM(od.quantityOrdered))) > 5000
ORDER BY ((od.priceEach * SUM(od.quantityOrdered)) - (pr.buyPrice * SUM(od.quantityOrdered))) DESC;


-- Nomor 5
SELECT offices.addressLine1 AS Alamat, concat(SUBSTRING(offices.phone,1,CHAR_LENGTH(offices.phone) - 6),"* ****") AS "Nomor Telp", 
COUNT(distinct employees.employeeNumber) AS "Jumlah Karyawan", COUNT(distinct customers.customerName) AS "Jumlah Pelanggan", 
Round(AVG(payments.amount),2) AS "Rata-rata penghasilan" from offices
INNER JOIN employees
on  offices.officeCode =  employees.officeCode 
LEFT JOIN Customers
on  employees.employeeNumber = customers.salesRepEmployeeNumber
LEFT JOIN payments
on customers.customerNumber = payments.customerNumber
GROUP BY offices.officeCode
ORDER BY offices.phone
