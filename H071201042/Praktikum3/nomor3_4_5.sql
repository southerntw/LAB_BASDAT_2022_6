use db_praktikum;

ALTER TABLE mahasiswa
ADD no_telp VARCHAR(20) NOT NULL,
ADD alamat VARCHAR(100),
ADD email VARCHAR(50) NOT NULL,
ADD keterangan VARCHAR(20);

#Nomor3
INSERT INTO mahasiswa (nama,id_mahasiswa,nim,jk,no_telp,alamat,email,keterangan)
VALUES
('Rendy Luis','1','H071201042','L','08123456789','Jl. Monumen Emmy Saelan','H071201042@Unhas.ac.id','Semester 5'),
('Muh Hudri Perdana Hutba','2', 'H071211042','L','089635761869','Jl','H071211042@Unhas.ac.id','Semester 3'),
('Dewa Rescue Virgiawansyah','3','H071211072', 'L','081987654321','Jl','H071201042@Unhas.ac.id','Semester 3'),
('Muh Taufiqurrahman','4','H071211062','L','083123456789','Jl','H071211062@Unhas.ac.id','Semester 3'),
('Chindy Febrian Erwana P', '5','H071211038','P','081234567890','Jl','H071211038@Unhas.ac.id','Semester 3'),
('Liska Dewi Rombe','6', 'H071211083','P','088123456789','Jl','H071211083@Unhas.ac.id','Semester 3'),
('Attar Musharih Tasrief','7', 'H071211014','L','087123456789','Jl','H071211014@Unhas.ac.id','Semester 3'),
('Fathur Rachman Alamsyah','8','H071211041', 'L','083987654321','Jl','H071211041@Unhas.ac.id','Semester 3'),
('Muhammad Yusran Hardimas Setiawan','9','H071211024','L','089987654321','Jl','H071211024@Unhas.ac.id','Semester 3'),
('Dirgantry Leonard Nugrah Boro','10','H071211080','L','088987654321','Jl','H071211080@Unhas.ac.id','Semester 3'),
('Anis Abdullah Assyaukani','11','H071211015','L','081987654321','Jl','H071211015@Unhas.ac.id','Semester 3');

#Nomor4
INSERT INTO buku
VALUE 
('IPA',1,'pengarang1',2019),
('MTK',2,'pengarang2',2020),
('FISIKA',3,'pengarang3',2018),
('Sejarah',4,'pengarang4',2019),
('TIK',5,'pengarang5',2021);

INSERT INTO pinjam
VALUE
('2022-9-22 23:59:59',1,1,1,1),
('2022-9-23 23:59:59',2,2,0,2),
('2022-8-24 23:59:59',3,3,1,3),
('2022-9-25 23:59:59',4,4,0,4),
('2022-9-29 23:59:59',5,5,1,5);

#Nomor5
INSERT INTO mahasiswa(nama,id_mahasiswa,nim,jk,no_telp,email,keterangan)
VALUES
('Jack','12','H071231032','L','08253654321','','H071231032@Unhas.ac.id','Semester 1'),
('Aliza','13','H071231043','L','082567894321',NULL,'H071231043@Unhas.ac.id','Semester ');