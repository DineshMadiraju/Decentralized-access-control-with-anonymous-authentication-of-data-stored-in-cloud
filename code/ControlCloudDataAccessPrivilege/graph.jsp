<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
<html>
<head>
<title>Control Cloud Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div class="header">
<ul><li>
<li><a href="graph3.jsp">BACK</a></li>
<li><a href="graph.jsp">GRAPH </a></li>
<li><a href="admin.jsp">LOGOUT </a></li>
</ul>
</div>
 <div class="header1">
  </div>
 
 <p class="piu"></p>
 <div class="content" align="center">
  <h2 align="center">&nbsp; </h2>
  <%
String images1="images";
String dirName = getServletContext().getRealPath("");
String dirName1=dirName+"/"+images1+"/";

System.out.println("path"+dirName1);

String query="SELECT fid,count from cloud";
//String query1="SELECT vname,count from caching";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/controlcloud","com.mysql.jdbc.Driver","root","");
//JDBCCategoryDataset dataset1=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/controlcloud","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery(query);
//dataset1.executeQuery( query1);
JFreeChart chart = ChartFactory.createLineChart("patten", "fid", "count",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File(dirName1+"logotype4.jpg"), chart, 500, 250);
}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
<img  src="images/logotype4.jpg" width="377" height="250"> </div>
 
 <div class="fooder">
 </div>


</body>
</html>
