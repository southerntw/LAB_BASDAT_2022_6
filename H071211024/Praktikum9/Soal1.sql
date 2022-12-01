SET autocommit = OFF;


START TRANSACTION;

INSERT INTO orders
VALUE (12001, '2004-01-01', '2004-03-01', '2004-02-01', 'Shipped', 'Check on availability', 103),
(12002, '2004-01-02', '2004-03-02', '2004-02-02', 'Shipped', 'Check on availability', 112),
(12003, '2004-01-03', '2004-03-03', '2004-02-03', 'Shipped', 'Check on availability', 114);

INSERT INTO orderdetails
VALUE (12001, 'S18_3140', '12', '136.59', '20'),
(12002, 'S32_2509', '20', '51.95', '20'),
(12003, 'S72_3212', '34', '44.77', '20');

COMMIT;


SELECT * FROM orders;
SELECT * FROM orderdetails;