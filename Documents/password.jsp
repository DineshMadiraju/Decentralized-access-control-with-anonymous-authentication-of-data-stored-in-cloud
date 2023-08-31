<html>
<head>
<%
String k=(String)session.getAttribute("aa");
System.out.println("firstname is"+k);

String l=(String)session.getAttribute("bb");
System.out.println("lastname is"+l);

String m=(String)session.getAttribute("cc");
System.out.println("email id"+m);

String n=(String)session.getAttribute("dd");
System.out.println("firstname is"+n);

String o=(String)session.getAttribute("ee");
System.out.println("firstname is"+o);

%>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.uname.value;
if(a==""){
alert("Enter Your uname");
document.f.uname.focus();
return false;
}
var b=document.f.pass.value;
if(b==""){
alert("Enter Your password");
document.f.pass.focus();
return false;
}

}
</script>
 
</head>

<body>

<div class="header">
<ul>
<li><a href="password.jsp">CHANGEPASSWORD </a></li>
<li><a href="fileupload.jsp">OUTSOURCE DATA</a></li>
<li><a href="user.jsp">LOGOUT </a></li>

</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
 <form action="password1.jsp" name="f" enctype="multipart/form-data" onClick="return validation();">
  <h2 align="center">OWNER DETAILS </h2>
  <table width="352" height="382" align="center">
  <tr>
  <td>FIRSTNAME:</td><td><input type="text" name="fname" value="<%=k%>" readonly="readonly"></td>
  </tr>
  <tr>
  <td>LASTNAME:</td><td><input type="text" name="lname" value="<%=l%>" readonly="readonly"></td>
  </tr>
   <tr>
   <td>EMAILID:</td><td><input type="text" name="email" value="<%=m%>" readonly="readonly"></td>
  </tr>
  <tr>
  <td>USERNAME</td><td><input type="text" name="uname"></td>
  </tr>
   <tr>
   <td>CHANGEPASSWORD:</td><td><input type="text" name="pass"></td>
  </tr>
  <tr>
  <td></td><td><input type="image" src="images/request1.gif"></td></tr>
  
  </table>
 </form>
 </div>
 
 <div class="fooder">
 </div>


</body>
</html>
