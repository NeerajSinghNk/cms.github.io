<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
	<%
		String s1=(String)request.getParameter("roll");
			try
			{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from marks where roll_no='"+s1+"'");
			String p,q,r,s,t,u,v,w,x,y,z,o;
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
			out.println("<input type='text' id='sub1' name='sub1' onchange='return valid();' placeholder='SUB1'  required='required'></div><br>");
			out.println("<input type='text' id='sub2'onchange='return valid2();' name='sub2' required='required'  placeholder='SUB2'></div><br><br><br>");
			out.println("<input type='text' id='sub3' onchange='return valid3();' name='sub3' required='required'  placeholder='SUB3'></div><br><br>");
			out.println("<input type='text' onchange='return valid4();'  id='sub4' name='sub4' required='required'  placeholder='SUB4' ></div></div><br><br>");
			out.println("<button id='button1'>SUBMIT</button>");
			out.println("</form>");
	}
catch(Exception g)
			{
				out.println(g);
			}
	%>
