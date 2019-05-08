	<%@ page import="java.sql.*"%>
	<%
					String s1=(String)request.getParameter("subject");	
					String s2=(String)request.getParameter("date");	
					String s3=(String)request.getParameter("topic");	
					if(s1!="select" &&s2=="" &&s3.equals("select"))
					{
						try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o,p;
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from practical where subject='"+s1+"' order by ID desc");
						out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Topic</th><th>Questions</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
							
								n=(String)rs.getString("subject");
								p=(String)rs.getString("topic");
								m=(String)rs.getString("date1");
								o=(String)rs.getString("notice");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+o+"</td>");
								
							}			
							out.println("</table>");

							
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					else if(s1!="select" &&s2!="" &&s3.equals("select"))
					{
						try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o,p;
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from practical where subject='"+s1+"' and date1='"+s2+"'  order by ID desc");
						out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Topic</th><th>Questions</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
							
								n=(String)rs.getString("subject");
								p=(String)rs.getString("topic");
								m=(String)rs.getString("date1");
								o=(String)rs.getString("notice");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+o+"</td>");
								
							}			
							out.println("</table>");
							
							
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					else if(s1!="select" &&s2!="" &&s3!="select")
					{
						try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o,p;
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from practical where subject='"+s1+"' and date1='"+s2+"' and topic='"+s3+"' order by ID desc");
						out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Topic</th><th>Questions</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
							
								n=(String)rs.getString("subject");
								p=(String)rs.getString("topic");
								m=(String)rs.getString("date1");
								o=(String)rs.getString("notice");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+o+"</td>");
								
							}			
							out.println("</table>");
							
							
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					
					
						
						
						
					%>
					
				