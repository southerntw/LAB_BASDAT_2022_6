SELECT productName, productScale FROM 
(SELECT * FROM products pr WHERE pr.productName LIKE "%FORD%") AS name