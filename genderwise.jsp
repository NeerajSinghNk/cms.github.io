<%@ page import="java.sql.*"%>
	<%		
			String br1=(String)request.getParameter("branch");
			String br2=(String)request.getParameter("semester");
			String br3=(String)request.getParameter("category");
			String br4=(String)request.getParameter("gender");
			if((br1!="select") &&(br2.equals("select")) &&(br3.equals("select")) &&(br2.equals("select")))
			{
				
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where Branch='"+br1+"'");
							String p,q,r,s,t,u;
							out.println("<table border='1'><tr><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
							while(rs.next())
							{
							
								p=rs.getString("Branch");
								q=rs.getString("semester");
								r=rs.getString("category");
								s=rs.getString("Gender");
								
								t=rs.getString("Name");
								u=rs.getString("roll_no");
								if((r.equals(br3)) &&(s.equals(br4)))
								{
									out.println("<tr>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
									out.println("</tr>");
								}
							}
							out.println("</table>");
					}catch(Exception e)
					{
						out.println(e);
					}
			}
	%>