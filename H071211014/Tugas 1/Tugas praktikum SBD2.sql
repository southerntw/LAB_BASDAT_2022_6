-- CREATE DATABASE db_praktikum
-- USE db_praktikum
create table buku (
judul varchar(255),
tahun_terbit int(10) not null,
pengarang varchar(255),
id_buku bigint unsigned,
primary key (id_buku)
);

create table mahasiswa (
nama varchar(225) not null,
nim varchar(10) not null,
jk char(1) not null,
id_mahasiswa bigint unsigned,
primary key (id_mahasiswa));

create table pinjam (
tgl_pinjam datetime,
id_mahasiswa bigint unsigned ,offices
id_buku bigint unsigned,
id_pinjam int unsigned,
status_pengembalian tinyint(1),
primary key (id_pinjam),
foreign key (id_mahasiswa) references mahasiswa (id_mahasiswa),
foreign key (id_buku) references buku (id_buku)
);
