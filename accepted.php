<?php
include("database/db_connection.php");
    
    if(isset($_GET['accept'])){
        $id = intval($_GET['accept']);
        $result = mysqli_query($dbcon,"SELECT * FROM");
        
        mysqli_autocommit($dbcon, false);
        mysqli_query($dbcon,"");
        mysqli_query($dbcon, "");
        mysqli_commit($dbcon);
        
            echo "<script>window.opne('index.php',)</script>";
    }