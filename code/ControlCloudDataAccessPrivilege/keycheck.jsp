
<html>
<body bgcolor="#FF9900">
<%
 String z=(String)session.getAttribute("aa");
 System.out.println("file id is:"+z);
%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
	 
      String a=request.getParameter("nkey");
	   System.out.println("nkey"+a);
	 String b=request.getParameter("ownerkey");
	   System.out.println("ownerkey"+b);
	    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select * from cloud where nkey='"+a+"' and onwerkey='"+b+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
	     //response.sendRedirect("finaldown.jsp");
		 out.println("Your data downloading");
		 %>
		 <script>
		 alert("Your key is successfully verified");
		 window.location='verify1.jsp';
		</script>
		<%
		
		 }
	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
	
%>
</body>
</html>