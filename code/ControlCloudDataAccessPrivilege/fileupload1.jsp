<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.text.DecimalFormat" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.Queue" %>
<html>
<head>

</head>
<body>
<%
Thread.sleep(100);
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Documents\\");
		String paramname=null;
		String fid=null,filename=null,userdata=null,filesize=null,fkey=null,filename1=null;
		String status="waiting";
          File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName, 1024 * 1024); // 10MB
           
			 
			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("fid"))
				{
					fid=multi.getParameter(paramname);
					session.setAttribute("fid",fid);
					System.out.println("file id is"+fid);
				}
				
				if(paramname.equalsIgnoreCase("filename"))
				{
					filename=multi.getParameter(paramname);
					session.setAttribute("filename",filename);
					System.out.println("file name is"+filename);
				}
				
							
				if(paramname.equalsIgnoreCase("userdata"))
				{
					userdata=multi.getParameter(paramname);
					session.setAttribute("userfile ",userdata);
				}
				
				if(paramname.equalsIgnoreCase("fkey"))
				{
					fkey=multi.getParameter(paramname);
					session.setAttribute("fkey ",fkey);
				}
				if(paramname.equalsIgnoreCase("status"))
				{
					status=multi.getParameter(paramname);
					session.setAttribute("fkey ",status);
				}
			
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			filename1 = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("\\Documents\\"+filename1);
			file1 = new File(fPath);
			
			FileInputStream fs = new FileInputStream(file1);
			DecimalFormat df= new DecimalFormat("#.##");
			list.add(fs);
			
		}		
	}
	         FileInputStream fs1 = null;
			Connection con2=databasecon.getconnection(); 

			PreparedStatement ps=con2.prepareStatement("insert into cloud(fid,filename,userdata,fkey,status,filesize)values(?,AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'),AES_ENCRYPT(?, 'key'),?,AES_ENCRYPT(?, 'key'))");
			
       	       		
       			ps.setString(1,fid);
				ps.setString(2,filename);
				ps.setBinaryStream(3,(InputStream)fs1,(int)(file1.length()));
				ps.setString(4,fkey);
			    ps.setString(5,status);
				
				double bytes = file1.length();
		double kb=bytes/1024;
	
	filesize=Double.toString(kb);
	ps.setString(6,filesize);
	
				 if(f == 0)
			ps.setObject(7,null);
			
		else if(f == 1)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(3,fs1,fs1.available());
		}	
				
							int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("ownerkeyreq.jsp");
			}
			else
			{
				response.sendRedirect("index.html?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
%>

    

</body>
</html>