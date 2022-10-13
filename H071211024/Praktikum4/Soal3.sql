SELECT m.id_mahasiswa, m.nama AS namaMahasiswa, d.nama AS pembimbingUtama
FROM ss_mahasiswa AS m
JOIN ss_pembimbing AS p
ON m.id_mahasiswa = p.id_mahasiswa
JOIN ss_dosen AS d
ON p.id_pembimbing_utama = d.id_dosen
WHERE m.nama="Sulaeman";