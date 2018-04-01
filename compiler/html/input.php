<?php
	session_start();
	ob_start();
	require_once "../config/dbconnect.php";
	include "../config/funlib/login_functions.php";

	
	$user_type = isLogin();
	if($user_type != null)
	{
		
		$user_id = $_SESSION['user_uid'];
		$user_ref_id = $_SESSION['user_ref_id'];
		$_SESSION["user_type"] = $user_type;
		$show = 1;
	}
	else
	{
		header('Location:../template/login.php');
		die("Access Denied :( ");
	}
	ob_end_flush();


?>
<?php
		require_once("header.php");
?>

    <div class="content-section">
        <div class="container">
            <div class="row">
                
                
						<?php
						$select_student = "SELECT `id`, `prn`, `name`, `mobile_no`, `email`, `department`, `current_semester`, `status` FROM `student` WHERE `id` = '$user_ref_id'";
						if ($res = mysqli_query($dbcon,$select_student)) {
							if (mysqli_num_rows($res) > 0) {
								while ($row = mysqli_fetch_assoc($res)) {
									
									$department = $row['department'];
									$sem = $row['current_semester'];
									$select_labs = "SELECT `id`, `name`, `department`, `semester` FROM `labs` WHERE `department` = '$department' AND `semester` = '$sem'";
									if ($res1 = mysqli_query($dbcon,$select_labs)) {
										if (mysqli_num_rows($res1) > 0) {
											while ($row1 = mysqli_fetch_assoc($res1)) {
												$id = $row1['id'];
												$name = $row1['name'];
												?>
					<div class="col-md-4">
                    <div class="product-holder">
                        <div class="product-item-4">
                            <div class="product-thumb">
                                <img src="images/<?php echo $name;?>.jpg" alt="<?php echo $name;?>">
                            </div> <!-- /.product-thumb -->
							
                            <div class="product-content overlay">
                                <h5><a href="exp_list.php?id=<?php echo $id;?>"><?php echo $name;?></a></h5>
                              <!--  <span class="tagline">Partner Name</span>
                                <span class="price">$30.00</span> 
                                <p>Details!</p>-->
                            </div> <!-- /.product-content -->
                        </div> <!-- /.product-item-2 -->
						<div class="clearfix"></div>
                    </div> <!-- /.product-holder -->
                </div> <!-- /.col-md-5 -->
                        <?php
												
											}
										}
								    }
								}
							}
					}
				?>
                        
                
            </div> <!-- /.row -->
           
        </div> <!-- /.container -->
    </div> <!-- /.content-section -->

    <div class="content-section">
        
            
    </div> <!-- /.content-section -->

    <div class="content-section">
        
           
    </div> <!-- /.content-section -->

     <?php
		require_once("footer.php");
	?>