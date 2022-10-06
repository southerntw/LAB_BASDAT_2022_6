-- USE classicmodels;

#No 1
-- INSERT INTO employees
-- VALUES 
-- (999, 'Muh', 'Taufiq', 'x100', 'MuhTaufiq@gmail.com', 7, 1102, 'Gamers'),
-- (1000, 'Muh', 'Raenaldi', 'x100', 'MuhRaenaldi@gmail.com', 7, 1102, 'Gamers'),
-- (1001, 'Muh', 'Rifal', 'x100', 'MuhRifal@gmail.com', 7, 1102, 'Gamers');   

-- SELECT * FROM employees
 
 #No 2
-- INSERT INTO offices
-- VALUES
-- ('8', 'Bandung', '+6282190106701', 'Jl. Telekomunikasi No. 1, Terusan Buahbatu', 'Unevirsitas Telkom', 'Jawa Barat', 'Indonesia', '40257', 'Jawa');
-- 
-- UPDATE employees
-- SET officeCode = 8
-- WHERE officeCode = 4 AND jobTitle = 'Sales Rep';

-- SELECT * FROM employees

#No 3
USE db_praktikum;
-- ALTER TABLE mahasiswa                       
-- ADD no_telp VARCHAR(20) NOT NULL,
-- ADD alamat VARCHAR(100),
-- ADD email VARCHAR(50) NOT NULL,
-- ADD keterangan VARCHAR(20);

-- INSERT INTO mahasiswa (nama, nim, jk, id_mahasiswa, no_telp, email, alamat, keterangan)
-- VALUES
-- ('Muh Taufiqurrahman', 'H071211062', 'L', '11', '083123456789', 'Taufiq@gmail.com', 'Jl. Veteran Selatan', 'Semester 3'),
-- ('Chindy Febrian Erwana P', 'H071211038', 'P','22', '081234567890', 'chindyfebr@gmail.com', 'Jl. Veteran Utara', 'Semester 3'),
-- ('Muh Hudri Perdana Hutba', 'H071211042', 'L','33', '089635761869', 'muhhudry18@gmail.com', 'Jl. Teuku Umar 11', 'Semester 3'),
-- ('Dewa Rescue Virgiawansyah', 'H071211072', 'L', '44', '081987654321', 'DewaRV@gmail.com', 'Jl. BTP', 'Semester 3'),
-- ('Liska Dewi Rombe', 'H071211083', 'P', '55', '088123456789', 'Liska@gmail.com', 'Jl. NTI', 'Semester 3'),
-- ('Attar Musharih Tasrief', 'H071211014', 'L', '66', '087123456789', 'Attar@gmail.com', 'Jl. Urip Sumoharjo', 'Semester 3'),
-- ('Fathur Rachman Alamsyah', 'H071211041', 'L', '77', '083987654321', 'Fathur@gmail.com', 'Jl. BTP Blok D', 'Semester 3'),
-- ('Muhammad Yusran Hardimas Setiawan', 'H071211024', 'L', '88', '089987654321', 'Yusran@gmail.com', 'Jl Hertasning', 'Semester 3'),
-- ('Dirgantry Leonard Nugrah Boro', 'H071211080', 'L', '99', '088987654321', 'Dirgantry@gmail.com', 'Jl. BTP Blok M', 'Semester 3'),
-- ('Anis Abdullah Assyaukani', 'H071211015', 'L', '100', '081987654321', 'Anis@gmail.com', 'Jl. Borong Raya', 'Semester 3'),
-- ('Rendy Luis', 'H071201042', 'L', '111', '082987654321', 'Rendy@gmail.com', 'Jl. Sahabat', 'Semester 3');

-- SELECT * FROM mahasiswa