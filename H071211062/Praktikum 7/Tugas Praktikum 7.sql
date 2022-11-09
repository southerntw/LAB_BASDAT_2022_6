USE classicmodels;
-- nomor 1
SELECT customers.customerName AS "Customer Name", (SELECT MAX(amount) FROM payments 
WHERE customers.customerNumber = payments.customerNumber) AS "Max Payment", (SELECT MIN(amount) FROM payments 
WHERE customers.customerNumber = payments.customerNumber) AS "Min Payment" FROM customers;

-- nomor 2
SELECT GROUP_CONCAT(concat(firstName, " ", lastName) SEPARATOR ",") AS "Daftar Nama", employees.officeCode AS "ID Kantor" FROM employees
GROUP BY officeCode
having count(officecode)=(select max(ecount)
from (select count(officeCode) as ecount from employees GROUP BY officecode )
as e1 );

-- nomor 3
SELECT ProductName,productScale FROM products WHERE productName IN ( SELECT productName from products where productName like "%Ford%"); 

-- nomor 4
select customers.customerName as 'Nama Pelanggan',concat(employees.firstName, " ", employees.lastName) AS 'Nama Karyawan', p1.checkNumber, p1.amount from employees 
join customers
on employees.employeeNumber = customers.salesRepEmployeeNumber
join payments p1
on p1.customerNumber = customers.customerNumber
where amount IN (SELECT MAX(amount) From payments);

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

