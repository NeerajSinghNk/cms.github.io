<%@ page import="java.sql.*"%>
<link rel='stylesheet' href='update.css'>
<script src="ajax.js">

</script>
<%
		out.println("<h1 align='center'>UPDATE MARKS</h1>");
		out.println("<button id='button7'><a href='logout.jsp' class='link1'>Log Out</a></button>");
			
			out.println("<button id='button6'><a href='home.jsp' class='link1'>Back</a></button>");
			
				out.println("<div id='dp'>BRANCH::<select id='branch1' name='branch1'>");
						out.println("<option>select</option>");
						out.println("<option>Cs</o2ption>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
						out.println("</select></div>");
			
						out.println("<div id='semes'>SEMESTER::<select id='semester1' name='semester1' onchange='fun5();'>");
							out.println("<option>select</option>");
							out.println("<option>1</option>");
							out.println("<option>2</option>");
							out.println("<option>3</option>");
							out.println("<option>4</option>");
							out.println("<option>5</option>");
							out.println("<option>6</option>");
						out.println("</select></div>");
						out.println("<form action='updatemarks.jsp' >");
						out.println("<div id='rll'>Roll_number::<select id='roll' name='roll' onchange='funn2();'></div>");
							out.println("<option>select</option>");
						out.println("</select></div>");
						out.println("<div id='divv'>");
						String var=(String)session.getAttribute("num3");
						String s1=(String)session.getAttribute("num4");
						if(var!=null)
						{
						try
						{
						
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 
						Statement stmt=con.createStatement();  
						
						ResultSet rs=stmt.executeQuery("select * from marks where roll_no='"+s1+"'");
						String p,q,r,s,t,u,v,w,x,y,z,o;
						out.println("<span>"+var+"</span>");
						out.println("<div id='tbl'><table border='1'><tr><th>Branch</th><th>Semester</th><th>CATEGORY</th><th>GENDER</th><th>Roll_number</th><th>Name</th><th>sub1</th><th>sub2</th><th>sub3</th><th>sub4</th><th>percentage</th><th>Division</th></tr>");
						while(rs.next())
						{
						
								p=rs.getString("branch");
								q=rs.getString("semester");
								r=rs.getString("roll_no");
								s=rs.getString("name");
								y=rs.getString("category");
								z=rs.getString("gender");
								
								t=rs.getString("sub1");
								
								u=rs.getString("sub2");
								v=rs.getString("sub3");
								w=rs.getString("sub4");
								x=rs.getString("total");
								
								o=rs.getString("division");
								out.println("<tr>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+y+"</td>");
									out.println("<td>"+z+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
			
									out.println("<td>"+v+"</td>");
									out.println("<td>"+w+"</td>");
									out.println("<td>"+x+"</td>");
								if(o.equals("honour"))
									{
										out.println("<td id='hn'>"+o+"</td>");
									}
									else if(o.equals("first division"))
									{
										out.println("<td id='fr'>"+o+"</td>");
									}
									else if(o.equals("second division"))
									{
										out.println("<td id='sc' >"+o+"</td>");

									}
									else if(o.equals("third division"))
									{
										out.println("<td id='thi' >"+o+"</td>");

									}
									else
									{
										out.println("<td id='fail' >"+o+"</td>");

									}
								out.println("</tr>");
								
						}
					out.println("</table><div>");
					}
						catch(Exception g)
							{
								out.println(g);
							}
				}
				session.removeAttribute("num3");
						out.println("</div>");
						
%>						