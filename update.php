<?php
    include "koneksi.php";

    $sql = "UPDATE MyGuests SET lastname='Sugandrung' WHERE id=3";

    if($connection->query($sql) === TRUE){
        echo "Record updated successfully";
    }else{
        echo "Error updating record: " . $connection->error;
    }
?>