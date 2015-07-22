<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Signup</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="styl.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
extract($_POST);
include("database.php");
$rs=mysql_query("select * from user where uname='$uname'");
if (mysql_num_rows($rs)>0)
{
	echo "<br><br><br><div class=head1>Login Username Already Exists</div>";
	header( "refresh:3;url=register.php" );
	exit;
}
$query="insert into user(uname,password,cpassword,fullname,address,city,phone,email) values('$uname','$pass','$cpass','$name','$address','$city','$phone','$email')";
$rs=mysql_query($query)or die("Could Not Perform the Query");
echo "<br><br><br><div class=head1>$uname Your Account Created Sucessfully</div>";
echo "<br><div class=head1>Please Login using your Login ID to take Quiz</div>";
echo "<br><div class=head1><a href=index.php>Login</a></div>";


?>
</body>
</html>

