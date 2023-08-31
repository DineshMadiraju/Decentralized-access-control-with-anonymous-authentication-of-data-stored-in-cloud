<%@ page import="java.io.*,java.util.*" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<html>
<head>
<%
String k=(String)session.getAttribute("aa");
System.out.println("firstname is"+k);

String l=(String)session.getAttribute("bb");
System.out.println("lastname is"+l);

String m=(String)session.getAttribute("cc");
System.out.println("email id"+m);

String n=(String)session.getAttribute("dd");
System.out.println("firstname is"+n);

String o=(String)session.getAttribute("ee");
System.out.println("firstname is"+o);

String p=(String)session.getAttribute("fid");
System.out.println("file id is:"+p);
String oid=(String)session.getAttribute("owid");
System.out.println("wner id is"+oid);

%>
 

<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

<div class="header">
<ul>
<li><a href="details.jsp">OWNER DETAILS </a></li>
<li><a href="fileupload.jsp">FILEUPLOAD</a></li>
<li><a href="viewencrypt2.jsp">VIEWDB</a></li>
<li><a href="user.jsp">LOGOUT </a></li>

</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">

  <table width="500" height="350"align="center" border="1">

 	<tr bgcolor="#FF9900"> 
 
 
 	 <h1 align="center">&nbsp;</h1>
 	 <h2 align="center">VIEW OWNERDATA</h2>

	<th align="center"height="41"><font id="logo">FILE ID</font></th>
	<th align="center"height="41"><font id="logo">FILE NAME </font></th>
	<th align="center"height="41"><font id="logo">USERDATA</font></th>
	<th align="center"height="41"><font id="logo">KEY</font></th>

	

	</tr>

      <% 

	try{
	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select id,fileid,fname,userdata,filekey from cloud1 where wid='"+oid+"'";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	{
	  	
	%><tr>
		
 	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("fileid")%></font></strong></td>
  	  <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("fname")%></font></strong></td> 
      <td align="center" height="41"><%=rs.getString("userdata")%></td>
	   <td align="center" height="41"><strong><font  id="logo"><%=rs.getString("filekey")%></font></strong></td>
     
    </tr>
	<%}%>
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
