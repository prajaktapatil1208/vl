<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/login_functions.php";
	if (isset($_POST['department']) && isset($_POST['semester']) && isset($_POST['lab']) && isset($_POST['exp']) && ( isLogin() != null)) {
		$depertment = $_POST['department'];
		$semester = $_POST['semester'];
		
		
?>

					<form class="form-horizontal" role="form" action="add_exp.php" method="POST">
									
								<div class="page-content">
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
								<div class="wysiwyg-editor" id="editor1"></div>

								<div class="hr hr-double dotted"></div>
							<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
						
					</div>
									 
								</form>
								
	<?php
	}
	?>
