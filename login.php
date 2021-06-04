<?php
error_reporting(0);
include "connection.php";
$response=array();

$userid=$_POST["userid"];
//echo $userid;

$q="SELECT * FROM user where user_id='$userid'";
$result=mysqli_query($conn,$q);
$data=mysqli_num_rows($result);
if($data==1)
{
	$rc=1;
	$mess="You are Login Successfully";
	array_push($response, array("rc"=>$rc,"mess"=>$mess));
	echo json_encode($response);
}else
{
	$rc=0;
	$mess="Login failed";
	array_push($response,array("rc"=>$rc,"mess"=>$mess));
	echo json_encode($response);
}



?>