	<%@ page import="java.sql.*"%>
	<%
	String a=(String)request.getParameter("year");
	String b=(String)request.getParameter("session");
	 String c=(String)request.getParameter("branch");
	String d=(String)request.getParameter("semester");
	String e=(String)request.getParameter("roll");
						if(a!="select" &&b!="select" &&c!="select" &&d!="select" &&e!="select")
						{
						try
						{
						
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
							
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							 String i,j,k,l,m,n,o,p;
							Statement stmt=con.createStatement();
							ResultSet rs=stmt.executeQuery("select * from complain where roll_no='"+e+"' order by ID desc");
							out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Roll_Number</th><th>Complain</th></tr>");
					
								while(rs.next())
								{
									i=(String)rs.getString("year1");
									j=(String)rs.getString("session1");
									k=(String)rs.getString("branch1");
									l=(String)rs.getString("semester1");
									
									n=(String)rs.getString("roll_no");
									o=(String)rs.getString("notice");
									m=(String)rs.getString("date1");
									out.println("<tr><td>"+i+"</td>");
									out.println("<td>"+j+"</td>");
									out.println("<td>"+k+"</td>");
									out.println("<td>"+l+"</td>");
									out.println("<td>"+m+"</td>");
									out.println("<td>"+n+"</td>");
									out.println("<td>"+o+"</td></tr>");
								
									
								}			
											con.close();
								out.println("</table>");
							}
							catch(Exception g1)
							{
								out.println(g1);
							}				
						}
						
	%>
					
				