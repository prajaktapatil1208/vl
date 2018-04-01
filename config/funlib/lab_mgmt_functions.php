<?php 
	function clean_ip($string)
	{
		global $dbcon;
		return  mysqli_real_escape_string($dbcon,htmlentities($string));
	}

	function add_lab($name,$department,$semester)
	{
		global $dbcon;
		
		$addQuery = "INSERT INTO `labs`(`id`, `name`, `department`, `semester`) VALUES (NULL,'$name','$department','$semester')";
		if ($res = mysqli_query($dbcon,$addQuery)) {
			
				return "success";
		} 
		else
		{
			return "Failed to add lab".mysqli_error($dbcon);
		}
		
	}

	function add_exp($name,$lab)
	{
		global $dbcon;
		
		$addQuery = "INSERT INTO `experiments`(`id`, `name`, `lab`) VALUES (NULL,'$name','$lab')";
		if ($res = mysqli_query($dbcon,$addQuery)) {
			
				return "success";
		} 
		else
		{
			return "Failed to add exp".mysqli_error($dbcon);
		}
		
	}
	function modify_exp($name,$lab,$exp)
	{
		global $dbcon;
		
		$addQuery = "UPDATE `experiments` SET `name`='$name' WHERE `id` = '$exp' AND `lab` = '$lab'";
		if ($res = mysqli_query($dbcon,$addQuery)) {
			
				return "success";
		} 
		else
		{
			return "Failed to add exp".mysqli_error($dbcon);
		}
		
	}
	
	function add_exp_details($exp_id,$lab,$intro,$theory,$obj,$path,$prblm)
	{
		global $dbcon;
		
		$addQuery = "INSERT INTO `experiment_details`(`id`, `exp_id`, `lab_id`, `introduction`, `theory`, `objective`, `path`,`assignment`) VALUES(NULL,'$exp_id','$lab','$intro','$theory','$obj','$path','$prblm')";
		if ($res = mysqli_query($dbcon,$addQuery)) {
			
				return "success";
		} 
		else
		{
			return "Failed to add Exp ".mysqli_error($dbcon);
		}
	}

	function update_exp_details($exp_id,$lab,$intro,$theory,$obj,$path)
	{
		global $dbcon;
		
		$addQuery = "UPDATE `experiment_details` SET `introduction`='$intro',`theory`='$theory',`objective`='$obj',`path`='$path' WHERE `exp_id` = '$exp_id' AND  `lab_id` = '$lab'";
		if ($res = mysqli_query($dbcon,$addQuery)) {
			
				return "success";
		} 
		else
		{
			return "Failed to add Exp ".mysqli_error($dbcon);
		}
	}
	
	function add_quiz_details($quiz,$ques,$op1,$op2,$op3,$op4,$ans)
	{
		global $dbcon;
		$sucess = 0;
		$addQuery = "INSERT INTO `questions` (`id`, `quiz`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES (NULL, '$quiz', '$ques[0]', '$op1[0]', '$op2[0]', '$op3[0]', '$op4[0]', '$ans[0]') ";
		for($i=1;$i<sizeof($ques);$i++){
		$addQuery .= ",(NULL, '$quiz', '$ques[$i]', '$op1[$i]', '$op2[$i]', '$op3[$i]', '$op4[$i]', '$ans[$i]')";
		}
		
		if ($res = mysqli_query($dbcon,$addQuery)) {
			$sucess = 1;
				
		} 
		else
		{
			$sucess = 0;
		}
		
		if($sucess == 1)
		{
			return "success";
		}else{
			return "failed";
		} 
	}
?>