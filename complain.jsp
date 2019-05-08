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
							out.println("<br><br><button ><a href='notice.jsp'>Back</a></button>");
							out.println("<br><br><button ><a href='home2.jsp'>HOME</a></button>");
							out.println("<br><br><button ><a href='deleteComplain.jsp'>Delete</a></button>");
					out.println("<h1 align='center'><br>Complain Box<br></h1>");
					out.println("<form action='submitComplain.jsp' method='get()' onsubmit='return validation();'>");
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
					out.println("Roll_Number::<select  id='roll' name='roll'>");
					out.println("<option>select</option>");
					out.println("</select>");
					out.println("<textarea rows='4'name='notice' placeholder='Type Subject Here' style='color:solid-black;' ></textarea>");
					out.println("<button id='button1'>SUBMIT</button>");
					int a1=Integer.parseInt(a);
					String stt=(String)session.getAttribute("st2");
					
					if(stt!=null)
					{
						
						out.println("Status::<h3>"+stt+"</h3>");
						
					}
						try
						{
						
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
							
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							 String i,j,k,l,m,n,o,p;
							Statement stmt=con.createStatement();
							ResultSet rs=stmt.executeQuery("select * from complain where password="+a1+" order by ID desc");
							out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Roll_Number</th><th>Complain</th></tr>");
					
								while(rs.next())
								{
									i=(String)rs.getString("year1");
									j=(String)rs.getString("session1");
									k=(String)rs.getString("branch1");
									l=(String)rs.getString("semester1");
									
									n=(String)rs.getString("roll_no");
									o=(String)rs.getString("notice");
									m=(String)rs.getString("date1");
									out.println("<tr><td>"+i+"</td>");
									out.println("<td>"+j+"</td>");
									out.println("<td>"+k+"</td>");
									out.println("<td>"+l+"</td>");
									out.println("<td>"+m+"</td>");
									out.println("<td>"+n+"</td>");
									out.println("<td>"+o+"</td></tr>");
								
									
								}			
											con.close();
								out.println("</table>");
							}
							catch(Exception g1)
							{
								out.println(g1);
							}
					
					//session.removeAttribute("st2");
					
					
			}
			else
			{
				response.sendRedirect("index.html");
			}
	%>
		</body>
	</html>