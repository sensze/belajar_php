<?php 
    include "koneksi.php";
    $sql = "SELECT id, firstname, lastname FROM MyGuests ORDER BY lastname";
    $result = $connection->query($sql);

    if($result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            echo "id: " . $row["id"] . " - Firstname: " . $row["firstname"] ." "."Lastname:  " . $row["lastname"] . "<br>";
        };
    }else{
        echo "Data Kosong!";
    }
?>