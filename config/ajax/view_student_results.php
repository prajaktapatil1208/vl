<?php
	session_start();
	require_once "../dbconnect.php";
	require_once "../funlib/user_mgmt_functions.php";
	
	if(isset($_POST['prn']))
	{
		echo $prn = $_POST['prn'];
?>

<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th>SR NO
													</th>
													<th>Lab</th>
													
													<th>Experiment Name</th>
													<th> Submitted File
													</th>
													<th >Grade</th>

													
												</tr>
											</thead>

											<tbody>
												<tr>
													
								<?php
									$select_sub = "SELECT  `filename`, `grade`,`labs`.`name` as `lname`,`experiments`.`name` as `ename` FROM `submissions`,`student`,`labs`,`experiments` WHERE `student`.`prn` = '$prn' AND `submissions`.`stud_id` =`student`.`id` AND `submissions`.`lab_id` =`labs`.`id` AND `submissions`.`exp_id`=`experiments`.`id` ORDER BY  `labs`.`id`,`experiments`.`id`";
									if ($res = mysqli_query($dbcon,$select_sub)) {
										if (mysqli_num_rows($res) > 0) {
											$count= 1;
											while ($row = mysqli_fetch_assoc($res)) {
												
												?>
												<tr>
													
												<td>
														<?php echo $count;?>
													</td><td>
														<?php echo $row['lname'];?>
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