CREATE DATABASE db_praktikum;
USE db_praktikum;
CREATE TABLE `mahasiswa` (
	`nama` VARCHAR(255),
    `id_mahasiswa` BIGINT UNSIGNED AUTO_INCREMENT,
    `nim` VARCHAR(10) NOT NULL UNIQUE,
    `jk` CHAR(1),
	PRIMARY KEY (id_mahasiswa)
);

CREATE TABLE `buku` (
	`judul` VARCHAR(255),
    `id_buku` INT AUTO_INCREMENT,
    `pengarang` VARCHAR(255),
    `tahun terbit` INT,
    PRIMARY KEY (id_buku)
);

CREATE TABLE `pinjam` (
	`tgl_pinjam` DATETIME,
    `id_mahasiswa` BIGINT UNSIGNED,
    `id_buku` INT ,
    `status_pengembalian` TINYINT(1) DEFAULT 0,
    `id_pinjam` INT UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY (id_pinjam),
    FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa (id_mahasiswa),
	FOREIGN KEY (id_buku) REFERENCES buku (id_buku)
)