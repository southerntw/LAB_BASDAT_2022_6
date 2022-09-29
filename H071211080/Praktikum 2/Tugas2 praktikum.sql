select * from offices where city = "San Francisco";

select * from orderdetails where quantityOrdered > 70 order by orderLineNumber;

select distinct productlines from products;

select customerNumber as 'nomor kostumer',customerName as 'nama kostumer' from customers where customerNumber >= 100 && customerNumber <=150;

select * from customers where country != "USA" order by customerName limit 10,19;