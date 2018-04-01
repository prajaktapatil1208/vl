<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && isset($_POST['exp']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		
		
?>
									
									
									<div class="col-xs-12">
										<h4 class="header green clearfix">
											Experiment Introduction
										</h4>
										<div class="wysiwyg-editor" id="editor1"></div>

										<div class="hr hr-double dotted"></div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Theory  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" placeholder="Experiment Theory" name="theory" class="col-xs-10 col-sm-5" required ></textarea>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Objective  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" placeholder="Experiment Objective" name="obj" class="col-xs-10 col-sm-5" required ></textarea>
										</div>
										
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Stimulation Path  </label>

										<div class="col-sm-9">
											<input type="text"  id="form-field-1" placeholder="Experiment Stimulation Path" name="path" class="col-xs-10 col-sm-5" required />
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Quizzes  </label>

										<div class="col-sm-9">
											<textarea  id="form-field-1" placeholder="Experiment Quizzes" name="quiz" class="col-xs-10 col-sm-5" required ></textarea>
										</div>
										
									</div>
									<div class="form-group" align="center">
										<input type="submit" name="add_exp" class="btn btn-info" value="Add Experiment" >
										
										
									</div>
								
								
	<?php
	}
	?>