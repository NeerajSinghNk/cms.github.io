<%@ page import="java.sql.*" %>
	<%
	
		
		String rollno=(String)request.getParameter("roll");		
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				
				ResultSet rs=stmt.executeQuery("select * from marks where roll_no='"+rollno+"'");
				
				String m;
				while(rs.next())
				{
					m=(String)rs.getString("semester");
					out.println("<option>"+m+"</option>");
				}
								
				con.close();
			}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
				
	%>