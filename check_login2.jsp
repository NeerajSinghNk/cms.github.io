	<%@ page import="java.sql.*"%>
<body>

	<%
		String userid=(String)request.getParameter("user");  
		String pwd=(String)request.getParameter("pass");
if((userid!=null) &&(pwd!=null))
{	
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
			Statement st= con.createStatement(); 
			ResultSet rs=st.executeQuery("select * from teacherdetail"); 
		
		
			while(rs.next())
			{ 
				String s=rs.getString("password");
				String t=rs.getString("ID");
				String u=rs.getString("name");
				String v=rs.getString("dept");
				
				
				if(s.equals(pwd) && t.equals(userid)) 
					{
						session.setAttribute("user",userid);
						session.setAttribute("pass",s);
						session.setAttribute("msg",u);
						session.setAttribute("branch2",v);
						response.sendRedirect("home2.jsp");
					}
			} 
			session.setAttribute("state","user-id or password may be wrong please fill the valid id or password");
				
			response.sendRedirect("login2.jsp");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
}
else{
	response.sendRedirect("index.html");
}
	%>
</body>
</html>