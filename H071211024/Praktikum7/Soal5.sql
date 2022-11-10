SELECT DISTINCT country FROM customers WHERE LENGTH(country) IN (
(SELECT MAX(LENGTH(country)) FROM customers), (SELECT MIN(LENGTH(country)) FROM customers));