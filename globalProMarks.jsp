<%@ page import="java.sql.*"%>

	
	<%
			String f=(String)request.getParameter("subject");
			String g=(String)request.getParameter("test");
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
						ResultSet rs = stmt.executeQuery("select DISTINCT date1 from promarks where subject1='"+f+"' order by date1 asc");
						while(rs.next())
						{
							d[a]=(String)rs.getString("date1");
							a++;
						}
				}catch(Exception e)
				{
					out.print(e);
				}
		
			if((f!="select") &&(g.equals("select")))
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
						
						
							String s,t1;
						
							out.print("<table class='container' border='1'><tr><th colspan='5'>Subject:"+f+"</th></tr><tr><th>Name</th><th>Roll_number</th>");
								for(int t=0;t<a;t++)
								{
									ResultSet rs6=stmt.executeQuery("select * from promarks where subject1='"+f+"' and date1='"+d[t]+"'");
									if(rs6.next())
									{
										String lect=(String)rs6.getString("test");
										String lect1=(String)rs6.getString("total");
										out.print("<th>-"+lect+"-<br>"+d[t]+"<br>MM:-"+lect1+"-<br>Obtain Marks</th>");
									}
								}
								out.print("</tr>");
							for(j=0;j<i;j++)
							{

								ResultSet rs1=stmt.executeQuery("select * from studentdetail where roll_no='"+p[j]+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[j]+"</td>");
																	System.out.println("select * from promarks where roll_no1='"+p[j]+"' and subject1='"+f+"' and date1='"+d[0]+"' ");
									for(k=0;k<a;k++)
									{
										ResultSet rs5=stmt.executeQuery("select * from promarks where roll1='"+p[j]+"' and subject1='"+f+"' and date1='"+d[k]+"'");
		
											if(rs5.next())
											{
					
													r=(String)rs5.getString("obtain");
													if(!r.equals("A"))
													{
														out.println("<td style='background-color:green;color:#ffffff;'>"+r+"</td>");
													}
													else
													{
														out.println("<td style='background-color:red;color:#ffffff;'>"+r+"</td>");
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
			else if((f!="select") &&(g!="select"))
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
						
						
							
						
							out.print("<table class='container' border='1'><tr><th colspan='3'>Subject:"+f+"</th></tr><tr><th>Name</th><th>Roll_number</th>");
								for(int t=0;t<1;t++)
								{
									ResultSet rs6=stmt.executeQuery("select * from promarks where subject1='"+f+"' and test='"+g+"'");
									if(rs6.next())
									{
										String lect=(String)rs6.getString("date1");
										String lect1=(String)rs6.getString("total");
										out.print("<th>-"+g+"-<br>"+lect+"<br>MM:-"+lect1+"-<br>Obtain Marks</th>");
									}
								}
								out.print("</tr>");
							for(j=0;j<i;j++)
							{

								ResultSet rs1=stmt.executeQuery("select * from studentdetail where roll_no='"+p[j]+"'");
								if(rs1.next())
								{
									q=(String)rs1.getString("name");
									
									
								}
									out.println("<tr><td>"+q+"</td>");
									out.println("<td>"+p[j]+"</td>");
																	System.out.println("select * from promarks where roll_no1='"+p[j]+"' and subject1='"+f+"' and date1='"+d[0]+"' ");
									for(k=0;k<1;k++)
									{
										ResultSet rs5=stmt.executeQuery("select * from promarks where roll1='"+p[j]+"' and subject1='"+f+"' and test='"+g+"'");
		
											if(rs5.next())
											{
					
													r=(String)rs5.getString("obtain");
													if(!r.equals("A"))
													{
														out.println("<td style='background-color:green;color:#ffffff;'>"+r+"</td>");
													}
													else
													{
														out.println("<td style='background-color:red;color:#ffffff;'>"+r+"</td>");
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
			