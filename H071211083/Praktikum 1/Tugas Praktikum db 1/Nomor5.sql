CREATE TABLE buku(
judul VARCHAR(255),
`tahun terbit` INT,
pengarang VARCHAR(255),
id_buku INT AUTO_INCREMENT, 
PRIMARY KEY(id_buku)
 );
 
CREATE TABLE mahasiswa(
nama varchar(255),
nim VARCHAR(10) UNIQUE,
jk CHAR(1),
id_mahasiswa BIGINT UNSIGNED
AUTO_INCREMENT PRIMARY key
 );

CREATE TABLE pinjam(
id_pinjam INT UNSIGNED AUTO_INCREMENT,
`tgl pinjam` DATETIME,
id_mahasiswa BIGINT UNSIGNED NOT NULL,
id_buku INT NOT NULL,
status_pengembalian TINYINT(1) DEFAULT,
FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa (id_mahasiswa),
FOREIGN KEY (id_buku) REFERENCES buku (id_buku),
PRIMARY KEY (id_pinjam)
);