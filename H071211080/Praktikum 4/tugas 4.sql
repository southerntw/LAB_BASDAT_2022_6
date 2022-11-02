-- no 1-2

use classicmodels;

desc orders;

desc products;

select distinct productName from products;

select o.orderDate from orders o inner join orderdetails as e on o.orderNumber=e.orderNumber
 inner join products as p on e.productCode = p.productCode  where productName = 
 "1940s Ford truck" order by o.orderDate desc;
 desc orderdetails;
 select p.productName,s.priceEach,(0.8 * w.MSRP) as "80% MSRP" from products as p inner join orderdetails as s on
 p.productCode = s.productCode 
 inner join products as w on s.productCode = w.productCode where s.priceEach < 0.8 * w.MSRP;
 
-- no 3
 
use appseminar;
 
select * from products;

show tables;

desc pemimbing;
 

 
 select p.`id_pembimbing_utama` from `ss_pembimbing`as p inner join `ss_mahasiswa`as m on
 p.`id_mahasiswa` = m.`id_mahasiswa` where m.nama = "Sulaeman";

-- no 4 
use classicmodels;

alter table customers add
 `status` varchar(255) default "Regular";
 
 UPDATE customers inner join payments on customers.customerNumber = 
payments.customerNumber
INNER JOIN orders  
ON payments.customerNumber = orders.customerNumber inner join orderdetails on orders.orderNumber
=orderdetails.orderNumber  
SET customers.`status` = "VIP" where
payments.amount >100000 or orderdetails.quantityOrdered>=50;

desc customers;

-- no 5 

use classicmodels;
select COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME,
REFERENCED_TABLE_NAME
from information_schema.KEY_COLUMN_USAGE
where TABLE_NAME = 'orders';

select COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME,
REFERENCED_TABLE_NAME
from information_schema.KEY_COLUMN_USAGE
where TABLE_NAME = 'orders';

select COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME,
REFERENCED_TABLE_NAME
from information_schema.KEY_COLUMN_USAGE
where TABLE_NAME = 'payments';

alter table orders drop constraint orders_ibfk_1;

alter table payments drop constraint payments_ibfk_1;

delete c from customers as c inner join 
orders as o on c.customerNumber = o.customerNumber where o.`status` = "Cancelled";

select * from customers as c inner join 
orders as o on c.customerNumber = o.customerNumber where o.`status` = "Cancelled";