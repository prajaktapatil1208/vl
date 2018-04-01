<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		$lab = $_POST['lab'];
		
?>

								<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiments List </label>

										<div class="col-sm-9">
											<?php
													$lab_sel_query = "SELECT `id`, `name`, `lab` FROM `experiments` WHERE `lab` = '$lab' AND `dataset` = '0'";
														if ($res = mysqli_query($dbcon,$lab_sel_query)) {
															if (mysqli_num_rows($res) > 0 ) {
																	$count=1;
																while ($row = mysqli_fetch_assoc($res)) {
																?>
													<a href="edit_page.php?exp_id=<?php echo $row['id']; ?>&lab=<?php echo $lab;?>" role="button" class="bigger-125 bg-primary white" data-toggle="modal">
									<?php echo $count;?>&nbsp; <?php echo $row['name'];  ?> &nbsp; </br>
								</a>

																<?php		
																				$count++;
																			}
																		}
																	}
													?>
												<!-- php block h-->
											
										</div>
										
									</div>
									</form>
<?php
	}
	
?>