<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<body>

<%
String password=(String)session.getAttribute("password");
System.out.println("password is"+password);

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
st.executeUpdate("UPDATE conreg SET password='"+password+"' where First_Name='"+a+"'");


%>
<script>
alert('Kindly check your mail and get your password');
window.location='conapprovedkey.jsp';
</script>

<%
}
catch(Exception ex)
{
	out.println(ex);
}
%>
