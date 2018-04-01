<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		$lab = $_POST['lab'];
		$select_query = "SELECT `id`, `name`, `lab` FROM `experiments` WHERE `lab` = '$lab' ";
		
		
?>
					<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment </label>

										<div class="col-sm-9">
											<select class="col-xs-10 col-sm-5" id="exp" name="exp" onchange="show_list3()" required>
													<option value="">---SELECT Experiment---</option>
													<?php
																if ($res = mysqli_query($dbcon,$select_query)) {
			if (mysqli_num_rows($res) > 0) {
				while ($row = mysqli_fetch_assoc($res)) {
					//$name = $row['name'];
		
																?>
																<option value="<?php echo $row['id']; ?>"><?php echo $row['name'];  ?></option>
																<?php				
																			}
																		}
																	}
													?>
											</select>
										</div>
										
										
									</div>
									
								</form>
								
	<?php
	}
	?>