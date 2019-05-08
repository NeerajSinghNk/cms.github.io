	<%@ page import="java.sql.*"%>
	<%
					String s1=(String)request.getParameter("subject");	
					String s2=(String)request.getParameter("date");	
					if(s1!="select" &&s2=="")
					{
						try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o;
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from notice where subject='"+s1+"' order by ID desc");
						out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Notice</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
								m=(String)rs.getString("date1");
								n=(String)rs.getString("subject");
								o=(String)rs.getString("notice");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
								out.println("<td>"+o+"</td>");
								
							}			
							out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					else if(s1!="select" &&s2!="")
					{
						try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o;
						Statement stmt=con.createStatement();
						ResultSet rs=stmt.executeQuery("select * from notice where subject='"+s1+"' and date1='"+s2+"'order by ID desc");
						out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Notice</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
								m=(String)rs.getString("date1");
								n=(String)rs.getString("subject");
								o=(String)rs.getString("notice");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
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
					
				