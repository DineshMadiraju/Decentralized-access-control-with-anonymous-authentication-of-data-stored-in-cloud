<html>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <link rel="stylesheet" href="css/style.css">
</head>
<script language="JavaScript" type="text/javascript">
function validation()
{
var d=document.f.uname.value;
if(d=="")
{
alert("Enter Your Username");
document.f.uname.focus();
return false;
}
var b=document.f.pass.value;
if(b==""){
alert("Enter Your Password");
document.f.pass.focus();
return false;
}
}
</script>

<body>

 
<div class="header">
<ul><li><a href="index.html">HOME </a></li>
<li><a href="admin.jsp">CLOUD </a></li>
<li><a href="index.html">LOGOUT </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
  <h2 align="center">&nbsp; </h2>
 <form action="admincheck.jsp" class="login" name="f" method="post" onClick="return validation();">
    <h1>CLOUD</h1>
    <input type="text" name="uname" class="login-input" placeholder="USERNAME">
    <input type="password" name="pass" class="login-input" placeholder="PASSWORD">
    <input type="submit" value="Login" class="login-submit">
     </form>

 </div>
 
 <div class="fooder">
 </div>


</body></html>
