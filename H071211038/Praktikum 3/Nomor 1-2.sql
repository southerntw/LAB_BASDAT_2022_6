USE classicmodels;
#1. Tambahkanlah 3 orang employee baru pada tabel employees dalam database Classic Models
#dengan salah satu nama employee merupakan nama anda 
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES (1097, 'Febryan', 'Chindy', 'x1234', 'chindyfebryan@gmail.com', '4', 1056, 'Data Scientist'),
(1098, 'Turner', 'Alex', 'x1005', 'alexturner@gmail.com', '2', 1076, 'Data Engineer'),
(1232, 'Khalimov', 'Ernest', 'x2022', 'ernestkhalimov@gmail.com', '7', 1002, 'Data Analyst');

#2. Dalam database classic models, sebuah kantor baru didirikan untuk para karyawannya (employee).
#Pihak pengelola database ingin memindahkan beberapa karyawan ke kantor baru tersebut.
#Buatlah sebuah query untuk memindahkan karyawan berjabatan Sales Rep dari kantor 4, ke kantor yang baru! 
INSERT INTO offices (officeCode, city, phone, addressLine1, country, postalCode, territory)
VALUE ('8', 'Makassar', '089512345678', 'Jl. A.P. Pettarani No.1', 'Indonesia', '90222', 'Indonesia');

UPDATE employees
SET officeCode = '8'
WHERE officeCode = 4 AND jobTitle = 'Sales Rep';