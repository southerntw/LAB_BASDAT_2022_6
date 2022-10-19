SELECT p.productName, od.priceEach,(0.8 * p.MSRP) AS "80% MSRP"
FROM products AS p
JOIN orderdetails AS od
ON p.productCode = od.productCode
WHERE od.priceEach<0.8* p.MSRP;