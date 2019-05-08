<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
	<body>
		<%
			String admin=(String)session.getAttribute("adm");
			String pwd1=(String)session.getAttribute("pass1");
			if((admin!=null))
			{
				if((admin.equals("Admin")) && (pwd1.equals("123456")))
				{
			
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:result"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from result_sub");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table border='1'><tr><th>Name</th><th>Roll_number</th><th>Branch</th><th>Semester</th><th>sub1</th><th>sub2</th><th>sub3</th><th>sub4</th><th>Percentage</th></tr>");
							while(rs.next())
							{
							
								p=rs.getString("name");
								q=rs.getString("roll_no");
								r=rs.getString("branch");
								s=rs.getString("semester");
								
								t=rs.getString("sub1");
								u=rs.getString("sub2");
								v=rs.getString("sub3");
								w=rs.getString("sub4");
								x=rs.getString("total");
								
								out.println("<tr>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
									out.println("<td>"+v+"</td>");
									out.println("<td>"+w+"</td>");
									
									out.println("<td>"+x+"</td>");
								out.println("</tr>");
								
							}
							out.println("</table>");
					}catch(Exception e)
					{
						
					}			
				}
			}
			
					out.println("<br><br><a href='logout.jsp'>logout our id click here</a>");
				
		%>
	</body>
</html>