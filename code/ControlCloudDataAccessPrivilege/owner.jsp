<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%
String oid=(String)session.getAttribute("owid");
System.out.println("wner id is"+oid);

int y=(int)(Math.random()*10000000);
 	 String b=Integer.toString(y);
	 session.setAttribute("aaa",b);
 	System.out.println("file key is"+b);
	
		int w=(int)(Math.random()*100000);
 	 String a=Integer.toString(w);
	 session.setAttribute("bbb",a);
 	System.out.println("file key is"+a);
 String c="PublicKey Requested";

Connection con=null;
PreparedStatement psmt=null;
try{
con=databasecon.getconnection();
psmt=con.prepareStatement("insert into nkey(nkey,onwerkey,status,oid) values(AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'),?,?)");
psmt.setString(1,a);
psmt.setString(2,b);
psmt.setString(3,c);
psmt.setString(4,oid);

psmt.executeUpdate();

response.sendRedirect("access.jsp");
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
%>