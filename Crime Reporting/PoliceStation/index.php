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
<title>CFI Crime Portal</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_wrapper">
   <?php
   include "Header.php"
   ?>
    <div id="templatemo_content">
    	<div class="section_w800">
           <h2>Welcome To CFI Police Portal</h2>
		   <table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr>
               <td><img src="images/cfipolice.png" width="312" height="312" /></td>
               <td valign="top" align="justify"><blockquote>
                 <p align="justify" class="style1"><span class="style2"> C</span>FI Police/Invigilators Panel <br> <br>  CFI Police/Invigilators portal gets track of registered complaints by Users. Each and Every Registered Police Hub can log in onto the portal and get updated regarding complaints. Thus, When a complaint has been addressed, it is switched to Processed.	 </p>
                 <p align="justify" class="style1"><span class="style2">V</span>arious other services like tracking Missing Persons, Adding Missing Person area wise on to the portal, adding and addressing Most Wanted Criminals are processed using Police portal. <br> <br> </p>
               </blockquote>                 </td>
             </tr>
           </table>
           <p>&nbsp;</p>
           
            
            
        
        <div class="cleaner"></div>
        </div> <!-- end of section_w760 -->
    
    </div> <!-- end of templatemo_content -->
   <?php
   include "Footer.php";
   ?>

</div> <!-- end of templatemo_wrapper -->
</body>
</html>