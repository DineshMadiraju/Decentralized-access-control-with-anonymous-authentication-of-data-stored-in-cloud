<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<body>


<%
 String pass=(String)session.getAttribute("pass");
System.out.println("password is"+pass);

String d=(String)session.getAttribute("email");
System.out.println("email is"+d);

String a=(String)session.getAttribute("fname");
System.out.println("fname is"+a);

Connection con = null;
Statement st = null;
ResultSet rs = null;


 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE reg SET pass='"+pass+"' where fname='"+a+"'");
response.sendRedirect("approvedkey.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
