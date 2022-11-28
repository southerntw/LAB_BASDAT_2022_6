USE classicmodels;
#no1
SELECT o.orderDate
FROM orderdetails AS od
JOIN orders AS o
USING (orderNumber)
JOIN products AS pr 
USING (productCode)
WHERE pr.productName = '1940 Ford Pickup Truck' ORDER BY o.orderDate DESC;

#no.2
SELECT pr.productName, od.priceEach, pr.MSRP*0.8 AS `MSRP 80%`
FROM orderdetails AS od
JOIN products AS pr 
USING (productCode)
WHERE od.priceEach < 0.8 * pr.MSRP;

USE `appseminar`;
#no.3
SELECT * FROM ss_pembimbing;
SELECT d.nama AS `nama pembimbing utama`, m.nama AS `nama mahasiswa`
FROM ss_pembimbing AS pb
JOIN ss_dosen AS d
ON pb.id_pembimbing_utama = d.id_dosen
JOIN ss_mahasiswa AS m
USING(id_mahasiswa)
WHERE m.nama = 'Sulaeman';

USE classicmodels;
#no4
ALTER TABLE customers
ADD status VARCHAR (20) DEFAULT 'Regular';

UPDATE customers
JOIN orders AS o
USING (customerNumber)
JOIN orderdetails AS od
USING (orderNumber)
JOIN payments AS p
USING (customerNumber)
SET customers.status = 'VIP'
WHERE p.amount > 100000 OR od.quantityOrdered >= 50;

#no 5
ALTER TABLE orders
DROP CONSTRAINT orders_ibfk_1;

ALTER TABLE payments
DROP CONSTRAINT payments_ibfk_1;

DELETE customers
FROM customers
JOIN orders
USING (customerNumber)
JOIN payments
USING (customerNumber)
WHERE orders.status = 'Cancelled';

ALTER TABLE orders
ADD CONSTRAINT orders_ibfk_1
FOREIGN KEY (customerNumber)
REFERENCES customers(customerNumber);

ALTER TABLE payments
ADD CONSTRAINT payments_ibfk_1
FOREIGN KEY (customerNumber)
REFERENCES customers(customerNumber);