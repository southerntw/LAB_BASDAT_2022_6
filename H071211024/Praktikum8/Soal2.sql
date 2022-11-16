SELECT nama AS 'Nama Dosen',`Prodi`,GROUP_CONCAT(`Riwayat`) AS 'Riwayat Status'
FROM(
	SELECT "Penguji 1" AS Riwayat, Dosen.nama, Prodi.nama AS 'Prodi'
	FROM  ss_dosen AS Dosen
	JOIN ss_prodi AS Prodi
	USING (id_Prodi)
	JOIN ss_penguji AS Penguji
	ON Dosen.id_dosen = Penguji.id_penguji_1
	GROUP BY  Dosen.nama
UNION ALL
	SELECT "Penguji 2" AS Riwayat, Dosen.nama, Prodi.nama AS 'Prodi'
	FROM  ss_dosen AS Dosen
	JOIN ss_prodi AS Prodi
	USING (id_Prodi)
	JOIN ss_penguji AS Penguji
	ON Dosen.id_dosen = Penguji.id_penguji_2 
	GROUP BY  Dosen.nama
UNION ALL
	SELECT "Pembimbing Utama" AS Riwayat, Dosen.nama, Prodi.nama AS 'Prodi'
	FROM  ss_dosen AS Dosen
	JOIN ss_prodi AS Prodi
	USING (id_Prodi)
	JOIN ss_pembimbing AS Pembimbing
	ON Dosen.id_dosen = Pembimbing.id_pembimbing_utama
	GROUP BY  Dosen.nama
UNION  ALL
	SELECT "Pembimbing Pertama" AS Riwayat, Dosen.nama, Prodi.nama AS 'Prodi'
	FROM  ss_dosen AS Dosen
	JOIN ss_prodi AS Prodi
	USING (id_Prodi)
	JOIN ss_pembimbing AS Pembimbing
	ON Dosen.id_dosen = Pembimbing.id_pembimbing_pertama
	GROUP BY  Dosen.nama) a
	GROUP BY nama 
	ORDER BY nama DESC