<?php
error_reporting(0);
include"connection.php";

$response=array();
$userid=$_POST["userid"];

$sql="SELECT * FROM `task` WHERE user_id='$userid'";

$result = mysqli_query($conn,$sql);

 if($result->num_rows>0)
  {
       while($data=$result->fetch_assoc()){
          $t = array();
        
          $t["task_id"]                =$data["task_id"]; 
          $t["user_id"]           =$data["user_id"];
          $t["title"]          =$data["title"];
          $t["description"]=$data["description"];
          $t["pic"]             =$data["pic"];
          $t["create_date_time"]            =$data["create_date_time"];
          $t["status"]           =$data["status"];
          
          array_push($response,$t);
       }  

  }else
  {
    $rc = 0;
  $mess = "Data is not fetch";
  array_push($response, array("rc"=>$rc, "mess"=>$mess) );
  }

   echo json_encode($response);


?>