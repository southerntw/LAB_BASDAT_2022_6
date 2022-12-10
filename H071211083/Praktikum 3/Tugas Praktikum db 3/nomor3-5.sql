USE db_praktikum;
DESC mahasiswa;


-- ALTER TABLE  mahasiswa
-- add no_telp VARCHAR(20) NOT NULL;
-- add Alamat varchar (100);
-- add Email varchar (50) not NULL;
-- add Keterangan varchar (20);

-- Nomor 3 --
-- SELECT * from mahasiswa;
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Liska Dewi Rombe', 'H071211083', 'P', '1', '085295241127', 'Jl.Biring Romang Lr.2', 'rombeliska@gmail.com', 'Semester 3'), 
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Dewa Rescue Virgiawansyah', 'H071211072', 'L', '2', '085246852971', 'BTP', 'dr3scue2003@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('muh Hudri Perdana Hutba', 'H071211042', 'L', '3', '085156428526', 'jl.Teuku Umar', 'muhhudry@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Chindy Febryan Erwana Putri', 'H071211038', 'P', '4', '082174365211', 'soedirman', 'chindyfebrian@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('MUH. Taufiqurrahman', 'H071211062', 'L', '5', '082185241127', 'batua', 'taufiqqq@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Attar Mushari', 'H071211014', 'L', '6', '082192356677', 'cendrawasi', 'attarmushari@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Fatur Rachman Alamsyah', 'H071211041', 'L', '7', '085396174613', 'BTP', 'faturachman@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Muhammad Yusran Hardimas Setiawan', 'H071211024', 'L', '8', '08312386483163', 'Tello', 'yusranhardimas@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Dirgantry Leonard Nugrah Boro', 'H071211080', 'L', '9', '08237419469', 'BTP', 'dirgantry@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Annis Abdullah Assyaukan', 'H071211015', 'L', '10', '082156667234', 'Panaikang', 'anisabdullah@gmail.com', 'Semester 3');
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan) VALUES ('Rendy Luis', 'H071211042', 'L', '11', '082367215677', 'Antang', 'rendiluiss@gmail.com', 'Semester 5');
-- 

-- Nomor 4 --
-- DESC buku;
SELECT * FROM buku;
-- INSERT INTO buku VALUES ('a little princess', 2010, 'Frances Hodgson Burnett', 1);
-- INSERT INTO buku VALUES ('dilan', 2015, 'pidi baiq', 2);
-- INSERT INTO buku VALUES ('milea', 2016, 'pidi baiq', 3);
-- INSERT INTO buku VALUES ('mariposa', 2018, 'Luluk H.F', 4);
-- INSERT INTO buku VALUES ('hujan', 2016, 'penerbit Gramedia Pustaka Utama', 5);

-- DESC pinjam;
SELECT *FROM pinjam;
-- INSERT INTO pinjam VALUES ('2021-09-05 10:45:00', 1, 1, 1);
-- INSERT INTO pinjam VALUES ('2021-02-12 13:25:00', 2, 2, 2);
-- INSERT INTO pinjam VALUES ('2020-08-21 12:10:00', 3, 3, 3);
-- INSERT INTO pinjam VALUES ('2020-07-08 15:50:10', 4, 4, 4);
-- INSERT INTO pinjam VALUES ('2022-04-21 08:17:00', 5, 5, 5);


-- NOMOR 5--
-- insert into mahasiswa (nama, nim, jk, id_mahasiswa, No_telp, Alamat, Email, Keterangan)
-- values ('Eka Hanny Octavia', 'H071211058', 'P', 13, '', 'Makassar', 'ekahanny@gmail.com', 'Semester 3'),
-- ('Dhiyaa Unnisa', 'H071211079', 'P', 14, '082271041877', 'Maros', 'dhiyaaaaun@gmail.com', NULL);
SELECT * FROM mahasiswa;