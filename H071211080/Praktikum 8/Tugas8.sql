
#no.1 
select ss_mahasiswa.nama as Nama, ss_mahasiswa.nim as 'Nim/Nip', ss_prodi.nama as Prodi, "Mahasiswa" as Type
from ss_mahasiswa
inner join ss_prodi
on ss_mahasiswa.id_prodi = ss_prodi.id_prodi
where ss_prodi.nama like "%komputer"
union
select ss_dosen.nama, ss_dosen.nip, ss_prodi.nama, "Dosen"
from ss_dosen
inner join ss_prodi
on ss_dosen.id_prodi = ss_prodi.id_prodi
where ss_prodi.nama like "%komputer";

#no.2
SELECT subnama.nama,ss_dosen.id_prodi,GROUP_CONCAT(status) AS `riwayat status`
from
(
SELECT d.nama ,'Pembimbing utama' AS 'status'
FROM ss_dosen d INNER JOIN ss_pembimbing p ON
d.id_dosen =  p.id_pembimbing_utama
UNION
SELECT d.nama ,'Pembimbing pertama' AS 'status'
FROM ss_dosen d INNER JOIN ss_pembimbing p ON
d.id_dosen =  p.id_pembimbing_pertama
UNION
SELECT d.nama ,'Penguji pertama' AS 'status'
FROM ss_dosen d inner JOIN ss_penguji p ON
d.id_dosen =  p.id_penguji_1
UNION
SELECT d.nama ,'Penguji Kedua' AS 'status'
FROM ss_dosen d inner JOIN ss_penguji p ON
d.id_dosen =  p.id_penguji_2
) AS subnama
INNER JOIN ss_dosen ON
subnama.nama = ss_dosen.nama	
inner JOIN ss_prodi ON
ss_dosen.id_prodi = ss_prodi.id_prodi
GROUP BY subnama.nama
ORDER BY subnama.nama desc;

USE appseminar;
DESC ss_dosen;
DESC ss_prodi;
DESC ss_pembimbing;
DESC ss_penguji;

#no.3
SELECT city AS kota
FROM(SELECT COUNT(e.firstName) AS 'nama',o.city
FROM employees e INNER JOIN offices
o ON e.officeCode = o.officeCode 
WHERE e.firstName LIKE 'L%'
GROUP BY o.city
UNION
SELECT COUNT(customerName) AS 'nama',city
FROM customers
WHERE customerName LIKE 'L%'
GROUP BY city) AS subnama
GROUP BY city
ORDER BY SUM(nama) DESC LIMIT 1;
