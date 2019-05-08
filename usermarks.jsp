<%@ page import="java.sql.*"%>
<link rel="stylesheet" href="usermarks.css">
<%
			String s2=(String)session.getAttribute("use");
			out.println("<div id='table'>");
			if((s2!=null))
			{
				
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from marks where name='"+s2+"'");
							String p,q,r,s,t,u,v,w,x,y,z;
							out.println("<h1 align='center'><br>YOUR ACADEMIC HISTORY<br></h1>");
							out.println("<table border='1'><tr><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Roll_number</th><th>Name</th><th>sub1</th><th>sub2</th><th>sub3</th><th>sub4</th><th>Percentage</th></tr>");
							while(rs.next())
							{
							
								p=rs.getString("branch");
								q=rs.getString("semester");
								r=rs.getString("category");
								s=rs.getString("gender");
								t=rs.getString("roll_no");
								u=rs.getString("name");
								v=rs.getString("sub1");
								w=rs.getString("sub2");
								x=rs.getString("sub3");
								y=rs.getString("sub4");
								z=rs.getString("total");
								
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
									out.println("<td>"+y+"</td>");
									out.println("<td>"+z+"</td>");
								out.println("</tr>");
								
							}
							out.println("</table>");
			out.println("<button id='button7'><a href='logout.jsp' class='link1'>Log Out</a></button>");
			
			out.println("<button id='button6'><a href='home.jsp' class='link1'>Back</a></button>");
		
			
					
					}catch(Exception e)
					{
						out.println(e);
					}
			}
					
%>					