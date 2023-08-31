<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RealOne</title>
<script type="text/javascript" src="script/jai.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/forms.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.1.3.1.pack.js" type="text/javascript"></script>
<link rel="stylesheet" href="js/jquery.tabs.css" type="text/css" media="print, projection, screen">
</head>
<body>
<div id="wrap">
<div class="clear"></div>
<div class="clear"></div>
<div class="clear"></div>
  <div id="topbar">
    <ul>
      <li class="current"><a href="index.html">Home</a></li>
      <li><a href="tentant.jsp">Tenant Acess</a></li>
      <li><a href="cloudserver.jsp">Cloud Server</a></li>
      <li><a href="index.html">Back</a></li>
      </ul>
  </div>
  <div>
  
 <div id="header">
      <h1 id="logo">Distributed, Concurrent, and Independent Access to Encrypted Cloud Databases</h1>
    </div>
    
  </div>
  <div id="content">
    <div id="home_main">
      <div id="search">
        <div class="tab" align="center">
          <h2>Welcome Tentant Registration</h2>
          
        </div>
        <div class="container">
        
           <form action="userreg.jsp" name="form" method="get" onSubmit="return validation()">
 
      <table cellspacing="15px">
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td >FIRST NAME</td>
<td><input type="text" name="First_Name" maxlength="30"/>

</td>

 
<!----- Last Name ---------------------------------------------------------->

<td >LAST NAME</td>
<td><input type="text" name="Last_Name" maxlength="30"/>

</td>

 

<td >DATE OF JOINT</td>
 	<td><input name="Datejoint" type="text" value="<%= new java.util.Date() %>" size="22" maxlength="30" readonly="readonly"/></td>

</tr>
 
<!----- Email Id ---------------------------------------------------------->
<tr>
<td >EMAIL ID</td>
<td><input type="text" name="Email_Id" maxlength="100" /></td>

<td >MOBILE NUMBER</td>
<td>
<input type="text" name="Mobile_Number" maxlength="10" />

</td>

 

<td >GENDER</td>
<td >
Male <input type="radio" name="Gender" value="Male" />
Female <input type="radio" name="Gender" value="Female" />
</td>
</tr>
 
<!----- Address ---------------------------------------------------------->
<tr >
<td>ADDRESS <br /><br /><br /></td>
<td><textarea name="Address" rows="4" cols="30"></textarea></td>

<td >CITY</td>
<td><input type="text" name="City" maxlength="30" />

</td>

<td >PIN CODE</td>
<td><input type="text" name="Pin_Code" maxlength="6" />

</td>
</tr>
 
<!----- State ---------------------------------------------------------->
<tr>
<td >STATE</td>
<td><input type="text" name="State" maxlength="30" />

</td>

<td >COUNTRY</td>
<td><input type="text" name="Country" value="India" readonly /></td>

<td >USER NAME</td>
<td><input type="text" name="User_Name" maxlength="30"/>

</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td > PASSWORD</td>
<td><input type="password" name="password" maxlength="30"/>

</td>

<td colspan="2" align="center" >
<input type="submit" value="Submit" >
<input type="reset" value="Reset" >
</td>
</tr>
</table>
 
</form>

        </div>
      </div>
    </div>
    
   
    <div class="clear">&nbsp;</div>
  </div>
  <div id="footer">
    <div id="upperfooter"> </div>
    <div id="lowerfooter"> <span class="backtotop"> <a href="#">Back To Top</a> </span></div>
  </div>
</div>
</body>
</html>

