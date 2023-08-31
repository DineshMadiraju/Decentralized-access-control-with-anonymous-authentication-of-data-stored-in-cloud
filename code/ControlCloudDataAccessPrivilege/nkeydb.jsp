<%@ page import="java.io.*,java.util.*" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

<div class="header">
<ul>
<li><a href="nkeydb.jsp">N-AUTHORITIES </a></li>
<li><a href="admin.jsp">LOGOUT </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">

  <table width="500" height="350"align="center" border="2" bordercolor="#CC3300">

 	<tr bgcolor="#FF9900"> 
 	 <h1 align="center">&nbsp;</h1>
 	 <h2 align="center">N-AUTHORITIES DATABASE</h2>

	<th align="center"height="41"><font id="logo">FILE ID</font></th>
	<th align="center"height="41"><font id="logo">OWNERKEY</font></th>
	<th align="center"height="41"><font id="logo">N_KEY</font></th>
	<th align="center"height="41"><font id="logo">STATUS</font></th>
	<th align="center"height="41"><font id="logo">RESPONSE</font></th>
		
	</tr>

      <% 

	try{
	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select id,onwerkey,nkey,status from nkey";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	{
    String ow=rs.getString("onwerkey");
	session.setAttribute("owner",ow);
	System.out.println("ownerkey is"+ow);
	
	String st1=rs.getString("status");
	session.setAttribute("stat",st1);
	System.out.println("status is"+st1);
		  	
	%><tr>
		
 	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("id")%></font></strong></td>
  	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("onwerkey")%></font></strong></td> 
     <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("nkey")%></font></strong></td> 
	   <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("status")%></font></strong></td> 
	<td align="center" height="41"><a href="statusupdate.jsp?<%=rs.getString("id")%>"><input type="submit" value="Response"></td>
     <%}%>
    </tr>
 	 </table>

    <%
	}
	catch(Exception ex)
	{
	out.println("Error in connection : "+ex);
	}
	%>
  </div>
 
 <div class="fooder">
 </div>


</body>
</html>
