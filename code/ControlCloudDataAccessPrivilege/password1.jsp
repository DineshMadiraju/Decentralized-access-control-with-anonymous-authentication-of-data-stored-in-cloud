<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<body>
<link rel="stylesheet" type="text/css" href="style.css" />


<%
String b=request.getParameter("uname");
String a = request.getParameter("pass");


String k=(String)session.getAttribute("aa");
System.out.println("firstname is"+k);

String l=(String)session.getAttribute("bb");
System.out.println("lastname is"+l);

String m=(String)session.getAttribute("cc");
System.out.println("email id"+m);

String n=(String)session.getAttribute("dd");
System.out.println("firstname is"+n);

Connection con = null;
Statement st = null;
ResultSet rs = null;


 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE reg SET uname='"+b+"',pass='"+a+"' where fname='"+k+"'");
response.sendRedirect("request.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
