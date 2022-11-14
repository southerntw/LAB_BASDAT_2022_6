-- nomor 1
SELECT customers.customerName AS "Customer Name",
(SELECT MAX(amount) FROM payments WHERE customers.customerNumber = payments.customerNumber) AS "Max Payment", 
(SELECT MIN(amount) FROM payments WHERE customers.customerNumber = payments.customerNumber) AS "Min Payment" FROM customers HAVING `Max Payment` IS NOT NULL;

-- nomor 2
SELECT concat(firstName, " ", lastName)  AS "Daftar Nama", employees.officeCode AS "ID Kantor" FROM employees
WHERE officecode = (select officecode FROM employees GROUP BY officeCode order by count(officeCode) desc limit 1);


-- nomor 3
SELECT ProductName,productScale FROM products p1 WHERE productName IN ( SELECT productName from products where productName like "%Ford%"); -- AND productline =p1.productLine

-- nomor 4
select customers.customerName as 'Nama Pelanggan',concat(employees.firstName, " ", employees.lastName) AS 'Nama Karyawan', orders.orderNumber,SUM(od.priceEach*od.quantityOrdered) as 'Total Order' from employees 
join customers
on employees.employeeNumber = customers.salesRepEmployeeNumber
join orders
on  customers.customerNumber = orders.customerNumber
join orderdetails od
on orders.orderNumber = od.orderNumber
GROUP BY od.orderNumber
HAVING SUM(od.priceEach*od.quantityOrdered) = 
(SELECT max(`Total Order`) FROM (SELECT SUM(orderdetails.priceEach*orderdetails.quantityOrdered) AS "Total Order" from orderdetails GROUP BY orderNumber) as a);



-- nomor 5
SELECT DISTINCT Country,CHAR_LENGTH(Country) AS "Panjang Karakter"
FROM customers
GROUP BY country
HAVING CHAR_LENGTH(Country) =(SELECT MAX(CHAR_LENGTH(Country)) FROM customers) 
OR  CHAR_LENGTH(Country) =(SELECT MIN(CHAR_LENGTH(Country)) FROM customers) 
ORDER BY `Panjang karakter` DESC;
  
  
  







