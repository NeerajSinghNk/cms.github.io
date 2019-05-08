	<%@ page import="java.sql.*"%>	
<html>
	<head>
		<link rel="stylesheet" href="viewmarks.css">
	</head>
</html>	
<%

				out.println("<div id='table' >");
					
			try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from marks order by branch asc");
					String p,q,r,s,t,u,v,w,x,y,z,o;
					out.println("<table ><tr><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Roll_number</th><th>Name</th><th>sub1</th><th>sub2</th><th>sub3</th><th>sub4</th><th>percentage</th><th>Division</th></tr>");
					while(rs.next())
					{
					
						p=rs.getString("branch");
						q=rs.getString("semester");
						y=rs.getString("category");
						z=rs.getString("gender");
						r=rs.getString("roll_no");
						s=rs.getString("name");
						
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
					out.println("</table>");
					out.println("<button id='button7'><a href='logout.jsp' class='link1'>Log Out</a></button>");
					out.println("<button id='button6'><a href='home.jsp' class='link1'>Back</a></button>");
			}catch(Exception e)
			{
				out.println(e);
			}
				out.println("</div>");
	%>