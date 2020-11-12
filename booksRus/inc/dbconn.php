<?php 
    $conn = new mysqli ("localhost", "launch_attendants", 
        "IFS242FinAss#01", "books_r_us");
    if ($conn->connect_errno) {
        echo "Failed to connect to MYSQL:"
        . "($conn->connect_errno)<br>"
        . "$conn->connect_error";
    }
?>