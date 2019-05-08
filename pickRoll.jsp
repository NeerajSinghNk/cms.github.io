<%@ page import="java.sql.*" %>

<html>


	<%
	
	
		
		String branc=(String) request.getParameter("branch");
		String sm=(String) request.getParameter("semester");
		
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				
				ResultSet rs=stmt.executeQuery("select * from studentdetail where branch='"+branc+"' and semester='"+sm+"' and roll_no not in (select roll_no from marks) ");
				
				String m;
			
				out.println("<option>select</option>");
				
				while(rs.next())
				{
					m=rs.getString("roll_no");
					out.println("<option>"+m+"</option>");
				}
				
				con.close();
			}
		catch(Exception e)
		{
			out.println(e);
		}
		
	%>