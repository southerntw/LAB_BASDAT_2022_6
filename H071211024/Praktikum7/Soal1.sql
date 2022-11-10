SELECT customerName, 
(SELECT MAX(amount) FROM payments WHERE customers.customerNumber = payments.customerNumber) AS maxPayment,
(SELECT MIN(amount) FROM payments WHERE customers.customerNumber = payments.customerNumber) AS minPayment
FROM customers