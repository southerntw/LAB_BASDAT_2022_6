USE appseminar;
#1
SELECT m.nama, p.nama `nama prodi`, nim  `NIM/NIP`
FROM ss_mahasiswa m
JOIN ss_prodi p
USING (id_prodi)
WHERE p.nama LIKE '%komp%'
UNION
SELECT d.nama, p.nama, nip
FROM ss_dosen d
JOIN ss_prodi p
USING (id_prodi)
WHERE p.nama LIKE '%komp%';

#2
SELECT d.nama, p.nama `prodi`, GROUP_CONCAT(`riwayat status`) `riwayat status`
FROM (
	SELECT id_prodi, nama, 'pembimbing utama' AS `riwayat status`
	FROM ss_dosen
	WHERE id_dosen IN (
		SELECT id_pembimbing_utama FROM ss_pembimbing
	)
	UNION ALL
	SELECT id_prodi, nama, 'pembimbing pertama' AS `riwayat status`
	FROM ss_dosen
	WHERE id_dosen IN (
		SELECT id_pembimbing_pertama FROM ss_pembimbing
	)
	UNION ALL
	SELECT id_prodi, nama, 'penguji 1' AS `riwayat status`
	FROM ss_dosen
	WHERE id_dosen IN (
		SELECT id_penguji_1 FROM ss_penguji
	)
	UNION ALL
	SELECT id_prodi, nama, 'penguji 2' AS `riwayat status` FROM ss_dosen
	WHERE id_dosen IN (
		SELECT id_penguji_2 FROM ss_penguji
	)
)d
JOIN ss_prodi p
USING (id_prodi)
GROUP BY d.nama
ORDER BY d.nama DESC;

#3
USE classicmodels;

SELECT city, GROUP_CONCAT(`nama`) `nama karyawan/pelanggan`
FROM (
	SELECT CONCAT(firstName, " ", lastName) `nama`, city
	FROM employees
	JOIN offices
	USING (officeCode)
	WHERE firstName LIKE 'L%'
	UNION ALL
	SELECT CONCAT(contactFirstName, " ", contactLastName) `nama`, city
	FROM customers
	WHERE contactFirstName LIKE 'L%'
) a
GROUP BY city
ORDER BY COUNT(city) DESC LIMIT 1;