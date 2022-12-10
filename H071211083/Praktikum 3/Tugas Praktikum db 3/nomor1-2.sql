USE classicmodels;

-- nomor 1 --
-- INSERT INTO employees VALUES (1000, 'Liska', 'Rombe', 'x100', 'rombeliska@google.com', '1', 1002, 'Sales Rep');
-- INSERT INTO employees VALUES (2000, 'Febi', 'Fiantika', 'x200', 'febibiantika@google.com', '1', 1002, 'Sales Rep');
-- INSERT INTO employees VALUES (3000, 'Ananda', 'Lesmono', 'x100', 'wdanandalesmono@google.com', '1', 1002, 'Sales Rep');
SELECT * FROM employees;
-- DELETE FROM employees WHERE reportsTo='1';
-- 
-- nomor 2 --
SELECT * FROM offices;
-- INSERT INTO offices VALUE ('8','Korsel', '+82467586365', 'kimchiii', 'torutt','Bah','IND','23361', 'eropa');
-- UPDATE employees SET officeCode=8 WHERE jobTitle='Sales Rep' AND officeCode=4;