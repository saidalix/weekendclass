<?php
//connection to the database
$slau = mysql_connect("localhost", "root", "");
mysql_select_db("work", $slau);
//get data
$a = $_POST['id'];
$b = $_POST['title'];
$c = $_POST['sname'];
$d = $_POST['initial'];
$f = $_POST['physical'];
$g = $_POST['tel'];
$h = $_POST['email'];
$i = $_POST['address'];
$j = $_POST['phone'];
$k = $_POST['job'];


//insert into the table
$sql = "insert into send_guardian(id,title,sname,initialt,physical,tel,email,address,phone,job) values('$a', '$b', '$c', '$d' ,'$f','$j','$h','$i','$j','$k')";
$res = mysql_query($sql);
if($res){
echo "thanks you go back";
 }else{
 	echo "Error Check your administration";

 }



?>
