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
<title>Crime Management System</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_wrapper">
   <?php
   include "Header.php"
   ?>
    <div id="templatemo_content">
    	<div class="section_w800">
           <h2>Welcome To Crime Management System</h2>
           
            
            <?php
			$Id = $_GET['Id'];

// Establish Connection with MYSQL
$con = mysql_connect("localhost","root");
// Select Database
mysql_select_db("cms", $con);
// Specify the query to Update Record
$sql = "Update complaint_tbl set Status='Processed' where Complaint_Id=".$Id."";
// Execute query
mysql_query($sql,$con);
// Close The Connection
mysql_close($con);
echo '<script type="text/javascript">alert("Complaint Processed Succesfully");window.location=\'Complains.php\';</script>';
            ?>
        
        <div class="cleaner"></div>
        </div> <!-- end of section_w760 -->
    
    </div> <!-- end of templatemo_content -->
   <?php
   include "Footer.php";
   ?>

</div> <!-- end of templatemo_wrapper -->
</body>
</html>