<?php
 function check_quiz_status($stud_id,$quiz)
 {
	 global $dbcon;
	 $query = "SELECT `id`,`marks`  FROM `quiz_evalution` WHERE `quiz_id` = '$quiz' AND `stud_id` = '$stud_id'";
	 if ($res = mysqli_query($dbcon,$query) ){
		 if (mysqli_num_rows($res) > 0) {
			$row1 = mysqli_fetch_assoc($res);
			return $row1['marks'];
		 }
		 else
		 {
			 return -1;
		 }
	 }
	 
 }

 function check_submission_status($stud_id,$lab_id,$exp_id)
 {
	 global $dbcon;
	 $query = "SELECT `grade` FROM `submissions` WHERE `stud_id`='$stud_id' AND `lab_id`='$lab_id' AND `exp_id`='$exp_id'";
	 if ($res = mysqli_query($dbcon,$query) ){
		 if (mysqli_num_rows($res) > 0) {
			$row1 = mysqli_fetch_assoc($res);
			
			if($row1['grade'] == NULL)
			{
				return 0;
			}
			else
			{
				return $row1['grade'];
			}
		 }
		 else
		 {
			 return -1;
		 }
	 }
	 
 }

?>