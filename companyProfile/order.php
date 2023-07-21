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
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['pesan'];

    // Query untuk membuat data baru ke dalam tabel
    $sql = "INSERT INTO contactforms (name, email, message) VALUES ('$name', '$email', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "Data berhasil dibuat.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
header("Location: index.php");
$conn->close();
?>