<?php
session_start();
require_once "config/dbconnect.php";
require_once "config/funlib/login_functions.php";
require_once "config/funlib/stud_mgmt_functions.php";

print_r($_SESSION);
$stud_id = $_SESSION['[user_ref_id'];

$target_dir = "submissions/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);

$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

$target_file = $target_dir ."myfile.".$imageFileType;

$_FILES['fileToUpload']['name'] = "myfile.".$imageFileType;
move_uploaded_file($_FILES['fileToUpload']['tmp_name'],$target_file);

?>