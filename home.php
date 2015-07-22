<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php 
session_start();
include("header.php");
if(!$_SESSION['loggedin'])
{
	header("location:index.php");
	exit;
}
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styl.css" rel="stylesheet" type="text/css">
</head>

<body>
<h1 class='style8' align=center><?php echo ucwords($_GET['uname']); ?> welcome to Online Exam</h1>";
		<table width="28%"  border="0" align="center">
  <tr>
    <td width="7%" height="65" valign="bottom"></td>
    <td width="93%" valign="bottom" bordercolor="#0000FF"> <a href="sublist.php?uname" class="style4">Subject for Quiz </a></td>
  </tr>
  <tr>
    <td height="58" valign="bottom"></td>
    <td valign="bottom"> <a href="result.php" class="style4">Result </a></td>
  </tr>
</table>
 
</body>
</html>