-- nomor 1
SELECT customers.customerName AS "Customer Name", 
(SELECT MAX(amount) 
FROM payments 
WHERE customers.customerNumber = payments.customerNumber) AS "Max Payment", 
(SELECT MIN(amount) FROM payments WHERE customers.customerNumber = payments.customerNumber) AS "Min Payment" 
FROM customers;

-- nomor 2
SELECT GROUP_CONCAT(CONCAT(firstName, " ", lastName) SEPARATOR ",") AS "Daftar Nama", employees.officeCode AS "ID Kantor" 
FROM employees
GROUP BY officeCode
HAVING COUNT(officecode)=(SELECT MAX(ecount)
FROM (SELECT COUNT(officeCode) AS ecount FROM employees e2 GROUP BY officecode )
AS e1 );

-- nomor 3
SELECT ProductName,productScale 
FROM products AS p 
WHERE productName IN ( SELECT productName FROM products WHERE productName LIKE "%Ford%"); 

-- nomor 4
SELECT customers.customerName AS 'Nama Pelanggan',
CONCAT(employees.firstName, " ", employees.lastName) AS 'Nama Karyawan', pa.checkNumber, pa.amount 
FROM employees 
JOIN customers
ON employees.employeeNumber = customers.salesRepEmployeeNumber
JOIN payments pa
ON pa.customerNumber = customers.customerNumber
WHERE amount IN (SELECT MAX(amount) FROM payments);

-- nomor 5
SELECT Country,CHAR_LENGTH(Country) AS "Panjang Karakter"
FROM offices
WHERE CHAR_LENGTH(Country) IN (
SELECT MAX(CHAR_LENGTH(Country))
FROM offices
UNION
SELECT MIN(CHAR_LENGTH(Country))
FROM offices
);