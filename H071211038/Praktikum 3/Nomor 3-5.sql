USE db_praktikum;

ALTER TABLE mahasiswa
ADD(no_telp VARCHAR(20) NOT NULL,
alamat VARCHAR(100),
email VARCHAR(50)NOT NULL,
keterangan VARCHAR(20));

#3. Tambahkan data pada tabel mahasiswa dengan data nya adalah semua nama praktikan pada
#gb asistensi anda (Baris yang pertama merupakan nama anda) dengan menggunakan perintah insert disertai nama kolomnya
INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, no_telp, email, alamat, keterangan)
VALUES (1, 'Chindy Febryan Erwana Putri', 'H071211038', 'P', '0895806649209', 'chindyfebryan@gmail.com', 'Btn Minasa Upa Blok F17', 'Semester 3'),
(2, 'Liska Dewi Rombe', 'H071211083', 'P', '085295241127', 'liskadewirombe@gmail.com', 'Jl. Biring Romang Lr 2', 'Semester 3'),
(3, 'Muh. Taufiqurrahman', 'H071211062', 'L', '082190106701', 'taufiqurrahman@gmail.com', 'Jl. Tupai', 'Semester 3'),
(4, 'Dewa Rescue Virgiawansyah', 'H071211072', 'L', '081343087915', 'dewarescue@gmail.com', 'Jl. Perintis Kemerdekaan', 'Semester 3'),
(5, 'Attar Musharih Tasrief', 'H071211014', 'L', '085256261672', 'attarmusharih@gmail.com', 'Perdos Unhas Tamalanrea', 'Semester 3'),
(6, 'Fathur Rachman Alamsyah', 'H071211041', 'L', '082347864893', 'fathurrachman@gmail.com', 'Jl. Keruk Timur 20', 'Semester 3'),
(7, 'Muh Hudri Perdana Hutba', 'H071211042', 'L', '085156428526', 'muhhudri@gmail.com', 'Jl. Teuku Umar 11', 'Semester 3'),
(8, 'Muhammad Yusran Hardimas', 'H071211024', 'L', '082189544838', 'yusranhardimas@gmail.com', 'Jl. Cendrawasih', 'Semester 3'),
(9, 'Dirgantry Leonard Nugrah Boro', 'H071211080', 'L', '0895384959718', 'dirgantryleonard@gmail.com', 'Jl. Katimbang Sipala', 'Semester 3'),
(10, 'Anis Abdullah Assyaukani', 'H071211015', 'L', '082188644460', 'anisabdullah@gmail.com', 'Jl. Sahabat', 'Semester 3'),
(11, 'Rendy Luis', 'H071201042', 'L', '085298313321', 'rendyluis@gmail.com', 'Jl. Sesama', 'Semester 5');

#4. Tambahkan 5 data pada tabel buku dan tabel pinjam dengan perintah insert tanpa disertai nama kolomnya 
INSERT INTO buku
VALUES (1, 'Don Quixote', 1605, 'Miguel de Cervantes'), (2, 'A Tale of Two Cities', 1859, 'Charles Dickens'),
(3, 'The Lord of the Rings', 1954, 'J.R.R. Tolkien'), (4, 'The Little Prince', 1943, 'Antoine de Saint-Exupery'),
(5, 'Harry Potter and the Sorcerer''s Stone', 1997, 'J.K. Rowling');

INSERT INTO pinjam
VALUES (1, '22-06-12 10:34:09', 2, 3, 1), (2, '22-07-01 12:00:39', 3, 5, 1),
(3, '22-09-10 09:14:17', 7, 1, 0), (4, '22-09-22 13:23:01', 4, 4, 0), (5, '22-10-02 15:03:54', 8, 2, 1);

#5. Tambahkan 2 data baru pada tabel mahasiswa dengan data pertama terdapat blank pada salah satu kolom 
#dan data kedua terdapat nilai null pada salah satu kolomnya
#nim blank
INSERT INTO mahasiswa (id_mahasiswa, nama, jk, no_telp, email, alamat, keterangan)
VALUE (12, 'Joe Biden', 'L', '130387654', 'joebiden@gmail.com', 'Jl. Urip Sumoharjo', 'Semester 7');

#alamat null
INSERT INTO mahasiswa (id_mahasiswa, nama, nim, jk, no_telp, email, keterangan)
VALUE (13, 'Donald Trump', 'H071211666', 'L', '13032345678', 'donaldtrump@gmail.com', 'Semester 6');