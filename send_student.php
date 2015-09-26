<?php
//connection to the database
$slau = mysql_connect("localhost", "root", "");
mysql_select_db("work", $slau);
//get data
$a = $_POST['id'];
$b = $_POST['fname'];
$c = $_POST['lname'];
$d = $_POST['passport'];
$e = $_POST['gender'];
$f = $_POST['nationality'];
$g = $_POST['dd'];
$h = $_POST['mm'];
$i = $_POST['yy'];
$j = $_POST['email'];
$k = $_POST['adress'];
$l = $_POST['tel'];

if (!eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $j)){
echo "<center><h1>Invalid email</h1></center>";
}else{
echo "<center><h1>Valid Email</h1></center>";
} 

//insert into the table
$sql = "insert into send_student(id,fname,lname,passport,gender,nationality,dd,mm,yy,email,adress,tel) values('$a', '$b', '$c', '$d' ,'$e','$f','$g','$h','$i','$j','$k','$l')";
$res = mysql_query($sql);
if($res){
echo "thanks you <a href='index.php'>go back</a>";
 }else{
 	echo "Error Check your administration";

 }
?>
