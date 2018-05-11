<?php
    include_once('db.php');

    
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "db";
    $id = $_GET['update'];
    
    // connect to mysql
    $connect = mysqli_connect($hostname, $username, $password, $databaseName);
    // mysql delete query 
    $query = "UPDATE `users` SET `status`='active' where user_id=$id ";
    $result = mysqli_query($connect, $query);

    mysqli_close($connect); 
    

   header("Refresh:0; ../approve.deny.php")
?>