<?php
//connection to the database
$slau = mysql_connect("localhost", "root", "");
mysql_select_db("work", $slau);

//get data
$aa = $_POST['id'];
$b = $_POST['title'];
$c = $_POST['initial'];
$d = $_POST['sname'];
$e = $_POST['gender'];
$f = $_POST['post'];
$j = $_POST['tel'];
$h = $_POST['email'];
$i = $_POST['address'];
$j = $_POST['cphone'];
$k = $_POST['work'];


//insert into the table
$sql = "insert into send_parents(student_id,title,initial,sname,gender,physical,tel,email,address,cphone,job,work) values('$aa', '$b', '$c' ,'$e','$f','$j','$h','$i','$j','$k')";
$done = mysql_query($sql) or die('can not connect to mysql_query');
if($done){
echo "thanks you go back";
 }else{
 	echo "Error Check your administration";

 }



?>
