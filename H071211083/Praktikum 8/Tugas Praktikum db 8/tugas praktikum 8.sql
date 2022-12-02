#nomor1
USE appseminar
SELECT m.nama AS 'Nama', m.nim AS 'NIM/NIP', p.nama AS 'Program Studi', 'Mahasiswa' AS 'Keterangan'
FROM ss_mahasiswa AS m
INNER JOIN ss_prodi AS p
ON m.id_prodi = p.id_prodi
UNION
SELECT d.nama 'Nama', d.nip AS 'NIM/NIP', p.nama AS 'Kode Prodi', 'Dosen' AS 'Keterangan'
FROM ss_dosen d
INNER JOIN ss_prodi p
ON d.id_prodi = p.id_prodi

#nomor 2
USE appseminar
SELECT `Nama Dosen`,`Nama Prodi`,GROUP_CONCAT("", stat) 'Riwayat' FROM (
SELECT ss_dosen.nama 'Nama Dosen',ss_prodi.nama 'Nama Prodi',(
SELECT 'Penguji 1' WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen)  stat
FROM ss_dosen INNER JOIN ss_prodi ON ss_prodi.id_prodi = ss_dosen.id_prodi
,ss_penguji
WHERE (
SELECT 'Penguji 1' WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen) IS NOT NULL
UNION
SELECT ss_dosen.nama 'Nama Dosen',ss_prodi.nama 'Nama Prodi',(
SELECT 'Penguji 2' WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen)  stat
FROM ss_dosen INNER JOIN ss_prodi ON ss_prodi.id_prodi = ss_dosen.id_prodi
,ss_penguji
WHERE (
SELECT 'Penguji 2' WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen) IS NOT NULL
UNION
SELECT ss_dosen.nama 'Nama Dosen',ss_prodi.nama 'Nama Prodi',(
SELECT 'Pembimbing Pertama' WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen)  'Status'
FROM ss_dosen INNER JOIN ss_prodi ON ss_prodi.id_prodi = ss_dosen.id_prodi
,ss_pembimbing
WHERE (
SELECT 'Pembimbing Pertama' WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen) IS NOT NULL
UNION
SELECT ss_dosen.nama 'Nama Dosen',ss_prodi.nama 'Nama Prodi',(
SELECT 'Pembimbing Utama' WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) stat
FROM ss_dosen INNER JOIN ss_prodi ON ss_prodi.id_prodi = ss_dosen.id_prodi
,ss_pembimbing
WHERE (
SELECT 'Pembimbing Utama' WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) IS NOT NULL) Riwayat
GROUP BY(`Nama Dosen`)
ORDER BY(`Nama Dosen`) DESC;







SELECT `Nama Dosen`, `Nama Prodi`, GROUP_CONCAT( " ", stat) AS `Riwayat Status`
FROM (
		SELECT DISTINCT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`, (
			SELECT 'Penguji 1' WHERE ss_penguji.id_penguji_1 = ss_dosen.id_dosen) AS stat
		FROM ss_dosen JOIN ss_prodi USING(id_prodi), ss_penguji 
		UNION 
		SELECT DISTINCT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`, (
			SELECT 'Penguji 2' WHERE ss_penguji.id_penguji_2 = ss_dosen.id_dosen) AS stat
		FROM ss_dosen JOIN ss_prodi USING(id_prodi), ss_penguji
		UNION 
		SELECT DISTINCT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`, (
			SELECT 'Pembimbing Utama' WHERE ss_pembimbing.id_pembimbing_utama = ss_dosen.id_dosen) AS stat
		FROM ss_dosen JOIN ss_prodi USING(id_prodi), ss_pembimbing
		UNION 
		SELECT DISTINCT ss_dosen.nama AS `Nama Dosen`, ss_prodi.nama AS `Nama Prodi`, (
			SELECT 'Pembimbing Pertama' WHERE ss_pembimbing.id_pembimbing_pertama = ss_dosen.id_dosen) AS stat
		FROM ss_dosen JOIN ss_prodi USING(id_prodi), ss_pembimbing
	) riwayat
GROUP BY `Nama Dosen`
HAVING `Riwayat Status` IS NOT NULL 
ORDER BY `Nama Dosen` desc;

#nomor 3
USE classicmodels
SELECT `kota` FROM(SELECT customerName AS "karyawan/pelanggan", city AS "kota"
FROM customers WHERE customerName LIKE 'L%'
UNION all
SELECT employees.firstName, city FROM employees INNER JOIN offices 
ON employees.officeCode = offices.officeCode 
WHERE employees.firstName LIKE 'L%') AS a
GROUP BY `kota`
ORDER BY COUNT(`karyawan/pelanggan`) DESC LIMIT 1;










