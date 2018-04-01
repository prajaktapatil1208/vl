<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];

		
?>

								<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Lab </label>

										<div class="col-sm-9">
											<select class="col-xs-10 col-sm-5" id="lab" name="lab" onchange="show_list2()" required>
													<option value="">---SELECT LAB---</option>
													<?php
																$lab_sel_query = "SELECT `id`, `name`, `department`, `semester` FROM `labs` WHERE `department` = '$depertment' AND `semester` = '$semester'";
																	if ($res = mysqli_query($dbcon,$lab_sel_query)) {
																		if (mysqli_num_rows($res) > 0 ) {
																			while ($row = mysqli_fetch_assoc($res)) {
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