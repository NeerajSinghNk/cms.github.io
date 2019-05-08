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
		String e=(String)request.getParameter("sub");
		String f=(String)request.getParameter("sub_code");
		String g=(String)request.getParameter("paper_code");
		String h=(String)request.getParameter("type");
			session.setAttribute("sess",a);
			session.setAttribute("br",b);
			session.setAttribute("sm",c);
			session.setAttribute("sb",e);
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			int i=0;
			 query="update subject set sub='"+e+"',sub_code="+f+",paper_code="+g+",T_N_P='"+h+"' where sess='"+a+"' and dept='"+b+"' and semester="+c+" and sub='"+d+"'";
			i=stmt.executeUpdate(query);
		
			
			con.close();
			session.setAttribute("msg","Your data Updated successfully ");
			response.sendRedirect("updateSubject.jsp");
			
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	%>
</body>
</html>