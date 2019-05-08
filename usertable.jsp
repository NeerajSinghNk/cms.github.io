<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
	<body>
		<%
			String user=(String)session.getAttribute("use");
			String pwd2=(String)session.getAttribute("pass2");
			if((user!=null))
			{
			
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:result"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from  where name='"+user+"'");
							String p,q,r,s,t,u,v,w;
							out.println("<table border='1'><tr><th>name</th><th>roll</th><th>sub1</th><th>sub2</th><th>sub3</th><th>sub4</th><th>sub5</th><th>sub6</th></tr>");
							while(rs.next())
							{
							
								r=rs.getString("name");
								p=rs.getString("roll");
								q=rs.getString("sub1");
								s=rs.getString("sub2");
								t=rs.getString("sub3");
								u=rs.getString("sub4");
								v=rs.getString("sub5");
								w=rs.getString("sub6");
								out.println("<tr>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
									out.println("<td>"+v+"</td>");
									out.println("<td>"+w+"</td>");
									out.println("</tr>");
								
							}
							out.println("</table>");
							
					}catch(Exception e)
					{
						
					}			
				}
				
					out.println("<br><br><a href='logout.jsp'>logout our id click here</a>");
			
				
		%>
		
	</body>
</html>