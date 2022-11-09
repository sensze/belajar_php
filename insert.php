<?php
    include "koneksi.php";

    $sql = "INSERT INTO MyGuests (firstname, lastname, email) VALUES ('Bagas', 'Abimanyu', 'john@example.com')";

    if($connection->query($sql) === TRUE){
        echo "New record created successfully";
    }else{
        echo "Error: " . $sql . "<br>" . $connection->error;
    }
?>