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
<ul><li><a href="admintable.jsp">ADMINDATABASE </a></li>
<li><a href="graph3.jsp">GRAPH </a></li>
<li><a href="admin.jsp">LOGOUT </a></li>
</ul>

</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">

  <table width="500" height="350"align="center" bordercolor="#FFE620" cellspacing="2" border="1">

 	<tr bgcolor="#FF9900"> 
 	 <h1 align="center">&nbsp;</h1>
 	 <h2 align="center">VIEW OWNER DATA</h2>

	<th align="center"height="41"><font id="logo">FILE ID</font></th>
	<th align="center"height="41"><font id="logo">FILE NAME </font></th>
	<th align="center"height="41"><font id="logo">USERDATA</font></th>
	<th align="center"height="41"><font id="logo">KEY</font></th>
	
	</tr>

      <% 

	try{
	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select * from cloud1";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	{
	  	
	%><tr>
		
 	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("fileid")%></font></strong></td>
  	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("fname")%></font></strong></td> 
      <td align="center" height="41"><textarea name="add" value="<%=rs.getString("userdata")%>"><%=rs.getString("userdata")%></textarea></td>
	   <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("filekey")%></font></strong></td> 
	
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
