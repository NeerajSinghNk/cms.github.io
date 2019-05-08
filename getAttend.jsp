<%@ page import="java.sql.*"%>
<%			
			
				String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String sess=(String)session.getAttribute("session");
				String br=(String)session.getAttribute("branch2");
				String f=(String)request.getParameter("subject");
				String g=(String)request.getParameter("date");
				int a1=0;
			String d[]=new String[100];
				try
				{
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						ResultSet rs = stmt.executeQuery("select DISTINCT date1 from Attendance  where subject1='"+f+"' order by date1 asc");
						while(rs.next())
						{
							d[a1]=(String)rs.getString("date1");
							a1++;
						}
				}catch(Exception e1)
				{
					out.println(e1);
				}
				if(f!="select" &&g=="")
				{
					try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m="",n="",o="",q="",r="";
						 String match="";
					
						
						
						int j,k,count=0;
						Statement stmt=con.createStatement();
							out.print("<table class='container' border='1'><tr><th colspan='"+a1+"'>Subject:"+f+"</th></tr><tr><th>Name</th><th>Roll_number</th>");
								for(int t=0;t<a1;t++)
								{
									ResultSet rs6=stmt.executeQuery("select DISTINCT lecture1 from Attendance where subject1='"+f+"' and date1='"+d[t]+"' order by lecture1 asc");
									while(rs6.next())
									{
										String lect=(String)rs6.getString("lecture1");
										out.print("<th>"+d[t]+"<br>-Lecture"+lect+"</th>");
									}
								}
								out.print("</tr>");
							for(j=0;j<1;j++)
							{

								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+a+"</td>");
								
								for(k=0;k<a1;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"' and subject1='"+f+"' and date1='"+d[k]+"'");
									while(rs5.next())
									{
										 r=(String)rs5.getString("attendance1");
										if(r.equals("P"))
										{
											out.println("<td style='background-color:green;'>"+r+"</td>");
										}
										else
										{
											out.println("<td style='background-color:red;'>"+r+"</td>");
										}
									}
								}
								out.println("</tr>");
									
							
						}
						out.println("</table>");
					}
						catch(Exception g1)
						{
							out.print(g1);
						}
				
				}
			else if((f!="select") &&(g!="") )
			{
				
				ResultSet rs,rs2;
				String query="SELECT DISTINCT roll_no1  From Attendance where  subject1='"+f+"' ORDER BY roll_no1";
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m="",n="",o="",q="",r="";
						 String match="";
					
						
						
						int j,k,count=0;
						Statement stmt=con.createStatement();
							out.print("<table class='container' border='1'><tr><th colspan='"+a+"'>Subject:"+f+"</th></tr><tr><th>Name</th><th>Roll_number</th>");
								for(int t=0;t<1;t++)
								{
									ResultSet rs6=stmt.executeQuery("select DISTINCT lecture1 from Attendance where subject1='"+f+"' and date1='"+g+"' order by lecture1 asc");
									while(rs6.next())
									{
										String lect=(String)rs6.getString("lecture1");
										out.print("<th>"+g+"<br>-Lecture"+lect+"</th>");
									}
								}
								out.print("</tr>");
							for(j=0;j<1;j++)
							{

								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+a+"</td>");
								
								for(k=0;k<1;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+a+"' and subject1='"+f+"' and date1='"+g+"'");
									while(rs5.next())
									{
										 r=(String)rs5.getString("attendance1");
										if(r.equals("P"))
										{
											out.println("<td style='background-color:green;'>"+r+"</td>");
										}
										else
										{
											out.println("<td style='background-color:red;'>"+r+"</td>");
										}
									}
								}
								out.println("</tr>");
									
							
						}
						out.println("</table>");
					}
						catch(Exception g1)
						{
							out.print(g1);
						}
				
			}
					%>	