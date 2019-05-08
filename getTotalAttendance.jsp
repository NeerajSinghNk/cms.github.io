<%@ page import="java.sql.*"%>
<%			
			
				String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String sess=(String)session.getAttribute("session");
				String br=(String)session.getAttribute("branch2");
				String f=(String)request.getParameter("subject");
			String d[]=new String[100];
		int a1=0;
		int totalRow=0;
			try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						ResultSet rs = stmt.executeQuery("select DISTINCT date1 from Attendance  where subject1='"+f+"' order by date1 asc");
						while(rs.next())
						{
							d[a1]=(String)rs.getString("date1");
							a1++;
						}
						for(int b=0;b<a1;b++)
						{
								ResultSet rs4 = stmt.executeQuery("select DISTINCT lecture1 from Attendance  where subject1='"+f+"' and date1='"+d[b]+"'");
								while(rs4.next())
								{
									totalRow++;
								}
						}
						
				}catch(Exception e)
				{
					out.print(e);
				}
		
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m="",n="",o="",q="",r="";
						 String match="";
						
						
						int i=0;
						int j,k,count=0;
						Statement stmt=con.createStatement();
						
				
				out.print("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th><th>Subject</th><th>Total-Lecture</th><th>Attend-Lecture</th><th>Percent</th></tr>");
							
							
								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"' and subject1='"+f+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									m=(String)rs1.getString("subject1");
									
								}
								for(k=0;k<1;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"' and subject1='"+f+"'");
									while(rs5.next())
									{
										String Attend=(String)rs5.getString("attendance1");
										if(Attend.equals("P"))
										{
											count++;
										}
									}
								}
								float percent=(float)((count*100)/totalRow);
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+a+"</td>");
									out.println("<td>"+m+"</td>");
									out.println("<td>"+totalRow+"</td>");
									out.println("<td>"+count+"</td>");

								if(percent>=75.00)
								{
										out.println("<td style='background-color:green;'>"+percent+"%</td>");
								}
								else if(percent<75.00 &&percent>=60.00)								
								{
									out.println("<td style='background-color:yellow;'>"+percent+"%</td>");
								}
								else if(percent<60.00 &&percent>=45.00)
								{
									out.println("<td style='background-color:#ff00ff;'>"+percent+"%</td>");
								}
								else if(percent<45.00 &&percent>=33.00)
								{
									out.println("<td style='background-color:#ff6666;'>"+percent+"%</td>");
								}
								else if((percent>33.00) &&(percent==00.00))
								{
									out.println("<td style='background-color:red;'>"+percent+"%</td>");
								}
								
								count=0;
								
							out.println("</table>");
						}
					catch(Exception g1)
						{
							out.print(g1);
						}

%>