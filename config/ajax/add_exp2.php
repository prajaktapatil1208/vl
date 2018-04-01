<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		
		
?>
					<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Name  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" placeholder="Experiment Name" name="name" class="col-xs-10 col-sm-5" required ></textarea>
										</div>
										
									</div>
									<div class="form-group" align="center">
										<input type="submit" name="add_exp" class="btn btn-info" value="Add Experiment" >
									</div>
								</form>
								
	<?php
	}
	?>