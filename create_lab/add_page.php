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
										Add Lab Experiments
										<small>
											<i class="ace-icon fa fa-angle-double-right"></i>
											
										</small>
									</h1>
								</div>
								<br /><br />
								<form class="form-horizontal" role="form" action="add_page.php" method="POST">
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
											<select class="col-xs-10 col-sm-5" id="semester" name="semester" onchange="show_list()" required>
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
									<div id="labs_from_container">
								
									</div>
									<div id="labs_from_container_two">
								
									</div>
									<div id="labs_from_container_three">
								
									</div>
									</form>
											
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
<script type="text/javascript">
	function show_list()
	{
		var department = document.getElementById('department').value;
		var semester = document.getElementById('semester').value;
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
        	if (this.readyState == 4 && this.status == 200) {
        		document.getElementById('labs_from_container').innerHTML = this.responseText; 
        	}
        };
        xhttp.open("POST", "../config/ajax/add_page.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("department="+department+"&semester="+semester);
	}
</script>

<script type="text/javascript">
	function show_list2()
	{
		var department = document.getElementById('department').value;
		var semester = document.getElementById('semester').value;
		var lab = document.getElementById('lab').value;
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
        	if (this.readyState == 4 && this.status == 200) {
        		document.getElementById('labs_from_container_two').innerHTML = this.responseText; 
        	}
        };
        xhttp.open("POST", "../config/ajax/add_page2.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("department="+department+"&semester="+semester+"&lab="+lab);
	}
</script>

<script type="text/javascript">
	/* function show_list3()
	{
		var department = document.getElementById('department').value;
		var semester = document.getElementById('semester').value;
		var lab = document.getElementById('lab').value;
		var exp = document.getElementById('exp').value;
		var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
        	if (this.readyState == 4 && this.status == 200) {
        		document.getElementById('labs_from_container_three').innerHTML = this.responseText; 
        	}
        };
        xhttp.open("POST", "../config/ajax/add_page3.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("department="+department+"&semester="+semester+"&lab="+lab+"&exp="+exp);
	} */
</script>
<script type="text/javascript" src="../assets/js/nicEdit-latest.js"></script>

<script type="text/javascript">
function show()
{
			bkLib.onDomLoaded(function() {
        new nicEditor({fullPanel : true}).panelInstance('area4');
        
  });
}
</script>
<script type="text/javascript">
	function show_page()
	{
		
	//	var lab = document.getElementById('lab').value;
		//var exp = document.getElementById('exp').value;
		/*  var intro = document.getElementById('intro').value;
		var theory = document.getElementById('theory').value;
		var obj = document.getElementById('obj').value;
		var path = document.getElementById('path').value;
		var quiz = document.getElementById('quiz').value; 
		
        window.location.href="../student/exp_page.php?lab="+lab+"&exp_id="+exp+"&intro="+intro+"&theory="+theory+"&obj="+obj+"&path="+path+"&quiz="+quiz; */
	}
</script>

		<script src="../assets/js/jquery-ui.custom.min.js"></script>
		<script src="../assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="../assets/js/markdown.min.js"></script>
		<script src="../assets/js/bootstrap-markdown.min.js"></script>
		<script src="../assets/js/jquery.hotkeys.index.min.js"></script>
		<script src="../assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="../assets/js/bootbox.js"></script>



	</body>
</html>
<?php
	}
?>