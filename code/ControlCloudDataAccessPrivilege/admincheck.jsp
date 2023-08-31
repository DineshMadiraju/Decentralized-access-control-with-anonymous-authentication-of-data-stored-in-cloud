<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Identity-based Encryption</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FF9900">
<%
 String a=request.getParameter("uname");

 String b=request.getParameter("pass");

 System.out.println(a);
 System.out.println(b);

 if((a.equals("admin"))&& (b.equals("admin")))
 {

	response.sendRedirect("admin1.jsp?message=success");
 }
 else if((a.equals("nkey"))&& (b.equals("nkey")))
	{ 
 response.sendRedirect("nkeydb.jsp?message=success");
 }
%>
</body>
</html>