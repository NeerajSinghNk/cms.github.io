	<%@ page import="java.sql.*"%>

<body>

	<%
		String userid=(String)request.getParameter("user");  
		String pwd=(String)request.getParameter("pass");
if((userid!=null) &&(pwd!=null))
{	
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			Connection con = DriverManager.getConnection("jdbc:odbc:result"); 
			Statement st= con.createStatement(); 
			ResultSet rs=st.executeQuery("select * from check"); 
		
		
			while(rs.next())
			{ 
				String s=rs.getString("password");
				String t=rs.getString("user_id");
				if(s.equals(pwd) && t.equals(userid)) 
					{
						session.setAttribute("user",userid);
						session.setAttribute("pass",pwd);
						response.sendRedirect("home.jsp");
					}
			} 
			session.setAttribute("state","user-id or password may be wrong please fill the valid id or password");
			
			response.sendRedirect("login.jsp");
			con.close();
		}
		catch(Exception e)
		{
			
		}
}
else{
	response.sendRedirect("index.html");
}
	%>
</body>
</html>