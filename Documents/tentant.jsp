<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RealOne</title>
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
      <div id="searc">
        <div class="tab" align="center">
          <h2>Welcome SecureDBaaS</h2>
          
        </div>
         <div id="sitename">
      <h1 id="logo">Tentant Login Panel</h1>
    </div>
     <div id="shoutout"> </div>
    <div id="useractions">
      <div id="headings">
        <h2><img src="images/create_indi_usr.jpg" alt="" width="25" height="22" /> <a href="tentantjoint.jsp">Create Individual Account <font color="#FF0000">*click her....</font></a> </h2>
       
      </div>
      <div id="login">
        <p><strong>Already registered ?</strong> <b> Login here to access your account</b></p>
        <div id="loginform">
          <form action="tentantlogin.jsp">
            <div class="formblock">
              <label ><B>Username</B></label>
              <input name="user" type="text" class="textfields" />
            </div>
            <div class="formblock">
              <label><B>Password</B></label>
              <input name="pass" type="text" class="textfields"/>
            </div>
            <div class="formblock">
              <input type="image" src="images/loginbutton.jpg" name="button" id="button" value="Submit" />
            </div>
            <div class="clear">&nbsp;</div>
            <p>
              <input name="" type="checkbox" value="" />
              <b>Remember me on this computer </b></p>
          </form>
        </div>
      </div>
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

