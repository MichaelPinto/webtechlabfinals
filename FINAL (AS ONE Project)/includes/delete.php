<?php
    include_once('db.php');

    
    $hostname = "localhost";
    $username = "root";
    $password = "";
    $databaseName = "db";
    $id = $_GET['delete'];
    
    // connect to mysql
    $connect = mysqli_connect($hostname, $username, $password, $databaseName);
    // mysql delete query 
    $query = "DELETE FROM `users` WHERE `user_id` = $id";
    $result = mysqli_query($connect, $query);
    /**
    if($result)
    {
        echo 'Data Deleted';
    }else{
        echo 'Data Not Deleted';
    }
    **/
    mysqli_close($connect); 
    

   header("Refresh:0; ../approve.deny.php")
?>



