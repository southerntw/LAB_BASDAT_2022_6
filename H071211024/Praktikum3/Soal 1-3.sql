-- Soal 1
INSERT INTO employees
VALUE (3001,'H S','Muh Yusran','x5467','yusrandimas248@gmail.com','1',1056,'VP Sales'),
(3002,'Jackson','Percy','x3712','percy@gmail.com','1',NULL,'Sales Rep'),
(3003,'Potter','Harry','x1374','youreawizard@gmail.com','2',NULL,'Sales Rep');

-- Soal 2
INSERT INTO offices
VALUE ('8','Sapporo','+81 23 322 2744','2-8-1 Hassamu 3-Jo',NULL,'Hokkaido','Japan','063-0823','Japan')

UPDATE employees
SET officeCode = '8'
WHERE officeCode = '4' AND jobTitle = 'Sales Rep';

-- Soal 3tugaspraktikum1
ALTER TABLE mahasiswa 
   ADD No_telp VARCHAR(20) NOT NULL,
   ADD Alamat VARCHAR(100),
   ADD Email VARCHAR(50) NOT NULL,
   ADD Keterangan VARCHAR(20);

INSERT INTO mahasiswa (nama,nim,jk,No_telp,Alamat,Email,keterangan,id_mahasiswa)
VALUE ('Muh Yusran H S','H071211024',NULL,'0821 8954 4838','Jl. Cendrawasih no. 484','yusrandimas248@gmail.com','3','1'),
('Chindy Febryan Erwana Putri','H071211038',NULL,'0821 3253 5315',NULL,'chindy@gmail.com','3','2'),
('Liska Dewi Rombe','H071211083',NULL,'0821 7844 4622',NULL,'liska@gmail.com','3','3'),
('Muh Taufiqurrahman','H071211062',NULL,'0821 3521 8421',NULL,'taufiq@gmail.com','3','4'),
('Dewa Rescue Virgiawansyah','H071211072',NULL,'0821 9357 2141',NULL,'dewa@gmail.com','3','5'),
('Attar Musharih Tasrief','H071211014',NULL,'0821 6754 7654',NULL,'attar@gmail.com','3','6'),
('Fathur Rachman Alamsyah','H071211041',NULL,'0821 3612 2513',NULL,'fathur@gmail.com','3','7'),
('Muh Hudri Perdana Hutba','H071211042',NULL,'0821 4531 2523',NULL,'hudri@gmail.com','3','8'),
('Dirgantry Leonard Nugrah Boro','H071211080',NULL,'0821 4314 6436',NULL,'dirgan@gmail.com','3','9'),
('Anis Abdullah Assyaukani','H071211015',NULL,'0821 6242 5235',NULL,'anis@gmail.com','3','10'),
('Rendy Luis','H071201042',NULL,'0821 5325 4252',NULL,'rendy@gmail.com','3','11');