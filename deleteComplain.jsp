	<%@ page import="java.sql.*"%>
	<html>
	<head>
	<script src="sd.js">
	</script>
	</head>
		<body>
			<%
				String a=(String)session.getAttribute("pass1");
			String c1=(String)session.getAttribute("msg");	
			String br1=(String)session.getAttribute("branch2");			
			if((a!=null))
			{
					out.println("<h1>WELCOME  :  "+c1+"</h1>");
							out.println("<br><br><button ><a href='logout.jsp'>LOGOUT</a></button>");
							out.println("<br><br><button ><a href='complain.jsp'>Back</a></button>");
							out.println("<br><br><button ><a href='home2.jsp'>HOME</a></button>");
					
					out.println("<h1 align='center'><br>Delete Complain <br></h1>");
					out.println("<form action='deleteComplain1.jsp' method='get()' onsubmit='return validation();'>");
							out.println("Year::<select name='year' id='year'  required='required'>");
								out.println("<option >select</option>");
						try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where password='"+a+"'"); 
						
						
							if(rs.next())
							{ 
								String s=rs.getString("year1");
								out.println("<option>"+s+"</option>");
							}
									con.close();
						}catch(Exception e)
						{
							out.println(e);
						}
								out.println("</select>");
							out.println("Session::<select name='session' id='session' onchange='fun();' required='required'>");
								out.println("<option >select</option>");
								out.println("<option >Jul_to_Dec</option>");
								out.println("<option >Jan_to_June</option>");
								out.println("</select>");
								out.println("Branch::<select id='branch' name='branch'  required='required'>");
						
							out.println("<option>select</option>");
							out.println("<option>"+br1+"</option>");
							
											
					out.println("</select>");
					
						out.println("Semester::<select id='semester' name='semester' onchange='getRoll();' required='required'>");
						
							out.println("<option>select</option>");
							
					out.println("</select>");
					out.println("Roll_Number::<select  id='roll' onchange='getComplain();' name='roll'>");
					out.println("<option>select</option>");
					out.println("</select>");
					out.println("<button id='button1'>SUBMIT</button>");
					out.println("</form>");
					out.println("<div id='globalPrint'>");
					out.println("</div>");
			}
			else
			{
				response.sendRedirect("index.html");
			}
	%>
		</body>
	</html>