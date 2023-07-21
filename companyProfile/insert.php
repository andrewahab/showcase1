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

// Ambil data dari input form
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST['nama'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Query untuk membuat data baru ke dalam tabel
    $sql = "INSERT INTO customers (name, email, password) VALUES ('$name', '$email', '$password')";

    if ($conn->query($sql) === TRUE) {
        echo "Data berhasil dibuat.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
header("Location: login.php");
$conn->close();
?>