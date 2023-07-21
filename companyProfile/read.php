<?php
// Koneksi ke database
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'takgendong';
$conn = new mysqli($host, $username, $password, $database);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Ambil data dari form login
$email = $_POST['email'];
$password = $_POST['password'];

// Query untuk membaca data email dan password dari tabel customers
$sql = "SELECT email, password FROM customers WHERE email = '$email'";
$result = $conn->query($sql);
$user = $result->fetch_assoc();

// Cek email & password
if ($user && password_verify($password, $user['password'])) {
    // Jika cocok, redirect ke halaman utama
    header("Location: index.php");
    exit();
} else {
    // Jika tidak cocok, redirect kembali ke halaman login
    header("Location: login.php?error=1");
    exit();
}

$conn->close();
?>
