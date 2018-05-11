<?php
$conn = mysqli_connect('localhost', 'root', '', 'web');
function e($val){
	global $conn;
	return mysqli_real_escape_string($conn, trim($val));
}

if (isset($_POST['login_btn'])) {
	login();
}
?>