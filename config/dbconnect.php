<?php
	$dbcon = mysqli_connect('localhost','root','') or die("Unable to connect to the database");
	$dbsel = mysqli_select_db($dbcon,'vlab') or die("Unable to select the database");
?>