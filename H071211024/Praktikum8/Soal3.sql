SELECT city FROM(
	(SELECT offices.city, COUNT(employees.firstname) AS hitung 
	FROM employees 
	JOIN offices
	ON employees.officeCode = offices.officeCode
	WHERE employees.firstName LIKE 'L%'
	GROUP BY offices.city
	ORDER BY hitung DESC
	LIMIT 1)
UNION 
	(SELECT customers.city, COUNT(customers.customerName) AS hitung 
	FROM customers
	WHERE customers.customerName LIKE 'L%'
	GROUP BY customers.city
	ORDER BY hitung DESC
	LIMIT 1)) a
ORDER BY hitung DESC
LIMIT 1