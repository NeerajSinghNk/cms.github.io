<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import ="javax.sql.*" %>
<script src="sd.js">

</script>

<html>
<body>
	<%
	
		String a=(String)request.getParameter("session");
		String b=(String)request.getParameter("branch");
		
		String c=(String)request.getParameter("semester");
		String d=(String)request.getParameter("category");
		String e=(String)request.getParameter("gender");
		
		String f=(String)request.getParameter("name");
		String g=(String)request.getParameter("roll");
	    
			session.setAttribute("sess",a);
			session.setAttribute("br",b);
			session.setAttribute("roll",g);
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			String query="(insert into studentdetail(session1,branch,semester,category,gender,name,roll_no) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"'))";
			int i=0;
			String roll;
			ResultSet rs=stmt.executeQuery("select roll_no from studentdetail where roll_no='"+g+"'");
			if(rs.next())
			{
					session.setAttribute("value","The student already exist");
					con.close();
					response.sendRedirect("studentdetail.jsp");
				
				
			}
			i=stmt.executeUpdate(query);
			con.close();
			if(i!=0)
			{
				session.setAttribute("msg","Your data successfully inserted");
			response.sendRedirect("studentdetail.jsp");
		
			}
				
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	%>
</body>
</html>