<?php
echo "stsrting";
$nodeJsPath = 'C:\xampp\htdocs\project\compiler';

exec("nodemon server.js 2>&1", $out, $err);

print_r($out);
?>