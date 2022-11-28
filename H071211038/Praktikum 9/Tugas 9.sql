USE classicmodels;

SET autocommit = 0;

#1
BEGIN;
INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
VALUES (10427, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 7 DAY), 'In Process', 487),
(10428, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 5 DAY), 'In Process', 489),
(10429, CURRENT_DATE, ADDDATE(CURRENT_DATE, INTERVAL 6 DAY), 'In Process', 495);

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (10427, 'S10_1949', 15, 214.30, 1), (10428, 'S18_1342', 30, 102.70, 1),
(10429, 'S10_1678', 25, 95.70, 1);
COMMIT;

#2
BEGIN;
DELETE FROM orderdetails;
ROLLBACK;