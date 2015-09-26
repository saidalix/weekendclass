<?php
//connection to the database
$slau = mysql_connect("localhost", "root", "");
mysql_select_db("work", $slau);
//get data
$a = $_POST['id'];
$b = $_POST['name'];
$c = $_POST['post'];
$d = $_POST['province'];
$e = $_POST['city'];
$f = $_POST['code'];
$j = $_POST['grade'];
$h = $_POST['year'];
$i = $_POST['grade_two'];
$g = $_POST['year_two'];
//insert into the table
$sql = "insert into send_school(id,name,post,province,city,code,grade,year,grade_two,year_two) values('$a', '$b', '$c', '$d' ,'$e','$f','$j','$h','$i','$g')";
$res = mysql_query($sql);
if($res){
echo "thanks you go back";
 }else{
 	echo "Error Check your administration";

 }



?>
