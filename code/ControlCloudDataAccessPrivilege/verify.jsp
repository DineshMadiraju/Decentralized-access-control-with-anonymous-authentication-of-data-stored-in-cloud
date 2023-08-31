<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
 String z=request.getParameter("fileid");
session.setAttribute("aa",z);
System.out.println("file id is:"+z);

%>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
 <script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.nkey.value;
if(a==""){
alert("Enter Your nkey");
document.f.nkey.focus();
return false;
}
var b=document.f.ownerkey.value;
if(b==""){
alert("Enter Your ownerkey");
document.f.ownerkey.focus();
return false;
}

}
</script>

</head>

<body>

 
<div class="header">
<ul><li><a href="condetail.jsp">CONSUMERDETAILS </a></li>
<li><a href="consumerdb.jsp">OUTSOURCEDATABASE </a></li>
<li><a href="consumer.jsp">LOGOUT </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
  <h2 align="center">&nbsp; </h2>
  <h2 align="center">VERIFY YOUR KEYS </h2>
  <form action="keycheck.jsp" method="POST" name="f" onClick="return validation();">
  <table width="262" height="156" border="3" align="center" bordercolor="#993300">
  <tr>
  <td>N-AUTHOR KEY</td>
  <td><input type="text" name="nkey"></td>
  </tr>
   <tr>
  <td>OWNERKEY</td>
  <td><input type="text" name="ownerkey"></td>
  </tr>
  <tr><td></td><td><input type="submit" value="Verify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></td></tr>
  </table>
 </form>
 </div>
 
 <div class="fooder">
 </div>


</body>
</html>
