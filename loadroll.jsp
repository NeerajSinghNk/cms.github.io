<%@ page import="java.sql.*" %>

<html>


	<%
	
		
		String a1=(String) request.getParameter("session");
		String b1=(String) request.getParameter("branch");
		
		String c1=(String) request.getParameter("semester");
		
		
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				
				ResultSet rs=stmt.executeQuery("select DISTINCT roll_no1 from Attendance where session1='"+a1+"' and branch1='"+b1+"' and semester1='"+c1+"' order by roll_no1 asc ");
				
				String m;
			
				out.println("<option>select</option>");
				
				while(rs.next())
				{
					m=rs.getString("roll_no1");
					out.println("<option>"+m+"</option>");
					
				}
				
				
				con.close();
			}
		catch(Exception e)
		{
			out.println(e);
		}
		
	%>