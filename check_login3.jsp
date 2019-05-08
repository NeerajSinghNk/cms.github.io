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
			ResultSet rs=st.executeQuery("select * from studentdetail"); 
		
		
			while(rs.next())
			{ 
				String s=rs.getString("roll_no");
				String r=rs.getString("session1");
				String t=rs.getString("ID");
				String u=rs.getString("name");
				String v=rs.getString("branch");
				String w=rs.getString("semester");
				
				
				if(s.equals(userid) && t.equals(pwd)) 
					{
						session.setAttribute("user",userid);
						session.setAttribute("pass",s);
						session.setAttribute("session",r);
						session.setAttribute("msg",u);
						session.setAttribute("branch2",v);
						session.setAttribute("sem",w);
						response.sendRedirect("home3.jsp");
					}
			} 
			session.setAttribute("state","user-id or password may be wrong please fill the valid id or password");
				
			response.sendRedirect("login3.jsp");
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