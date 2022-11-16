SELECT m.nama AS 'Nama', p.nama AS 'Program Studi', m.nim AS 'NIM/NIP'
FROM ss_mahasiswa AS m
JOIN ss_prodi AS p
ON m.id_prodi = p.id_prodi
WHERE m.id_prodi = 'H07'
UNION
SELECT d.nama, p.nama AS 'Program Studi', d.nip
FROM ss_dosen AS d
JOIN ss_prodi AS p
ON d.id_prodi = p.id_prodi
WHERE d.id_prodi = 'H07'