<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styl.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("database.php");
extract($_POST);

if(isset($Submit))
{
	$rs=mysql_query("select * from user where uname='$user' and password='$password'");
	if(mysql_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION['loggedin']="yes";
		$_SESSION[login]=$user;
		header("location:home.php?uname=$user");
	}
}


?>

<table width="100%" border="0">
  <tr>
    <td width="70%" height="25">&nbsp;</td>
    
    <td width="29%" bgcolor="#CC3333"><div align="center" class="style1">User Login </div></td>
  </tr>
  <tr>
    <td height="296" valign="top"><div align="center">
        <h1 class="style8">Wel come to Online Quiz</h1>
      
       
    </div></td>
    
    <td valign="top"><form name="form1" method="post" action="">
      <table width="200" border="0">
        <tr>
          <td><span class="style2">Login ID </span></td>
          <td><input name="user" type="text" ></td>
        </tr>
        <tr>
          <td><span class="style2">Password</span></td>
          <td><input name="password" type="password" id="pass2"></td>
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
          <td colspan=2 align=center class="errors">
		  <input name="Submit" type="submit" id="submit" value="Login">		  </td>
        </tr>
        <tr>
          <td colspan="2" bgcolor="#CC3300"><div align="center"><span class="style4">New User ? <a href="register.php">Signup Free</a></span></div></td>
          </tr>
      </table>
      <div align="center">
        <p class="style5"></p>
        </div>
    </form></td>
  </tr>
</table>

</body>
</html>
