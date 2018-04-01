
<?php
	session_start();
	require_once "../config/dbconnect.php";
	require_once "../config/funlib/lab_mgmt_functions.php";
	require_once "../config/funlib/login_functions.php";
	if ( ( isLogin() != null) ) {
		if (isset($_POST['add_exp'])) {
		$lab = $_SESSION['lab'];
		$exp_id = $_SESSION['exp_id'];
		$title = base64_encode ($_POST['title']);
		
		$theory = base64_encode($_POST['theory']);
		
		$obj = base64_encode ($_POST['obj']);
		$path = base64_encode($_POST['path']);
		$prblm = base64_encode($_POST['prblm']);
		$add_exp_details  = add_exp_details($exp_id,$lab,$title,$theory,$obj,$path,$prblm);
		//echo $link = "<script>window.open('../student/exp_page.php?lab=$lab&exp_id=$exp_id&intro=$intro&theory=$theory&obj=$obj&path=$path&quiz=$quiz' )</script>";
		if($add_exp_details == "success") {
			header( "refresh:1; url=add_page.php" );
		}
		else
		{
			echo "failed";
		} 
	}
	}
	?>