<%@ page import="java.sql.*"%>
<body>
<%
			String a=(String)request.getParameter("branch");
			String b=(String)request.getParameter("semester");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where Branch='"+a+"' and semester='"+b+"' order by roll_no asc");
							String p,q;
							int i=0;
							out.println("<form action='submitProMarks.jsp' method='post' >");
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_number</th><th>Obtain Marks</th></tr>");
							while(rs.next())
							{
								p=rs.getString("Name");
								q=rs.getString("roll_no");
								out.println("<tr>");
									out.println("<td>"+p+"<input type='hidden' name='name"+i+"' value='"+p+"'></td>");
									out.println("<td>"+q+"<input type='hidden' value='"+q+"' name='roll"+i+"'></td>");
									out.println("<td><input type='text' name='obtain"+i+"' pattern='^(30|[1-3]?[0-9])$' id='total1' required='required'></td>");
									
								out.println("</tr>");
								i++;
								
							}
							String j=String.valueOf(i);
							out.println("</table>");
						
							session.setAttribute("k",j);
								out.println("</form>");
							
					}catch(Exception e)
					{
						out.println(e);
					}
	%>
</body>