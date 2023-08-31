<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<%
 String z=request.getParameter("fileid");
System.out.println("file id is:"+z);

String email=(String)session.getAttribute("em");
System.out.println("email is"+email);

int y=(int)(Math.random()*10000000);
 	 String c=Integer.toString(y);
	 session.setAttribute("aa",c);
 	System.out.println("file key is"+c);
	
		int w=(int)(Math.random()*100000);
 	 String b=Integer.toString(w);
	 session.setAttribute("bb",b);
 	System.out.println("file key is"+b);

String a="Keyupdated";

Connection con = null;
Statement st = null;
ResultSet rs = null;

 try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("UPDATE cloud SET status='"+a+"',nkey='"+c+"',onwerkey='"+b+"' where fid='"+z+"'");
out.println("Consumer request send N-Authorities");
//response.sendRedirect("conkey.jsp");
%>
<script>
alert('Consumer send request for n-authorities');
window.location='conkey.jsp';
</script>
<%
}

catch(Exception ex)
{
	out.println(ex);
}


%>


 

	
