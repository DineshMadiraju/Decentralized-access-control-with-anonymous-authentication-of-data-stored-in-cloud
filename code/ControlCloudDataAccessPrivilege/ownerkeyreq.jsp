<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

<%

String ownerkey=(String)session.getAttribute("fkey");
System.out.println("firstname is"+ownerkey);

int y=(int)(Math.random()*10000000);
 	 String c=Integer.toString(y);
	 session.setAttribute("aa",c);
 	System.out.println("file key is"+c);


Connection con=null;
PreparedStatement psmt=null;
try{
con=databasecon.getconnection();
psmt=con.prepareStatement("insert into nkey(nkey,onwerkey) values(AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'))");
psmt.setString(1,c);
psmt.setString(2,ownerkey);

psmt.executeUpdate();

response.sendRedirect("viewencrypt1.jsp?Message=encryption Data");
}
catch(Exception ex)
{
out.println("Error in connection : "+ex);
}
%>