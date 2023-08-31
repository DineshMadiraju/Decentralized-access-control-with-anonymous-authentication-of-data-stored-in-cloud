<html>
<head>
<%
String a=(String)session.getAttribute("zz");
System.out.println("firstname is"+a);

String b=(String)session.getAttribute("yy");
System.out.println("lastname is"+b);

String c=(String)session.getAttribute("xx");
System.out.println("email id"+c);

String d=(String)session.getAttribute("ww");
System.out.println("firstname is"+d);

%>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

<div class="header">
<ul>
<li><a href="conpass1.jsp">CHANGEPASSWORD </a></li>
<li><a href="consumerdb.jsp">OUTSOURCE DATA</a></li>
<li><a href="consumer.jsp">LOGOUT </a></li>

</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
 <form action="#" name="f" enctype="multipart/form-data" onClick="return ">
  <h2 align="center">CONSUMER DETAILS</h2>
  <table width="352" height="382" align="center">
  <tr>
  <td>FIRSTNAME:</td><td><input type="text" name="fname" value="<%=a%>" readonly="readonly"></td>
  </tr>
  <tr>
  <td>LASTNAME:</td><td><input type="text" name="lname" value="<%=b%>" readonly="readonly"></td>
  </tr>
   <tr>
   <td>EMAILID:</td><td><input type="text" name="email" value="<%=c%>" readonly="readonly"></td>
  </tr>
  <tr>
  <td>MOBILE NO:</td><td><input type="text" name="mno" value="<%=d%>" readonly="readonly"></td>
  </tr>
   
  </table>
 </form>
 </div>
 
 <div class="fooder">
 </div>


</body>
</html>
