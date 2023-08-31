<html>
<body bgcolor="#FF9900">
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
String id=request.getQueryString();
String host="", user="", pass="";

String aa=(String)session.getAttribute("pass");
System.out.println("password is"+aa);

String d=(String)session.getAttribute("email");
System.out.println("email is"+d);
//String emailid=(String)session.getAttribute("email");
/*String c = (String)session.getAttribute("mailn");
String d = (String)session.getAttribute("codet");
String e = (String)session.getAttribute("rd1");
String z = (String)session.getAttribute("nna");
	System.out.println("sucess mail:::"+c);
	System.out.println("sucess mail code:::"+d);*/
host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="kalpana72014@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="projects@2016"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =d; // out going email id

String from ="kalpana72014@gmail.com"; //Email id of the recipient

String subject ="Your Password is:";

//String messageText ="key is your user id";
String messageText ="USER PASSWORD IS:"+aa+"</b>";


boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);

try {
transport.sendMessage(msg, msg.getAllRecipients());
out.println("CLOUD APPROVED YOUR ACCOUNT AND YOUR PASSWORD SEND YOUR EMAILID"); // assume it was sent
response.sendRedirect("user.jsp");


}
catch (Exception err) {

out.println("message not successfully sended");// assume it’s a fail
}
transport.close();

%>
</body>
</html>