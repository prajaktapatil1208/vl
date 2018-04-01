<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/user_mgmt_functions.php";

	if(isset($_POST['dept']) && isset($_POST['sem']))
	{
		$dept = $_POST['dept'];
		$sem = $_POST['sem'];
		
	
?>
								<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Labs</label>

										<div class="col-sm-9">
											<select class="col-xs-10 col-sm-5" id="lab" name="lab" onchange="show_results()" required>
													<option value="">---SELECT LAB---</option>
													<?php
													
															$sel_query = "SELECT `id`, `name` FROM `labs` WHERE  `department`='$dept' AND `semester` = '$sem'";
																	if ($res = mysqli_query($dbcon,$sel_query)) {
																		if (mysqli_num_rows($res) > 0) {
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
									<?php
	}
	?>