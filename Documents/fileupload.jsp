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


String owner1=(String)session.getAttribute("owner");
System.out.println("owner1 is"+owner1);

String status1=(String)session.getAttribute("stat");
System.out.println("status is"+status1);
String a="approved";
%>
 <%
    Integer fid =(Integer)application.getAttribute("fid");
    if( fid ==null || fid == 0 ){
     fid = 100;
    }else{
       fid +=1;
    }
    application.setAttribute("fid", fid);
	%>

<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />

 <script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.f.filename.value;
if(a==""){
alert("Enter Your Filename");
document.f.filename.focus();
return false;
}

}
</script>

</head>

<body>

<div class="header">
<ul>
<li><a href="details.jsp">OWNERDETAIL </a></li>
<li><a href="fileupload.jsp">OUTSOURCE </a></li>
<li><a href="viewencrypt2.jsp">OWNERDBAS</a></li>
<li><a href="user.jsp">LOGOUT </a></li>

</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
  <h2 align="center">OUTSOURCE DATA UPLOAD</h2>
 
    <form action="fileupload1.jsp" name="f" enctype="multipart/form-data" method="post" onClick="return validation();">       
  <table width="373" height="345" align="center">
  <tr>
  <td>FILEID </td><td><input type="text" name="fid" value="<%= (int) (Math.random() * 1000) %>" readonly="readonly"></td>
  </tr>
  <tr>
  <td>FILENAME</td><td><input type="text" name="filename"></td></tr>
  <tr>
  <td>USERDATA</td><td><input type="file" name="userdata"></td>
  </tr>
  <%
    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select * from nkey where status='"+a+"' and onwerkey='"+owner1+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
		
		}
		else
		{
		response.sendRedirect("request1.jsp");
		}
	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
%>
		
  <tr><td>N-KEY </td><td><input type="text" name="fkey" value="<%=owner1%>" readonly="readonly"></td>
  <tr><td></td><td><input type="image" src="images/upload.png" width="150" height="50"></td></tr>
  </table>
 </form>
 </div>
 
 <div class="fooder">
 </div>


</body>
</html>
