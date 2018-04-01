<?php 
	function clean_ip($string)
	{
		global $dbcon;
		return  mysqli_real_escape_string($dbcon,htmlentities($string));
	}

	function add_staff($name,$designation,$department,$username)
	{
		global $dbcon;
		$uniq_query = "SELECT `users`.`username` FROM `users` WHERE `users`.`username` = '$username' LIMIT 1";
		if ($ures = mysqli_query($dbcon,$uniq_query)) {
			if (mysqli_num_rows($ures) == 0) 
			{
				$addQuery = "INSERT INTO `staff` (`id`, `name`, `designation`, `department`) VALUES (NULL, '$name', '$designation', '$department')";
				if ($res = mysqli_query($dbcon,$addQuery)) {
					$ref_id = mysqli_insert_id($dbcon);
					$password = base64_encode(md5($username));
					$query = "INSERT INTO `users` (`id`, `username`, `password`, `login_time`, `logout_time`, `login_IP`, `user_type`, `type_id`) VALUES (NULL, '$username', '$password', NOW(), NOW(), NULL, '2', '$ref_id')";
					if ($log_res = mysqli_query($dbcon,$query)) {
						return "success";
					} else {
						return "Failed to provide login.. ".mysqli_error($dbcon);
					}
					
					
				}
				else
				{
					return "Failed to add staff".mysqli_error($dbcon);
				}
			} else {
				return "Opps!! Username already exists try another..";
			}
		} else {
			return "Failed to add staff".mysqli_error($dbcon);
		}
	}

	function add_student($prn,$name,$email,$mobile_no,$department,$current_semester)
	{
		global $dbcon;
		$uniq_query = "SELECT `users`.`username` FROM `users` WHERE `users`.`username` = '$prn' LIMIT 1";
		if ($ures = mysqli_query($dbcon,$uniq_query)) {
			if (mysqli_num_rows($ures) == 0) 
			{
				$addQuery = "INSERT INTO `student` (`id`, `prn`, `name`, `mobile_no`, `email`, `department`, `current_semester`, `status`) VALUES (NULL, '$prn', '$name','$mobile_no', '$email', '$department', '$current_semester', 'ONGOING')";
				
				if ($res = mysqli_query($dbcon,$addQuery)) {
					$ref_id = mysqli_insert_id($dbcon);
					$password = base64_encode(md5($prn));
					$query = "INSERT INTO `users` (`id`, `username`, `password`, `login_time`, `logout_time`, `login_IP`, `user_type`, `type_id`) VALUES (NULL, '$prn', '$password', NOW(), NOW(), NULL, '3', '$ref_id')";
					if ($log_res = mysqli_query($dbcon,$query)) {
						return "success";
					} else {
						return "Failed to provide login.. ".mysqli_error($dbcon);
					}
					
					
				}
				else
				{
					return "Failed to add student ".mysqli_error($dbcon);
				}
			} else {
				return "Opps!! PRN already exists ..!";
			}
		} else {
			return "Failed to add student ".mysqli_error($dbcon);
		}
	}
	function delete_staff($del_id)
	{
		global $dbcon;
		$del_query = "DELETE FROM `staff` WHERE `id` = '$del_id'";
		if ($del_r = mysqli_query($dbcon,$del_query)) {
			$del_login = "DELETE FROM `users` WHERE `user_type` = '2' AND `type_id` = '$del_id'";
			if ($login_res = mysqli_query($dbcon,$del_login)) {
				return "success";
			} else {
				return "Failed to remove login.. plzz contact admin ".mysqli_error($dbcon);
			}
			
		} else {
			return "Failed to delete ".mysqli_error($dbcon);
		}
		
	}
	function update_staff($up_id,$name,$designation,$department)
	{
		global $dbcon;
		$update_query = "UPDATE `staff` SET `name`='$name',`designation`='$designation',`department`='$department' WHERE `id` = '$up_id'";
		if ($res = mysqli_query($dbcon,$update_query)){
			return "success";
		}
		else
		{
			return "Failed to update ".mysqli_error($dbcon);
		}
	}


	function delete_student($del_id)
	{
		global $dbcon;
		$del_query = "DELETE FROM `student` WHERE `id` = '$del_id'";
		if ($del_r = mysqli_query($dbcon,$del_query)) {
			$del_login = "DELETE FROM `users` WHERE `user_type` = '3' AND `type_id` = '$del_id'";
			if ($login_res = mysqli_query($dbcon,$del_login)) {
				return "success";
			} else {
				return "Failed to remove login.. plzz contact admin ".mysqli_error($dbcon);
			}
			
		} else {
			return "Failed to delete ".mysqli_error($dbcon);
		}
	}
	function assign_staff($name,$lab)
	{
		global $dbcon;
		
				$addQuery = "INSERT INTO `assign_staff` (`id`, `staff_id`, `sub_id`) VALUES (NULL, '$name', '$lab')";
				if ($res = mysqli_query($dbcon,$addQuery)) {
					
						return "success";
				
				}
				else
				{
					return "Failed to assign staff".mysqli_error($dbcon);
				}
	}
?>