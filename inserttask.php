<?php
error_reporting(0);
include"connection.php";
$response=array();
$userid=$_POST["userid"];
$title=$_POST["title"];
$dec=$_POST["dec"];
$status=$_POST["status"];

$filename=$_FILES["image"]["name"];
$tempname=$_FILES["image"]["tmp_name"];
$folder="photos/".$filename;
move_uploaded_file($tempname,$folder);

$sql="INSERT INTO `task`(`user_id`, `title`, `description`, `pic`,`status`) VALUES ('$userid','$title','$dec','$folder','$status')";

$result = mysqli_query($conn,$sql);


if($result)
{
	        $response_code=1;
            $mass="Successfull";
           echo json_encode(array("res"=>$response_code,"mass"=>$mass));

}else
{
	       $response_code=0;
            $mass="failed";
          echo  json_encode(array("res"=>$response_code,"mass"=>$mass));
}




?>