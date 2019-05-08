<%@ page import="java.sql.*"%>
<body>

	<%	
		out.println("<div align='center'>");
		String s1=(String)request.getParameter("session");
		String s2=(String)request.getParameter("branch");
		String s3=(String)request.getParameter("roll");
		if(s1!=null)
		{	
			
							try
								{
						
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
									
									Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
									 
									Statement stmt=con.createStatement();  
							
							
										
										ResultSet rs=stmt.executeQuery("select * from studentdetail where session1='"+s1+"' and branch='"+s2+"' and  roll_no='"+s3+"'");
										String o,p,q,r,s,t,u;
									
										out.println("<div id=''><table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
										while(rs.next())
										{
										
											o=rs.getString("session1");
											p=rs.getString("branch");
											q=rs.getString("semester");
											r=rs.getString("category");
											s=rs.getString("gender");
											
											t=rs.getString("name");
											u=rs.getString("roll_no");
											
											out.println("<tr>");
												out.println("<td>"+o+"</td>");
												out.println("<td>"+p+"</td>");
												out.println("<td>"+q+"</td>");
												out.println("<td>"+r+"</td>");
												out.println("<td>"+s+"</td>");
												out.println("<td>"+t+"</td>");
												out.println("<td>"+u+"</td>");
												out.println("</tr>");
											}
												out.println("</table>");
						}
						catch(Exception g)
						{
							out.println(g);
						}
		out.println("<button id='button1'>Delete</button>");
			out.println("</form ></div>");
		out.println("</div></div>");
		out.println("</div>");
		
		}
 %>
 
 </body>