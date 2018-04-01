<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && isset($_POST['exp']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		$exp_id = $_POST['exp'];
		$lab_id = $_POST['lab'];
		$select_query = "SELECT `id`, `exp_id`, `lab_id`, `introduction`, `theory`, `objective`, `path`, `quiz` FROM `experiment_details` WHERE `lab_id` = '$lab_id' AND `exp_id` = '$exp_id'";
		if ($res = mysqli_query($dbcon,$select_query)) {
			if (mysqli_num_rows($res) > 0) {
				while ($row = mysqli_fetch_assoc($res)) {
						$intro = $row['introduction'];
						$theory = $row['theory'];
						$obj = $row['objective'];
						$path = $row['path'];
						$quiz = $row['quiz'];
		
		
?>
					<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Introduction </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" name="intro" class="col-xs-10 col-sm-5" class="ckeditor" required ><?php echo base64_decode($intro);?></textarea>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Theory  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1"  name="theory" class="col-xs-10 col-sm-5" required ><?php echo base64_decode($theory);?></textarea>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Objective  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1"  name="obj" class="col-xs-10 col-sm-5" required ><?php echo base64_decode($obj);?></textarea>
										</div>
										
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Stimulation Path  </label>

										<div class="col-sm-9">
											<input type="text"  id="form-field-1" value="<?php echo base64_decode($path);?>" name="path" class="col-xs-10 col-sm-5" required />
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Quizzes  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" name="quiz" class="col-xs-10 col-sm-5" required ><?php echo base64_decode($quiz);?></textarea>
										</div>
										
									</div>
									<div class="form-group" align="center">
										<input type="submit" name="update" class="btn btn-info" value="Update" >
										
										
									</div>
									
									 
								</form>
								
	<?php
	}
	}
			}
	}
	?>