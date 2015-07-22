<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Quiz List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="styl.css" rel="stylesheet" type="text/css">
<?php 
session_start();
include("header.php");
if(!$_SESSION['loggedin'])
{
	header("location:index.php");
	exit;
}
?>
</head>
<body>
<?php
include("database.php");
echo "<h2 class=head1> Select Subject to Give Quiz </h2>";
$rs=mysql_query("select * from subject");
echo "<table align=center>";
while($row=mysql_fetch_row($rs))
{
	echo "<tr><td align=center ><a href=showtest.php?subid=$row[0]><font size=4>$row[1]</font></a>";
}
echo "</table>";
?>
</body>
</html>