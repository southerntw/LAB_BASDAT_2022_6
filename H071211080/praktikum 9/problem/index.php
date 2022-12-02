<?php
include 'query.php';

// Setting koneksi database tergantung username dan servername anda
$servername = 'localhost';
$username = 'root';
$password = '';
$dbnama = 'classicmodels';

// Melakukan koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbnama);

// Mengecek apakah koneksi error atau tidak
if ($conn->connect_error) {
  die('Connection failed: ' . $conn->connect_error);
}

// start function
$query = new MyQuery($conn);
while (true) {
  echo 'Tugas Praktikum 9' . "\r\n";
  echo '1. Tampilkan 5 Data' . "\n";
  echo '2. Update Nama' . "\n";
  echo '0. Keluar' . "\n";
  $input = (int)readline('> ');
  switch ($input) {
    case 0:
      return;
    case 1:
      $query->show_data();
      echo "\n";
      break;
    case 2:
      $query->update_name();
      echo "\n";
      break;
    default:
      break;
  }
}
