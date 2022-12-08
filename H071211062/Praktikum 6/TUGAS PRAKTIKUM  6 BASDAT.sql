USE classicmodels;
-- nomor 1
SELECT customers.customerName AS 'Nama Pelanggan',SUM(amount) AS  'Total Belanja', customers.creditLimit AS 'Batas Credit',SUM(amount) - customers.creditLimit AS Selisih
FROM customers 
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
GROUP BY `Nama Pelanggan`
HAVING `Total Belanja` > `Batas Credit`
ORDER BY Selisih DESC;


-- Nomor 2
SELECT concat(Customers.customerName, " : ", customers.contactFirstName," ", customers.contactLastName,"@", customers.addressLine1) AS 'Nama Pelanggan',SUM(quantityOrdered) AS 'Jumlah Orderan' FROM customers
INNER JOIN orders
ON  customers.customerNumber = orders.customerNumber
INNER JOIN orderdetails
ON  orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName
ORDER BY `Jumlah Orderan` DESC LIMIT 1;  

-- Nomor 3
SELECT concat(monthname(PaymentDate),' ',year(PaymentDate)) AS 'Hari Pembayaran', COUNT(customers.customerNumber) AS 'Jumlah Pelanggan', GROUP_concat(Customers.customerName SEPARATOR ",") AS 'List Pelanggan', SUM(Payments.amount) AS 'Jumlah Pembayaran' FROM customers
JOIN Payments
ON  customers.customerNumber = Payments.customerNumber
GROUP BY  `Hari Pembayaran`
HAVING `Hari Pembayaran` LIKE "February%" ORDER BY `Jumlah Pelanggan` DESC;

-- nomor 4
SELECT UPPER(Products.productname) AS 'Nama Produk',COUNT(orderdetails.orderNumber) AS "Jumlah di Order", GROUP_CONCAT(orders.orderDate SEPARATOR",") AS "Waktu Orderan", products.buyPrice AS "Harga Beli"
, orderdetails.priceEach AS "Harga Jual", SUM(orderdetails.quantityOrdered) AS "Total Jumlah Orderan",concat((orderdetails.priceEach*SUM(orderdetails.quantityOrdered))," - ",(products.buyPrice*SUM(orderdetails.quantityOrdered))," = ",(orderdetails.priceEach*SUM(orderdetails.quantityOrdered))-(products.buyPrice*SUM(orderdetails.quantityOrdered))) AS "Pendapatan - Modal = Keuntungan"
FROM products
INNER JOIN orderdetails
ON  products.productCode = orderdetails.productCode
INNER JOIN orders
ON orderdetails.orderNumber = orders.orderNumber
GROUP BY orderdetails.priceEach
HAVING `Nama Produk` = "2001 Ferrari Enzo" AND (orderdetails.priceEach*SUM(orderdetails.quantityOrdered))-(products.buyPrice*SUM(orderdetails.quantityOrdered))> 5000 ORDER BY `Jumlah di Order` desc;


-- nomor 5
SELECT offices.addressLine1 AS Alamat, concat(LEFT(offices.phone,CHAR_LENGTH(offices.phone) - 6),"* ****") AS "Nomor Telp", COUNT(distinct employees.employeeNumber) AS "Jumlah Karyawan", COUNT(distinct customers.customerName) AS "Jumlah Pelanggan", Round(AVG(payments.amount),2) AS "Rata-rata penghasilan" from offices
INNER JOIN employees
on  offices.officeCode =  employees.officeCode 
INNER JOIN Customers
on  employees.employeeNumber = customers.salesRepEmployeeNumber
INNER JOIN payments
on customers.customerNumber = payments.customerNumber
GROUP BY offices.officeCode; 


