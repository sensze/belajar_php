<?php 
    include "koneksi.php";
    $sql = "DELETE FROM MyGuests WHERE id=3";
    if($connection->query($sql) === TRUE){
        echo "Record deleted successfully";
    }else{
        echo "Error deleting record: " . $connection->error;
    }
?>