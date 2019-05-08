<%@ page import="java.sql.*"%>
<body>
<%
			String a=(String)request.getParameter("branch");
			String b=(String)request.getParameter("semester");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs1=st.executeQuery("select * from studentdetail where Branch='"+a+"' and semester='"+b+"' order by roll_no asc");
							String p,q,r="P";
							int i=0;
							out.println("<form method='post' action='submitAttendnce.jsp'>");
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th><th>Attendance</th></tr>");
							while(rs1.next())
							{
								p=rs1.getString("Name");
								q=rs1.getString("roll_no");
								
								out.println("<tr>");
									out.println("<td>"+p+"<input type='hidden' name='name"+i+"' id='name"+i+"' value='"+p+"'></td>");
									out.println("<td>"+q+"<input type='hidden' value='"+q+"' name='roll"+i+"' id='roll"+i+"'></td>");
									out.println("<div class='center'><td><input type='checkbox' name='check"+i+"' id='check"+i+"' value='"+r+"'></td></div>");
									
								out.println("</tr>");
								i++;
								
							}
							String j=String.valueOf(i);
							out.println("</table>");
							out.println("</form>");
							session.setAttribute("k",j);
							
					}catch(Exception e)
					{
						out.println(e);
					}
	%>
</body>