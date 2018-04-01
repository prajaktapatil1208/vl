<?php
	session_start();
	require_once "../config/dbconnect.php";
	require_once "../config/funlib/lab_mgmt_functions.php";
	require_once "../config/funlib/login_functions.php";
	$user_type = isLogin();
	if($user_type != 1)
	{
		echo "<script>alert('Not allowed')</script>";
		header( "refresh:1; url=../index.php" );
	}
	else
	{
	if (isset($_POST['add_lab'])) {
		
		$name = clean_ip($_POST['name']);
		$department = clean_ip($_POST['department']);
		$semester = clean_ip($_POST['semester']);
		$add_lab  = add_lab($name,$department,$semester);
		
		if($add_lab == "success") {
			
			
			header( "refresh:1; url=add_lab.php" );
		}
		else
		{
			echo "failed";
		}
	}
?>

<?php include "../template/head.php"?>
	<body class="no-skin">
		<?php include "../template/navbar.php"?>
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<?php include "../template/sidebar.php"?>
		
			<div class="main-content">
				<div class="main-content-inner">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="page-header">
									<h1>
										Add Lab 
										<small>
											<i class="ace-icon fa fa-angle-double-right"></i>
											
										</small>
									</h1>
								</div>
								<br /><br />
								<form class="form-horizontal" role="form" action="add_lab.php" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Name</label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="Name" name="name" class="col-xs-10 col-sm-5" required  />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Department</label>

										<div class="col-sm-9">
											<select class="col-xs-10 col-sm-5" id="department" name="department" required>
													<option value="">---SELECT DEPARTMENT---</option>
													<?php
															$dep_sel_query = "SELECT `id`, `department_name` FROM `department`";
																	if ($res = mysqli_query($dbcon,$dep_sel_query)) {
																		if (mysqli_num_rows($res) > 0) {
																			while ($row = mysqli_fetch_assoc($res)) {
																?>
																<option value="<?php echo $row['id']; ?>"><?php echo $row['department_name'];  ?></option>
																<?php				
																			}
																		}
																	}
													?>
											</select>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Semester</label>

										<div class="col-sm-9">
											<select class="col-xs-10 col-sm-5" id="semester" name="semester" required>
													<option value="">--SELECT--</option>
													<option value="1">I</option>
													<option value="2">II</option>
													<option value="3">III</option>
													<option value="4">IV</option>
													<option value="5">V</option>
													<option value="6">VI</option>
													<option value="7">VII</option>
													<option value="8">VIII</option>
											</select>
										</div>
										
									</div>
									<div class="form-group" align="center">
										<input type="submit" name="add_lab" class="btn btn-info" value="Add Lab" >
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
	</body>
</html>
<?php

	}
	?>