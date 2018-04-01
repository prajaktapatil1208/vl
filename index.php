<?php
	session_start();
	ob_start();
	require_once "config/dbconnect.php";
	include "config/funlib/login_functions.php";

	
	$user_type = isLogin();
	if($user_type != null)
	{
		$user_id = $_SESSION['user_uid'];
		$user_ref_id = $_SESSION['user_ref_id'];
		$_SESSION["user_type"] = $user_type;
	}
	else
	{
		header('Location:student/index.php');
		die("Access Denied :( ");
	}
	ob_end_flush();
	
?>

<?php
	if($user_type == 1 ||$user_type == 2)
		header("Location:template/index.php");
	else if($user_type == 3)
		header("Location:student/home.php");
	else
		header("Location:student/index.php");
?>