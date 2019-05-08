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
							out.println("<br><br><button ><a href='home2.jsp'>HOME</a></button>");
							out.println("<br><br><button ><a href='topic.jsp'>Back</a></button>");
							out.println("<h1 align='center'><br>Delete Topic<br></h1>");
					out.println("<form action='deleteTopic1.jsp' method='get()' onsubmit='return validation();'>");
							
					out.println("Subject:<select onchange='getDetail();' id='subject' name='subject' onchange='fun3();' required='required'>");
					out.println("<option>select</option>");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where password='"+a+"'"); 
						
						
							while(rs.next())
							{ 
								String s=rs.getString("sub");
								out.println("<option>"+s+"</option>");
							}
						
						}catch(Exception e)
						{
							out.println(e);
						}
					out.println("</select>");
					out.println("Date::<input type='date' name='date' onchange='getDetail();' id='date'>");
					out.println("<div id='globalPrint'>");
					out.println("</div>");
					out.println("<button id='button1'>SUBMIT</button>");
					out.println("</form>");
					
					
			}
			else
			{
				response.sendRedirect("index.html");
			}
	%>
		</body>
	</html>