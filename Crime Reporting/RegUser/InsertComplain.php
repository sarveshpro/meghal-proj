<?php
if (!isset($_SESSION)) 
{
  session_start();
  
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	$UserId=$_SESSION['ID'];
	$cmbStation=$_POST['cmbStation'];
	$cmbType=$_POST['cmbType'];
	$txtDesc=$_POST['txtDesc'];
	$CDate=date("Y/m/d");
	$Status="Submited";
	
	// Establish Connection with MYSQL
	$con = mysql_connect ("localhost","root");
	// Select Database
	mysql_select_db("cms", $con);
	// Specify the query to Insert Record
	$sql = "insert into complaint_tbl (User_Id,Station_Name,Complaint_Type,Complaint_Desc,Complaint_Date,Status) values('".$UserId."','".$cmbStation."','".$cmbType."','".$txtDesc."','".$CDate."','".$Status."')";
	// execute query
	mysql_query ($sql,$con);
	// Close The Connection
	mysql_close ($con);
	
	echo '<script type="text/javascript">alert("Complaint Submited Succesfully");window.location=\'Complain.php\';</script>';

?>
</body>
</html>
