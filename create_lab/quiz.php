<?php
	session_start();
	require_once "../config/dbconnect.php";
	require_once "../config/funlib/lab_mgmt_functions.php";
	require_once "../config/funlib/login_functions.php";
	if ( ( isLogin() != null) ) {
		
		$_SESSION['lab'] = $_GET['lab'];
		$_SESSION['exp_id'] = $_GET['exp_id'];	
		
?>
	<?php include "../template/head.php"?>
	<body class="no-skin">
		<?php include "../template/navbar.php"?>
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
			<script src="../plugins/ckeditor.js"></script>
			<?php include "../template/sidebar.php"?>
		
			<div class="main-content">
				<div class="main-content-inner">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="page-header">
									<h1>
										Add Experiments Quizzes
										<small>
											<i class="ace-icon fa fa-angle-double-right"></i>
											
										</small>
									</h1>
								</div>
								<br /><br />
								<form class="form-horizontal" role="form" action="qedit.php" method="POST">
									
									<div id="sample" align="center">
									  <div id="dynamicInput">
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Question</label>

											<div class="col-sm-9">
												<input type="text" id="form-field-1" placeholder="Question" name="ques[]" class="col-xs-10 col-sm-5" required  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Option 1</label>

											<div class="col-sm-9">
												<input type="text" id="form-field-1" placeholder="Option 1" name="op1[]" class="col-xs-10 col-sm-5" required  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Option 2</label>

											<div class="col-sm-9">
												<input type="text" id="form-field-1" placeholder="Option 2" name="op2[]" class="col-xs-10 col-sm-5" required  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Option 3</label>

											<div class="col-sm-9">
												<input type="text" id="form-field-1" placeholder="Option 3" name="op3[]" class="col-xs-10 col-sm-5" required  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Option 4</label>

											<div class="col-sm-9">
												<input type="text" id="form-field-1" placeholder="Option 4" name="op4[]" class="col-xs-10 col-sm-5" required  />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Answer</label>

											<div class="col-sm-9">
												<input type="number" id="form-field-1" placeholder="Answer Option" name="ans[]" class="col-xs-10 col-sm-5" min="1" max="4" required  />
											</div>
										</div>
									  </div>
										 <br>
										 <div class="form-group">
											<input type="button" value="Add More" class="btn btn-warning" onClick="addInput('dynamicInput');">
										  </div>
										  <br> <br>
										<div class="form-group" align="center">
											<input type="submit" name="add_quiz" class="btn btn-info" value="Add Quiz" >
										</div>
  
  
								</form>

											<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
						</div>
						</div>
			
		
			

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		<?php include "../template/foot.php"?>
		<?php include "../template/script.php"?>
		<script>
		var counter = 1;
var limit = 5;
function addInput(divName){
     if (counter == limit)  {
          alert("You have reached the limit of adding " + counter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "<div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'> Question</label><div class='col-sm-9'>	<input type='text' id='form-field-1' placeholder='Question' name='ques[]' class='col-xs-10 col-sm-5' required  /></div></div><div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'>Option 1</label><div class='col-sm-9'><input type='text' id='form-field-1' placeholder='Option 1' name='op1[]' class='col-xs-10 col-sm-5' required  /></div>	</div>	<div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'>Option 2</label><div class='col-sm-9'><input type='text' id='form-field-1' placeholder='Option 2' name='op2[]' class='col-xs-10 col-sm-5' required  /></div></div><div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'>Option 3</label><div class='col-sm-9'><input type='text' id='form-field-1' placeholder='Option 3' name='op3[]' class='col-xs-10 col-sm-5' required  /></div></div><div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'>Option 4</label><div class='col-sm-9'><input type='text' id='form-field-1' placeholder='Option 4' name='op4[]' class='col-xs-10 col-sm-5' required  /></div></div><div class='form-group'><label class='col-sm-3 control-label no-padding-right' for='form-field-1'> Answer</label><div class='col-sm-9'><input type='number' id='form-field-1' placeholder='Answer Option' name='ans[]' class='col-xs-10 col-sm-5' min='1' max='4' required  /></div></div>";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
     }
}
		</script>
	</body>
</html>
<?php
	}
	?>