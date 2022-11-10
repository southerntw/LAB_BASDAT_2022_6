USE classicmodels2;
-- 1. Perhatikan database classic models. Buatlah query untuk menampilkan
-- data pembayaran (payment) terkecil dan terbesar untuk masing-masing
-- pengguna dengan menggunakan subquery.
SELECT c.customerName, max_amount, min_amount
FROM (
	SELECT customerNumber, MAX(amount) AS max_amount, MIN(amount) AS min_amount
	FROM payments GROUP BY customerNumber
    ) AS amount
JOIN customers AS c 
USING (customerNumber);
 
-- 2. Buatlah query untuk menampilkan seluruh employee yang bekerja di
-- office dengan employee terbanyak (misalnya office A memiliki paling
-- banyak employee, maka buatkan daftar employee pada office A)
SELECT * FROM employees
WHERE officeCode IN (
	SELECT officeCode FROM employees
	GROUP BY officeCode
	HAVING COUNT(*) IN (
		SELECT MAX(count_emp)
		FROM (
			SELECT COUNT(*) AS count_emp
			FROM employees
			GROUP BY officeCode
        ) AS emp
	)
);

-- 3. Buatlah query yang akan menampilkan seluruh product yang di namanya
-- mengandung kata ‘Ford’ beserta productScale dari product tersebut.
-- Gunakan subquery untuk menampilkannya.
SELECT productName, productScale
FROM (
	SELECT * FROM products
    WHERE productName LIKE '%ford%'
) AS ford;

-- 4. Siapa nama pelanggan, dan nama karyawan serta berapa nomor pesanan
-- dan biaya pesanan untuk pesanan yang paling mahal?
SELECT c.customerName AS `nama pelanggan`, CONCAT(e.firstName, " ", e.lastName) AS `nama karyawan`, 
o.orderNumber AS `nomor pesanan`, SUM(od.priceEach*od.quantityOrdered) AS `biaya pesanan`
FROM customers AS c
JOIN orders AS o USING(customerNumber)
JOIN orderdetails AS od USING(orderNumber)
JOIN employees AS e ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY orderNumber
HAVING `biaya pesanan` = (
    SELECT MAX(`biaya pesanan`)
    FROM (
        SELECT SUM(priceEach*quantityOrdered) AS `biaya pesanan`
        FROM orderdetails
        GROUP BY orderNumber
    ) AS orderTotals
);

-- 5. Tampilkan nama negara dan panjang karater negara, dimana
-- menampilkan dua negara yaitu negara dengan karakter terpanjang dan
-- negara dengan karakter terpendek
SELECT country AS `nama negara`, `panjang karakter`
FROM (
	SELECT DISTINCT country, LENGTH(country) AS `panjang karakter` FROM customers
    ) AS findCountry
WHERE `panjang karakter`  = (
	SELECT MIN(LENGTH(country)) FROM customers
    ) OR
      `panjang karakter`  = (
      SELECT MAX(LENGTH(country)) FROM customers
);