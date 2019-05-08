<%@ page import="java.sql.*"%>

	
	<%
			String f=(String)request.getParameter("subject");
			String g=(String)request.getParameter("date");
			String h=(String)request.getParameter("lecture");
			String h1=(String)request.getParameter("roll");
			System.out.println("THE VALUE OF LECTURE::"+h);
			int totalRow=0;
			int a=0;
			int i=0;
			int b;
			String d[]=new String[100];
			String p[]=new String[30];
			//String d[]=new String[30];
			try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						ResultSet rs = stmt.executeQuery("select DISTINCT date1 from Attendance  where subject1='"+f+"' order by date1 asc");
						while(rs.next())
						{
							d[a]=(String)rs.getString("date1");
							a++;
						}
						for(b=0;b<a;b++)
						{
								ResultSet rs4 = stmt.executeQuery("select DISTINCT lecture1 from Attendance  where subject1='"+f+"' and date1='"+d[b]+"'");
								while(rs4.next())
								{
									totalRow++;
								}
						}
					
					System.out.println("The Value Of TOTALROW::"+totalRow);
				}catch(Exception e)
				{
					out.print(e);
				}
		
			if((f!="select") &&(g=="") &&(h.equals("select")) &&(h1.equals("select")))
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
						rs=stmt.executeQuery(query);
						while(rs.next())
								{
									p[i]=(String)rs.getString("roll_no1");
									
									i++;
								}
						
						
							
						
							out.print("<table class='container' border='1'><tr><th colspan='"+a+"'>Subject:"+f+"</th></tr><tr><th>Name</th><th>Roll_number</th>");
								for(int t=0;t<a;t++)
								{
									ResultSet rs6=stmt.executeQuery("select DISTINCT lecture1 from Attendance where subject1='"+f+"' and date1='"+d[t]+"' order by lecture1 asc");
									while(rs6.next())
									{
										String lect=(String)rs6.getString("lecture1");
										out.print("<th>"+d[t]+"<br>-Lecture"+lect+"</th>");
									}
								}
								out.print("</tr>");
							for(j=0;j<i;j++)
							{

								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+p[j]+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[j]+"</td>");
								
								for(k=0;k<a;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+p[j]+"' and subject1='"+f+"' and date1='"+d[k]+"'");
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
			else if((f!="select") &&(g=="") &&(h!="select") &&(h1.equals("select")))
			{
				String query="select * from Attendance where lecture1='"+h+"' and subject1='"+f+"' order by roll_no1 asc";
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m,n,o,q,r;
						 int count=0;
						Statement stmt=con.createStatement();
					
						out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th>");
						for(int l=0;l<1;l++)
						{
							ResultSet rs2=stmt.executeQuery("select DISTINCT date1 from Attendance where subject1='"+f+"' and lecture1='"+h+"'");
							while(rs2.next())
							{
								m=(String)rs2.getString("date1");
								out.print("<th>-"+m+"<br>-Lecture-"+h+"</th>");
								count++;
							}
						}out.print("</tr>");
						int l=0;
							ResultSet rs8=stmt.executeQuery("SELECT DISTINCT roll_no1  From Attendance where  subject1='"+f+"' ORDER BY roll_no1");
							while(rs8.next())
							{
								p[l]=(String)rs8.getString("roll_no1");
								l++;
							}
							for(int c1=0;c1<l;c1++)
							{
								ResultSet rs6=stmt.executeQuery("select * from Attendance where roll_no1='"+p[c1]+"'");
								if(rs6.next())
								{
																					
									q=(String)rs6.getString("name1");
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[c1]+"</td>");
								}
																

										for(int c2=0;c2<1;c2++)
										{
											ResultSet rs7=stmt.executeQuery("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and lecture1='"+h+"'");
											System.out.println("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and date1='"+g+"'");
											while(rs7.next())
											{
												r=(String)rs7.getString("attendance1");
												if(r.equals("P"))
												{
													out.println("<td style='background-color:green;'>"+r+"</td>");
												}
												else
												{
													out.println("<td style='background-color:red;'>"+r+"</td>");
												}
											}
											out.print("</tr>");
												
										}
								
								
								
						}
								
							out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
			}
			
			else if((f!="select") &&(g!="") &&(h.equals("select")) &&(h1.equals("select")))
			{
				String query="select * from Attendance where date1='"+g+"' and subject1='"+f+"' order by roll_no1 asc";
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m,n,o,q,r;
						 int count=0;
						Statement stmt=con.createStatement();
					
						out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th>");
						for(int l=0;l<1;l++)
						{
							ResultSet rs2=stmt.executeQuery("select DISTINCT lecture1 from Attendance where subject1='"+f+"' and date1='"+g+"'");
							while(rs2.next())
							{
								m=(String)rs2.getString("lecture1");
								out.print("<th>-"+g+"<br>-Lecture-"+m+"</th>");
								count++;
							}
						}out.print("</tr>");
						int l=0;
							ResultSet rs8=stmt.executeQuery("SELECT DISTINCT roll_no1  From Attendance where  subject1='"+f+"' ORDER BY roll_no1");
							while(rs8.next())
							{
								p[l]=(String)rs8.getString("roll_no1");
								l++;
							}
							for(int c1=0;c1<l;c1++)
							{
								ResultSet rs6=stmt.executeQuery("select * from Attendance where roll_no1='"+p[c1]+"'");
								if(rs6.next())
								{
																					
									q=(String)rs6.getString("name1");
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[c1]+"</td>");
								}
																

										for(int c2=0;c2<1;c2++)
										{
											ResultSet rs7=stmt.executeQuery("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and date1='"+g+"'");
											System.out.println("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and date1='"+g+"'");
											while(rs7.next())
											{
												r=(String)rs7.getString("attendance1");
												if(r.equals("P"))
												{
													out.println("<td style='background-color:green;'>"+r+"</td>");
												}
												else
												{
													out.println("<td style='background-color:red;'>"+r+"</td>");
												}
											}
											out.print("</tr>");
												
										}
								
								
								
						}
								
							out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
			}
			else if((f!="select") &&(g=="") &&(h.equals("select")) &&(h1!="select"))
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
								for(int t=0;t<a;t++)
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

								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+h1+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+h1+"</td>");
								
								for(k=0;k<a;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+h1+"' and subject1='"+f+"' and date1='"+d[k]+"'");
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
			else if((f!="select") &&(g!="") &&(h!="select") &&(h1.equals("select")))
			{
				String query="select * from Attendance where date1='"+g+"' and subject1='"+f+"' order by roll_no1 asc";
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String m,n,o,q,r;
						 int count=0;
						Statement stmt=con.createStatement();
						
						out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th><th>"+g+"-<br>-Lecture-"+h+"</th>");
						out.print("</tr>");
						int l=0;
							ResultSet rs8=stmt.executeQuery("SELECT DISTINCT roll_no1  From Attendance where  subject1='"+f+"' ORDER BY roll_no1");
							while(rs8.next())
							{
								p[l]=(String)rs8.getString("roll_no1");
								l++;
							}
							for(int c1=0;c1<l;c1++)
							{
								ResultSet rs6=stmt.executeQuery("select * from Attendance where roll_no1='"+p[c1]+"' ");
								if(rs6.next())
								{
																					
									q=(String)rs6.getString("name1");
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[c1]+"</td>");
								}
																

										for(int c2=0;c2<1;c2++)
										{
											ResultSet rs7=stmt.executeQuery("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and date1='"+g+"' and lecture1='"+h+"'");
											System.out.println("select attendance1 from Attendance where roll_no1='"+p[c1]+"' and subject1='"+f+"' and date1='"+g+"'");
											if(rs7.next())
											{
												r=(String)rs7.getString("attendance1");
												if(r.equals("P"))
												{
													out.println("<td style='background-color:green;'>"+r+"</td>");
												}
												else
												{
													out.println("<td style='background-color:red;'>"+r+"</td>");
												}
											}
											out.print("</tr>");
												
										}
								
								
								
						}
								
							out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
			}
			else if((f!="select") &&(g!="") &&(h.equals("select")) &&(h1!="select"))
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

								ResultSet rs1=stmt.executeQuery("select * from Attendance where roll_no1='"+h1+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name1");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+h1+"</td>");
								
								for(k=0;k<1;k++)
								{
									ResultSet rs5=stmt.executeQuery("select * from Attendance where roll_no1='"+h1+"' and subject1='"+f+"' and date1='"+g+"'");
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
			else if((f!="select") &&(g!="") &&(h!="select") &&(h1!="select"))
			{
				try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String s,t,q,r;
						 
						Statement stmt=con.createStatement();
						
						out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th><th>"+g+"-<br>-Lecture-"+h+"</th></tr>");
						ResultSet rs6=stmt.executeQuery("select * from Attendance where roll_no1='"+h1+"' and subject1='"+f+"' and lecture1='"+h+"' and date1='"+g+"'");
								while(rs6.next())
								{
																				
									q=(String)rs6.getString("name1");
									
										//System.out.println("value"+h1);
										out.println("<tr><td>"+q+"</td>");
										out.println("<td>"+h1+"</td>");
										r=(String)rs6.getString("attendance1");
										if(r.equals("P"))
										{
											out.println("<td style='background-color:green;'>"+r+"</td></tr>");
										}
										else
										{
											out.println("<td style='background-color:red;'>"+r+"</td></tr>");
										}
									
									
								}
								out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
			}
			
			
			
				
			
			
			%>
			