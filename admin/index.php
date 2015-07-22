<?php
session_start()
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Administrative Login - Online Exam</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../styl.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("../database.php");
extract($_POST);

if(isset($Submit))
{
	$rs=mysql_query("select * from admin where admin='$admin' and password='$apass'");
	if(mysql_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$user;
		$_SESSION['alogin']="true";
		header('location:admin.php?aname=$admin');
	}
	
}
?>

<p class="head1">Adminstrative Login </p>
<form name="form1" method="post" action="">
<table width="490" border="0">
  <tr>
    <td width="106"><span class="style2"></span></td>
    <td width="132"><span class="style2"><span class="head1"></span></span></td>
    <td width="238"><table width="219" border="0" align="center">
  <tr>
    <td width="163" class="style2">Login ID </td>
    <td width="149"><input name="admin" type="text" id="admin"></td>
  </tr>
  <tr>
    <td class="style2">Password</td>
    <td><input name="apass" type="password" id="pass"></td>
  </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
          <td colspan="2"><span class="errors">
            <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
          </tr>
  <tr>
    <td class="style2">&nbsp;</td>
    <td><input name="Submit" type="submit" id="submit" value="Login"></td>
  </tr>
</table></td>
  </tr>
</table>

</form>

</body>
</html>
