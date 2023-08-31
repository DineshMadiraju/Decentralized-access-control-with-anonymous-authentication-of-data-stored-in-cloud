<html>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <link rel="stylesheet" href="css/style.css">
 <script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.fname.value;
if(a==""){
alert("Enter Your fname");
document.f.fname.focus();
return false;
}
var b=document.f.lname.value;
if(b==""){
alert("Enter Your lname");
document.f.lname.focus();
return false;
}
var c=document.f.email.value;
if(c==""){
alert("Enter Your email");
document.f.email.focus();
return false;
}
var d=document.f.mno.value;
if(d==""){
alert("Enter Your mno");
document.f.mno.focus();
return false;
}

var f=document.f.access.value;
if(f==""){
alert("Choose your request");
document.f.access.focus();
return false;
}
var g=document.f.uname.value;
if(g==""){
alert("Enter your username");
document.f.uname.focus();
return false;
}
}
</script>
 
  <%
	
	 int x=(int)(Math.random()*10000000);
 	 String fkey=Integer.toString(x);
	 session.setAttribute("pass",fkey);
 	System.out.println("password is:"+fkey);
	%>
	
</head>

<body>

 
<div class="header">
<ul><li><a href="index.html">HOME </a></li>
<li><a href="user.jsp">DATAOWNER </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
 <form action="register.jsp" class="login" name="f" method="post" onClick="return validation();">
    <h1>REGISTRATION</h1>
	 
    <p> 
      <input type="text" name="fname" class="login-input" placeholder="Firstname">
      <input type="text" name="lname" class="login-input" placeholder="Lastname">
      <input type="email" name="email" class="login-input" placeholder="Email Address" autofocus>
      <input type="text" name="mno" class="login-input" placeholder="Mobile no">
      <select name="gender" class="login-input">
        <option name="gender" >GENDER</option>
        <option>Male</option>
        <option>Female</option>
      </select>
         <select name="access" class="login-input">
        <option name="access">TYPE OF REQUEST</option>
        <option>PublicAccess</option>
        <option>PrivateAccess</option>
      </select>
    
      <input type="text" name="uname" class="login-input" placeholder="Username">
      <input type="submit" value="REQUEST CLOUD" class="login-submit">
    </p>
  </form>

 </div>
 
 <div class="fooder">
 </div>


</body></html>
