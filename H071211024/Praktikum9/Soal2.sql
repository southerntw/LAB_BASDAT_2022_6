SET autocommit = OFF;


BEGIN;

DELETE FROM orderdetails;

DELETE FROM orders;

ROLLBACK;


SELECT * FROM orderdetails;
SELECT * FROM orders;