
<?php
	session_start();
	require_once "../config/dbconnect.php";
	require_once "../config/funlib/lab_mgmt_functions.php";
	require_once "../config/funlib/login_functions.php";
	if ( ( isLogin() != null) ) {
		if (isset($_POST['add_quiz'])) {
		$lab = $_SESSION['lab'];
		$exp_id = $_SESSION['exp_id'];
		$select = "SELECT `quiz` FROM `experiment_details` WHERE `exp_id`='$exp_id' AND `lab_id` ='$lab'";		
		if ($res = mysqli_query($dbcon,$select)) {
			$row = mysqli_fetch_assoc($res);
			$quiz = $row['quiz'];
		
			$ques = $_POST['ques'];
			
			$op1 = $_POST['op1'];
			$op2 = $_POST['op2'];
			$op3 = $_POST['op3'];
			$op4 = $_POST['op4'];
			
			
			$ans = $_POST['ans'];
			
			$add_quiz_details  = add_quiz_details($quiz,$ques,$op1,$op2,$op3,$op4,$ans);
			
			if($add_quiz_details == "success") {
				$update = "UPDATE `experiments` SET `quizset`='1' WHERE `lab` = '$lab' AND `id` = '$exp_id'";
				if ($res = mysqli_query($dbcon,$update)) {
			
					header( "refresh:1; url=add_quiz.php" );
				} 
				else
				{
					echo "<script>alert('Failed')</script>";
					header( "refresh:1; url=add_quiz.php" );
				}
			}
			else
			{
				echo "failed";
			}   
		}
	}
	}
	?>