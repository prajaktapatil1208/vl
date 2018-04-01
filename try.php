<?php
$fileName = "a.c";
$fp = fopen($fileName,"r");
if( $fp == false )
{
  echo ( "Error in opening file" );
  exit();
}
  
while(!feof($fp))
{
  echo fgets($fp). "<br>";
}
?> 