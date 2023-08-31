<%@ page import="java.util.*"%>
<%@ page import="java.util.date.*"%>
<%@ page import="java.util.time.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Control Cloud Data</title>
<meta name="keywords" content="free website template, flower shop, website templates, CSS, HTML" />
<meta name="description" content="Flower Shop - free website template, W3C compliant HTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

 <link rel="stylesheet" href="style.css" media="screen" type="text/css" />
 <script type="text/javascript" src="canvasjs.min.js"></script>

<%
String java="java";
 try

        {

	Connection con=databasecon.getconnection();

	Statement st=con.createStatement();

	String sql="select count(nkey) from nkey";

	ResultSet rs=st.executeQuery(sql);

	while(rs.next())
	
	{ 
	int af=rs.getInt(1);
	   System.out.println("id is"+af);
	   
	     
	%>

<%
String ss="dotnet";
 try

        {

	Connection con1=databasecon.getconnection();

	Statement st1=con1.createStatement();

	String sql1="select count(onwerkey) from nkey";

	ResultSet rs1=st1.executeQuery(sql1);

	if(rs1.next())
	
	{ 
	int b=rs1.getInt(1);
	   System.out.println("id b"+b);
	   
	     
	%>
	
	
	
<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme2",//theme1
		title:{
			text: "N-AUTHORITIES KEY GENRATOR"              
		},
		animationEnabled: false,   // change to true
		data: [              
		{
			// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
			type: "column",
			dataPoints: [
				{ label: "N-KEY",  y:<%=af%>},
				{ label: "OWNERKEY", y: <%=b%> },
				
				//{ label: "mango",  y: 25  },
				//{ label: "grape",  y: 28  }
			]
		}
		]
	});
	chart.render();
}
</script>
<% }
  }
  

catch(Exception e)
{
out.println(e);
}
%>
<% }
  }
  

catch(Exception e1)
{
out.println(e1);
}
%>


</head>

<body>

<div class="header">
<ul>
<li><a href="graph3.jsp">BACK</a></li>
<li><a href="graph.jsp">GRAPH </a></li>
<li><a href="admin.jsp">LOGOUT </a></li>

</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content">
<div class="form" > 
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>

 <div class="fooder">
 </div>


</body>
</html>
