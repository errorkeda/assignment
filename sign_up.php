<?php
error_reporting(0);
include"connection.php";
$response=array();

$userid=$_POST["user_id"];
$username=$_POST["username"];
$phone=$_POST["phone"];
$password=$_POST["password"];
$status=$_POST["status"];

$q="INSERT INTO `user`(`user_id`, `username`, `phone`, `password`,  `status`) VALUES ('$userid','$username','$phone','$password','$status')";

$result=mysqli_query($conn,$q);
if($result)
{

    $rc = 1;
	    $mess = "You are signup Successfully";

        array_push($response, array("rc"=>$rc,"mess"=>$mess));
        echo json_encode($response);

}else
{
	$rc= 0;
	$mess="signup failed";
	array_push($response, array("rc"=>$rc,"mess"=>$mess));
	echo json_encode($response);

}

$conn->close();
	

?>