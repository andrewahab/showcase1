<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
    </head>
    <body>
        <h2>Customer Data</h2>
        <table border="1">
            <tr><th>id</th><th>name</th><th>email</th><th>password</th></tr>
            <?php
            include 'koneksi.php';
            $customers = mysqli_query($koneksi, "SELECT * FROM customers");
            $no = 1;
            foreach ($customers as $row) {
                echo "<tr>
            <td>$no</td>
            <td>" . $row['id'] . "</td>
            <td>" . $row['name'] . "</td>
            <td>" . $row['email'] . "</td>
            <td>" . $row['password'] . "</td>
            <td><a href='form-edit.php?id_customers=$row[id_customers]'>Edit</a>
                <a href='delete.php?id_customers=$row[id_customers]'>Delete</a>
            </td>
              </tr>";
                $no++;
            }
            ?>
        </table>

    </body>
</html>