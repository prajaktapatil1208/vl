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
										Add Lab Experiments
										<small>
											<i class="ace-icon fa fa-angle-double-right"></i>
											
										</small>
									</h1>
								</div>
								<br /><br />
								<form class="form-horizontal" role="form" action="edit.php" method="POST">
									
									<div id="sample">
									  <script type="text/javascript" src="..\assets\js\nicEdit-latest.js"></script> <script type="text/javascript">
									//<![CDATA[
									  bkLib.onDomLoaded(function() {
											//new nicEditor().panelInstance('area1');
											new nicEditor({buttonList : ['fontSize','fontFormat','fontFamily','bold','italic','underline','strikeThrough','ol','ul','subscript','superscript','html']}).panelInstance('area1');
											new nicEditor().panelInstance('area2');
											new nicEditor().panelInstance('area3');
											//new nicEditor().panelInstance('area4');
											new nicEditor().panelInstance('area5');
											
									  });
									  //]]>
									  </script>
  
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Title</label>

										<div class="col-sm-9">
											<textarea cols="80" rows="2" name="title" id="area1">
											</textarea>
										</div>
										
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Theory  </label>

										<div class="col-sm-9">
											<textarea cols="80" rows="5" name="theory" id="area2">
											</textarea>
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Objective  </label>

										<div class="col-sm-9">
											<textarea cols="80" rows="5" name="obj" id="area3">
											</textarea>
										</div>
										
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Experiment Stimulation Path  </label>

										<div class="col-sm-9">
											<input type="text"  id="form-field-1" placeholder="Experiment Stimulation Path" name="path" class="col-xs-10 col-sm-5" required />
										</div>
										
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Assignment Problem Statement </label>

										<div class="col-sm-9">
											<textarea cols="80" rows="5" name="prblm" id="area5">
											</textarea>
										</div>
										
									</div>
									<div class="form-group" align="center">
										<input type="submit" name="add_exp" class="btn btn-info" value="Add Experiment" >
										
										
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