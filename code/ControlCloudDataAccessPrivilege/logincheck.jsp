
<html>
<body bgcolor="#FF9900">
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
	 
        String uname=request.getParameter("uname");
	 String pass=request.getParameter("pass");
        
	    
		
		
         
	    try{
			
	     Connection con = databasecon.getconnection();
         PreparedStatement ps=con.prepareStatement("select  id,fname,lname, email,mno,gender from reg where uname='"+uname+"' and pass='"+pass+"'");
	     ResultSet rs=ps.executeQuery();
		 if(rs.next())
		 { 
		 int idw=rs.getInt("id");
		 String wid = Integer.toString(idw);
		 session.setAttribute("owid",wid);
		 String f=rs.getString("fname");
		 session.setAttribute("aa",f);
		 System.out.println("firstname is"+f);
		  String l=rs.getString("lname");
		 session.setAttribute("bb",l);
		 System.out.println("lastname is"+l);
		 
		 String em=rs.getString("email");
		 session.setAttribute("cc",em);
		 System.out.println("email is"+em);
		 
		  String mno=rs.getString("mno");
		 session.setAttribute("dd",mno);
		 System.out.println("mobile no"+mno);
		 
		 
		  String gender=rs.getString("gender");
		 session.setAttribute("ee",gender);
		 System.out.println("Gender"+gender);
				
		 	 
	     response.sendRedirect("details.jsp");
		 System.out.println(uname);
		
		 }
		
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
	
	
%>
</body>
</html>