CREATE TABLE buku (
	judul varchar(255),
	`tahun terbit` int,
	pengarang varchar(255),
	id_buku int PRIMARY KEY AUTO_INCREMENT
)

CREATE TABLE mahasiswa (
   nama varchar(255),
   nim varchar(10) UNIQUE,
   jk char(1),
   id_mahasiswa bigint UNSIGNED PRIMARY KEY AUTO_INCREMENT 
)

CREATE TABLE pinjam (
   tgl_pinjam datetime,
   id_mahasiswa bigint unsigned NOT NULL,
   id_buku int NOT NULL,
   FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
   FOREIGN KEY (id_buku) REFERENCES buku(id_buku),
   id_pinjam int UNSIGNED PRIMARY KEY AUTO_INCREMENT 
)