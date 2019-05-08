<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import ="javax.sql.*" %>
<script src="sd.js">

</script>

<html>
<body>
	<%
	 String query="";
		String a=(String)request.getParameter("session");
		String b=(String)request.getParameter("branch");
		
		String c=(String)request.getParameter("semester");
		String d=(String)request.getParameter("subject");
			
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			 query="delete * from subject where sess='"+a+"' and dept='"+b+"' and semester="+c+" and sub='"+d+"'";
			i=stmt.executeUpdate(query);
		
			
			con.close();
			session.setAttribute("msg","Your data Deleted successfully ");
			response.sendRedirect("deleteSubject.jsp");
			
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	%>
</body>
</html>