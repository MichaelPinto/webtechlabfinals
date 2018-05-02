<?php

include("database/db_connection.php");
$delete_id=$_GET['del'];
$delete_query="delete from request_accounts WHERE customer_id='$delete_id'";
$run=mysqli_query($dbcon,$delete_query);
if($run){
    echo "<script>window.opne('index.php?deleted=user has been deleted','_self')</script>";
}

?>