<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>


<%
String password=(String)session.getAttribute("password");
System.out.println("password is"+password);

Connection con = null;
Statement st = null;
ResultSet rs = null;

String a = request.getParameter("First_Name");
session.setAttribute("fname",a);

String b = request.getParameter("Last_Name");
String c = request.getParameter("Email_Id");
session.setAttribute("email",c);
String d = request.getParameter("Mobile_Number");
String e = request.getParameter("Gender");
String f = request.getParameter("City");
String g = request.getParameter("Pin_Code");
String h = request.getParameter("State");
String i = request.getParameter("Country");




try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into conreg(First_Name,Last_Name,Email_Id,Mobile_Number,Gender,City,Pin_Code,State,Country) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')");
%>
<script>
alert('Kindly check your mail and get your password');
window.location='conpass.jsp';
</script>
<%

//response.sendRedirect("conreg.jsp?Message=success");

}

catch(Exception ex)
{
	out.println(ex);
}
%>
