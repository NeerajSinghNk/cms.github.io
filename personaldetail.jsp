<%@ page import="java.sql.*"%>
<link rel="stylesheet" href="personaldetail.css">
<%
			String s2=(String)session.getAttribute("use");
			out.println("<div id='table'>");
			if((s2!=null))
			{
				
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where Name='"+s2+"'");
							String p,q,r,s,t,u;
							out.println("<h1 align='center'><br>PERSONAL DETAIL<br></h1>");
							out.println("<table border='1'><tr><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
							while(rs.next())
							{
							
								p=rs.getString("Branch");
								q=rs.getString("semester");
								r=rs.getString("category");
								s=rs.getString("Gender");
								
								t=rs.getString("Name");
								u=rs.getString("roll_no");
								
								out.println("<tr>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
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