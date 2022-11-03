USE classicmodels;

DESC customers;

SELECT * FROM  orderdetails;
-- NO1
SELECT c.customerName AS `nama pelanggan`, 
SUM(p.amount) AS `total belanja`
,c.creditLimit AS `batas kredit`,SUM(p.amount) - c.creditLimit
 AS selisih
 FROM customers AS c INNER JOIN payments AS p
 ON c.customerNumber = p.customerNumber  GROUP BY c.customerName
HAVING `total belanja` > `batas kredit` ORDER BY selisih desc;

-- No2

SELECT CONCAT
(c.customerName,':',c.contactFirstName,'',c.contactLastName,'@',c.addressLine1)
AS pelanggan,
SUM(e.quantityOrdered) as `jumlah orderan`
FROM customers AS c INNER JOIN orders AS o ON c.customerNumber=o.customerNumber
INNER JOIN orderdetails AS e ON o.orderNumber = e.orderNumber
GROUP BY c.customerName
 ORDER BY `jumlah orderan` 
  desc LIMIT 1;
 
 -- No 3
 
 SELECT customerNumber FROM customers;

SELECT 
CONCAT(MONTHNAME(p.paymentdate),' ',YEAR(p.paymentDate)) AS `Hari Pembayaran`,
COUNT(c.customerName) AS `jumlah pelanggan`,
GROUP_CONCAT(c.customerName ORDER BY c.customerName ASC) AS `list pelanggan`,
SUM(p.amount) AS `jumlah pembayaran`
FROM payments AS p INNER JOIN customers AS c ON p.customerNumber =
c.customerNumber 
GROUP BY `Hari Pembayaran`
HAVING `Hari Pembayaran` LIKE 'Feb%'
ORDER BY `jumlah pembayaran` DESC;

-- no4 

SELECT UPPER(p.productName) AS `Nama Produk`,
count(e.customerNumber) AS `jumlah di Order`,
GROUP_CONCAT(e.orderDate) AS `tanggal pemesanan`,
p.buyPrice AS `HargaBeli`,
o.priceEach AS `Harga jual`,
sum(quantityOrdered) AS `Total jumlah Orderan`,
CONCAT((SUM(o.priceEach * o.quantityOrdered)), '-', SUM(o.quantityOrdered * p.buyPrice),
'=',SUM(o.priceEach * o.quantityOrdered) - SUM(o.quantityOrdered * p.buyPrice)) AS 
`pendapatan - modal = keuntungan `
FROM products AS p INNER JOIN orderdetails AS o ON p.productCode = o.productCode
INNER JOIN orders AS e ON o.orderNumber = e.orderNumber
WHERE p.productName LIKE '%ENZO'
GROUP BY `Harga jual` 
HAVING `pendapatan - modal = keuntungan ` > 5000
ORDER BY SUM(o.priceEach * o.quantityOrdered) - SUM(o.quantityOrdered * p.buyPrice) desc 
;
 
 -- no 5
 
 SELECT o.addressLine1 AS Alamat,CONCAT(LEFT(o.phone,9),'','*',' ','****') AS `No Telp`,
 COUNT(distinct(e.firstName))AS `Jumlah Karyawan`,
 COUNT(distinct(c.customerNumber)) AS `Jumlah pelanggan`,
 ROUND(AVG(p.amount),2)
  FROM offices AS o INNER JOIN employees AS e
 ON o.officeCode = e.officeCode INNER JOIN customers AS c
 ON e.employeeNumber = c.salesRepEmployeeNumber INNER JOIN payments AS p
 ON c.customerNumber = p.customerNumber
 GROUP BY o.addressLine1
 ORDER BY CONCAT(LEFT(o.phone,9),'','*',' ','****');
 
 
SELECT salesRepEmployeeNumber FROM customers;
