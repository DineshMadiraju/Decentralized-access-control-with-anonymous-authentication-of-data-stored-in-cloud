<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% String b=(String)session.getAttribute("Firstname");%>
<% String u=(String)session.getAttribute("Uid");%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RealOne</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/forms.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function reg()
	{
		var a=document.f2.userFile.value;
	if(a=="")
	{
	alert ("Select your File Her");
	document.f2.userFile.focus();
	return false;
	}
	}
</script>
<script src="js/jquery-1.1.3.1.pack.js" type="text/javascript"></script>
<link rel="stylesheet" href="js/jquery.tabs.css" type="text/css" media="print, projection, screen">
</head>
   <BODY>
   <div id="wrap">
<div class="clear"></div><h1>Welcome!!!!<%=b%></h1>
<div class="clear"></div>
<div class="clear"></div>
  <div id="topbar">
    <ul>
      <li class="current"><a href="index.html">Home</a></li>
      <li><a href="#">View Data</a></li>
      <li><a href="#">Download Data</a></li>
      <li><a href="tentant.jsp">Logout</a></li>
	  <li></li>
      
     
    </ul>
  </div>
  <div id="header">
    <div >
      <h1 id="logo">Distributed, Concurrent, and Independent Access to Encrypted Cloud Databases</h1>
    </div>
    
    <div>
     
      <div id="login">
       
        <div id="loginform">
          
        </div>
      </div>
    </div>
  </div>
  <div id="content">
    <div id="home_main">
      <div id="search">
        <div class="tab" align="center">
          <h2>Welcome SecureDBaaS</h2>
         
      <FORM name="f2" method="POST" action="viewselectfile.jsp" onsubmit="return reg()">
       <H1>File Upload</H1>
       <table cellspacing="10">
       <tr align="center"><td>
         <h2>Select File: </h2></td><td>
         <INPUT type="File" name="userFile" size="20"></td></tr>
         <tr ><td></td><td>
         <input type="image" src="images/img_submit.gif" alt="Submit" width="60" height="48"></td></tr>
         </table>
         </FORM>
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
         
   </BODY>
</HTML>