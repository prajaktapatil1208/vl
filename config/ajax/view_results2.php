<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/user_mgmt_functions.php";
	
	if(isset($_POST['lab']) && isset($_POST['dept']) && isset($_POST['sem']))
	{
		$lab_id = $_POST['lab'];
		$dept = $_POST['dept'];
		$sem = $_POST['sem'];
?>

<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th>SR NO
													</th>
													<th>PRN</th>
													<th>Student Name</th>
													<th>Experiment Name</th>
													<th> Submitted File
													</th>
													<th >Grade</th>

													
												</tr>
											</thead>

											<tbody>
												<tr>
													
								<?php
									$select_sub = "SELECT `student`.`name` as `sname`,`student`.`prn` ,`experiments`.`name` as `ename`, `experiments`.`id` as `exp_id`,`student`.`id` as `stud_id`,`grade`,`filename` FROM `submissions`,`student`,`experiments` WHERE  `lab_id` = '$lab_id' AND `student`.`id` = `submissions`.`stud_id` AND `experiments`.`id` = `submissions`.`exp_id` AND `student`.`department` ='$dept'  AND `student`.`current_semester` = '$sem' ORDER BY  `student`.`prn`";
									if ($res = mysqli_query($dbcon,$select_sub)) {
										if (mysqli_num_rows($res) > 0) {
											$count= 1;
											while ($row = mysqli_fetch_assoc($res)) {
												
												?>
												<tr>
													
												<td>
														<?php echo $count;?>
													</td><td>
														<?php echo $row['prn'];?>
													</td><td>
														<?php echo $row['sname'];?>
													</td><td>
														<?php echo $row['ename'];?>
													</td><td>
														<?php echo "<a href='getContents.php?name=".$row['filename']."'> Click to open</br></a>";?>
													</td><td>
														<?php
															echo $row['grade'];
														
													?>
													</td>
													</tr>
												<?php
												$count++;
											}
										}
									}
								
								?>
								</tbody>
								</table>
								<?php
	}
	?>