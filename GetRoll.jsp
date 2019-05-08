<%@ page import="java.sql.*" %>

<html>


	<%
	
		System.out.println("run loadroll.jsp");
		String branc=(String) request.getParameter("branch");
		System.out.println("branch"+branc);
		String sm=(String) request.getParameter("semester");
		System.out.println("semester"+sm);
		
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				
				ResultSet rs=stmt.executeQuery("select * from studentdetail where Branch='"+branc+"' and Semester='"+sm+"' and roll_no not in (select roll from ParentDetail) ");
				
				String m;
			
				out.println("<option>select roll</option>");
				
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