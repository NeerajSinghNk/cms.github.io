<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import ="javax.sql.*" %>
<script src="sd.js">

</script>

<html>
<body>
	<%
	
			out.println("<h1>view record on the basis of selection</h1>");
			
		
		
		
			out.println("BRANCH::<select id='branch' name='branch' onchange='funAjax1();'>");
			
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
				
		out.println("</select><br>");
		out.println("Gender:<select id='gender' name='gender' onchange='table1.jsp'>");
		out.println("<option>select</option>");
		out.println("</select><br>");
		
		
		String s=(String)session.getAttribute("rs2");
		
		String t=(String)session.getAttribute("rs3");
		
		
		out.println("<div>");
		try{
					
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from studentdetail");
					
					String p,q,r,n,m,o;
					out.println("<div>");
					out.println("<table border='1'><tr><th>Name</th><th>Roll_number</th><th>Branch</th><th>Gender</th><th>Category</th><th>Semester</th></tr>");
					while(rs.next())
					{
					
						r=rs.getString("Name");
						p=rs.getString("roll_no");
						q=rs.getString("Branch");
						n=rs.getString("Gender");
						m=rs.getString("category");
						o=rs.getString("semester");
						if((q.equals(s)) &&(n.equals(t)))
						{						
							out.println("<tr>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+q+"</td>");
								out.println("<td>"+n+"</td>");
								
								out.println("<td>"+m+"</td>");
								
								out.println("<td>"+o+"</td>");
								out.println("</tr>");
						}
					}
					out.println("</table>");
					
					out.println("</div>");
					
					out.println("<a href='studentdetail.jsp'>re insert data</a>");
					out.println("</div>");
		

			
			
			
			
			}
			catch(Exception g)
			{
				out.println(g);
			}
	%>
</body>
</html>