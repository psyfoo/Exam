<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
}
</style>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="90%" valign="top">
<div align="left"></div></td>
    <td width="10%">
     </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" bgcolor="#000000">
  <tr>
    <td width="100%" align="right"></td>
  </tr>
  </Table>
  <Table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	<?php
	if(isset($_SESSION['login']))
	{
	 echo "<div align=\"right\"><strong><a href=\"home.php\"> Home </a>|<a href=\"signout.php\">Signout</a></strong></div>";
	}
	 
	
	?>
	</td>
	
  </tr>
  
</table>
