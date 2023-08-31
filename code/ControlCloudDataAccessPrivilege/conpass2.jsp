<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>


<html>
<head>
<%
String z = request.getParameter("pass");

String a=(String)session.getAttribute("zz");
System.out.println("firstname is"+a);

String b=(String)session.getAttribute("yy");
System.out.println("lastname is"+b);

String c=(String)session.getAttribute("xx");
System.out.println("email id"+c);

String d=(String)session.getAttribute("ww");
System.out.println("firstname is"+d);

Connection con = null;
Statement st = null;
ResultSet rs = null;


 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE conreg SET password='"+z+"' where First_Name='"+a+"'");
response.sendRedirect("consumerdb.jsp?Message=success");
}

catch(Exception ex)
{
	out.println(ex);
}
%>
%>