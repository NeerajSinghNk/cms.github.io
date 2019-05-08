<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<body>
	<%
	
		String name=(String)request.getParameter("use");
		String roll=(String)request.getParameter("pass");
	    
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:result");  
			 
			Statement stmt=con.createStatement();  
			
			String query="(insert into check(user_id,password) values ('"+name+"','"+roll+"'))";
			int i=0;
			i=stmt.executeUpdate(query);
			
			con.close();
			response.sendRedirect("home.jsp");
			}
			catch(Exception g)
			{
				out.println(g);
			}
	%>
</body>
</html>