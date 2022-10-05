use db_praktikum;
alter table mahasiswa
add NO_telp varchar(20) not null;
alter table mahasiswa
add Alamat varchar(200);
alter table mahasiswa
add Email varchar(50) not null;
alter table mahasiswa
add Keterangan varchar(20);

desc mahasiswa;
select * from mahasiswa;


desc pinjam;
select * from pinjam;

desc buku;
select * from buku;

 insert into mahasiswa (nama, nim, jk,No_telp, Alamat, Email, Keterangan) VALUES ('Dirgantry Leonard Nugrah Boro', 'H071211080', 'L', '08237419469', 'BTP', 'dirgantry@gmail.com', 'Semester 3'),
('Liska Dewi Rombe', 'H071211083', 'P','085295241127', 'Jl.Biring Romang Lr.2', 'rombeliska@gmail.com', 'Semester 3'), 
 ('Dewa Rescue Virgiawansyah', 'H071211072', 'L' ,'085246852971', 'BTP', 'dr3scue2003@gmail.com', 'Semester 3'),
('muh Hudri Perdana Hutba', 'H071211042', 'L','085156428526', 'jl.Teuku Umar', 'muhhudry@gmail.com', 'Semester 3'),
('Chindy Febryan Erwana Putri', 'H071211038', 'P','082174365211', 'soedirman', 'chindyfebrian@gmail.com', 'Semester 3'),
 ('MUH. Taufiqurrahman', 'H071211062', 'L', '082185241127', 'batua', 'taufiqqq@gmail.com', 'Semester 3'),
 ('Attar Mushari', 'H071211014', 'L','082192356677', 'cendrawasi', 'attarmushari@gmail.com', 'Semester 3'),
('Fatur Rachman Alamsyah', 'H071211041', 'L', '085396174613', 'BTP', 'faturachman@gmail.com', 'Semester 3'),
 ('Muhammad Yusran Hardimas Setiawan', 'H071211024', 'L','08312386483163', 'Tello', 'yusranhardimas@gmail.com', 'Semester 3'),
 ('Annis Abdullah Assyaukan', 'H071211015', 'L',  '082156667234', 'Panaikang', 'anisabdullah@gmail.com', 'Semester 3'),
 ('Rendy Luis', 'H071201042', 'L',  '082367215677', 'Antang', 'rendiluiss@gmail.com', 'Semester 5');
 
 insert into buku values("Teknik Bermain Gitar",1999,"Famoya",1),
 ("Lutung Kasarung",2013,"Ruhiyat S",2),
 ("Tindak Pidana Perdagangan Orang",2017,"Paula SinlaeEloE",3),
 ("Filsafat Dakwah : ilmu dakwah dan penerapan",2004,"KI Moesa A Machfoeld",4),
 ("Principles Of Geomorphiology",1936,"EasterBook, Don J",5);
 
 insert into pinjam values ("2022-08-14 12:25:00",166,1,0,"201"),
  ("2022-08-21 14:09:00",167,2,1,"202"),
  ("2022-08-10 15:30:00",168,3,0,"203"),
  ("2022-08-17 10:10:00",169,4,1,"204"),
  ("2022-08-26 12:10:00",170,5,0,"205");
  
  insert into mahasiswa values("Monalisa","H07119023","L",177,"0812789654321","jalan ceria","monalisa@gmail.com","");
  insert into mahasiswa values("Fulan","H07119028","L",178,"0812345754321",null,"fulan@gmail.com","semester 6");
 