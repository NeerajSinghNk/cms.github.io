<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>


<html>
	<body>
		<%
			
String s1=(String)session.getAttribute("adm");			
String s2=(String)session.getAttribute("pass1");
                System.out.println("Converted String: " + s1);  			
                System.out.println("Converted String: " + s2);  			
			Date date = Calendar.getInstance().getTime();  
                DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
                String s = dateFormat.format(date);  
                System.out.println("Converted String: " + s);  
                 
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						String query;
						query="insert into loginTime (user,password,time) values ('"+s1+"','"+s2+"','"+s+"')";
						Statement stmt=con.createStatement();
						int j=0;
						System.out.println("Converted String: " + query); 
						j=stmt.executeUpdate(query);
					}
					catch(Exception e)
					{
						out.println(e);
					}					
				
			
			session.invalidate();
			response.sendRedirect("index.html");
		%>
	</body>
</html>