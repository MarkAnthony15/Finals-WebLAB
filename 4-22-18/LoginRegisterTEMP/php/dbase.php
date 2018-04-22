<?php
	$mysqli = new mysqli('localhost','root','','accounts');

	if ($_SERVER['REQUEST_METHOD'] == 'POST'){
		if($_POST['password']) == $_POST['conpassword']){ //match if equal
			$username = $mysqli->real_escape_string($_POST['username']);
			$email = $mysqli->real_escape_string($_POST)['email'];
			$password = md5($_POST['password']); //md5 encryption
			$sql = "INSERT INTO users (username,email,password) VALUES('$username','$email','$password')";

			if($mysqli->query($sql) === true){
				$_SESSION['message'] = 'Registration Successful!';
			}
		}
	}
?>