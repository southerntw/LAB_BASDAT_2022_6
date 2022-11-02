#create database db_praktikum;
#use db_praktikum;

-- create table buku (
-- judul varchar (255),
-- `tahun terbit` int,
-- pengarang varchar (255),
-- id_buku int auto_increment NOT NULL,
-- primary key (id_buku)
-- );


-- create table mahasiswa (
-- nama varchar (255),
-- nim varchar (10) NOT NULL,
-- jk char (1),
-- id_mahasiswa bigint unsigned auto_increment,
-- primary key (id_mahasiswa),
-- unique key (nim)
-- );





-- create table pinjam (
-- tgl_pinjam datetime,
-- id_mahasiswa bigint unsigned NOT NULL,
-- id_buku int NOT NULL,
-- status_pengembalian tinyint (1) default 0 ,
-- id_pinjam int unsigned not null auto_increment,
-- primary key (id_pinjam),
-- foreign key (id_mahasiswa) references mahasiswa (id_mahasiswa),
-- foreign key (id_buku) references buku (id_buku)
-- );

#desc pinjam;
#desc buku;
#desc mahasiswa;




 