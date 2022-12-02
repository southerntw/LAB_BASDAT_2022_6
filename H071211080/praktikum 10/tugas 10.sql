USE classicmodels;

SELECT customers.customerName,
       (customers.creditLimit - sum(orderdetails.quantityOrdered * orderdetails.priceEach)) as 'total',
CASE 
WHEN  (customers.creditLimit - sum(orderdetails.quantityOrdered * orderdetails.priceEach)) > 0 THEN "you are safe"
WHEN  (customers.creditLimit - sum(orderdetails.quantityOrdered * orderdetails.priceEach)) < 0 THEN "you are in debt"
WHEN  (customers.creditLimit - sum(orderdetails.quantityOrdered * orderdetails.priceEach)) = 0 THEN  "you are running out of credits"
END 
AS "are you safe?"
FROM customers
join orders using (customerNumber)
join orderdetails on orderdetails.orderNumber = orders.orderNumber
group by customers.customerNumber;