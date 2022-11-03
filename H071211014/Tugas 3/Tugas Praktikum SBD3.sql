use classicmodels;

-- no 1 :
select* from offices where city = 'san francisco';

-- no 2 :
select* from orderdetails
	where quantityOrdered > 70
    order by orderLineNumber asc;
    
-- no 3 :
select distinct productLine from products;

-- no 4 :
select customerNumber AS 'Nomor Pelanggan', customerName As 'Nama Pelanggan' from customers
where customerNumber >= 100 and customerNumber <= 150;

-- no 5 :
select*from customers where
	country!= 'USA'
    order by customerName
    limit 10, 9;
	


