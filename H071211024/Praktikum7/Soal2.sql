SELECT officeCode, CONCAT(firstName,' ',lastName) AS Name
FROM employees
WHERE officeCode = 
	(SELECT officeCode
	FROM employees 
	GROUP BY officeCode
	ORDER BY COUNT(officeCode) DESC
	LIMIT 1)