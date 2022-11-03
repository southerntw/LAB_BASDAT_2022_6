-- use classicmodels

-- no 1
select c.customerName, o.status
from orders as o
inner join customers as c
on c.customerNumber = o.customerNumber
where o.status like '%n %old';

select* from orders;
select*from customers;

-- no 2
-- select c.customerName, o.status, o.comments
-- from customers as c
-- inner join orders as o
-- on c.customerNumber = o.customerNumber
-- where o.comments like 'C%mer re%ed t%t DHL is used for this sh%ping';
-- 
-- -- no 3
-- select c.customerName, p.productName, o.status, o.shippedDate
-- from customers as c
-- inner join orders as o
-- on c.customerNumber = o.customerNumber
-- inner join products as p
-- inner join orderdetails as od
-- on p.productCode = od.productCode
-- where p.productName like '%ferrari%'
-- order by o.shippedDate desc;
-- 
-- select* from orders;
-- select*from products;
-- 
-- -- no 4 
-- insert into orders (orderNumber, orderDate, requiredDate, shippedDate, `status`, comments, customerNumber)
-- value (001, current_date, date_add(current_date, interval 1 year), '2004-11-13', 'in process', null, 465);
-- 
-- insert into orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
-- value (001, 'S18_2957' ,50, 62.46 ,2);
-- 
-- select cs.customerName, p.productName, o.orderDate, o.requiredDate, o.status, od.quantityOrdered, od.priceEach
-- from customers as cs
-- inner join orders as o
-- on cs.customerNumber = o.customerNumber
-- inner join orderdetails as od
-- on o.orderNumber = od.orderNumber
-- inner join products as p
-- on od.productCode = p.productCode
-- where customerName like '%anton%';
-- 
-- -- select * from products
-- -- where productName like '%Ford V8%';
-- -- select*from orderdetails;
-- -- select*from customers;
-- select*from orders;
-- -- select*from products;
-- 