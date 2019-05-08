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
							out.println("<br><br><button ><a href='updateTopic.jsp'>Update</a></button>");
							out.println("<br><br><button ><a href='deleteTopic.jsp'>Delete</a></button>");
					out.println("<h1 align='center'><br>Today's Topic<br></h1>");
					out.println("<form action='submitTopic.jsp' method='get()' onsubmit='return validation();'>");
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
								out.println("BRANCH::<select id='branch' name='branch'  required='required'>");
						
							out.println("<option>select</option>");
							out.println("<option>"+br1+"</option>");
							
											
					out.println("</select>");
					
						out.println("SEMESTER::<select id='semester' name='semester'  required='required'>");
						
							out.println("<option>select</option>");
							
					out.println("</select>");
					out.println("Subject:<select id='subject' name='subject' onchange='fun3();' required='required'>");
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
							con.close();
						}catch(Exception e)
						{
							out.println(e);
						}
					out.println("</select>");
					out.println("Date::<input type='date' name='date' id='date'>");
					out.println("<textarea rows='2'name='notice' placeholder='Type Subject Here' ></textarea>");
					out.println("<button id='button1'>SUBMIT</button>");
					int a1=Integer.parseInt(a);
					//System.out.println("select * from notice where password='"+a1+"' order by ID desc");out.println("</form>");
					String s1=(String)session.getAttribute("br1");
					String s2=(String)session.getAttribute("br2");
					String s3=(String)session.getAttribute("br3");
					String s4=(String)session.getAttribute("br4");
					String stt=(String)session.getAttribute("st");
					if(stt!=null)
					{
						out.println("Status::<h3>"+stt+"</h3>");
						try
						{
						
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
							
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							 String i,j,k,l,m,n,o;
							Statement stmt=con.createStatement();
							ResultSet rs=stmt.executeQuery("select * from notice where password="+a1+" and branch1='"+br1+"' and semester1='"+s2+"' and date1='"+s4+"' and subject='"+s3+"' order by ID desc");
							
							out.println("<table border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Notice</th></tr>");
								while(rs.next())
								{
									i=(String)rs.getString("year1");
									j=(String)rs.getString("session1");
									k=(String)rs.getString("branch1");
									l=(String)rs.getString("semester1");
									m=(String)rs.getString("date1");
									n=(String)rs.getString("subject");
									o=(String)rs.getString("notice");
									out.println("<tr><td>"+i+"</td>");
									out.println("<td>"+j+"</td>");
									out.println("<td>"+k+"</td>");
									out.println("<td>"+l+"</td>");
									out.println("<td>"+m+"</td>");
									out.println("<td>"+n+"</td>");
									out.println("<td>"+o+"</td>");
									
								}			
											con.close();
								out.println("</table>");
							}
							catch(Exception g1)
							{
								out.println(g1);
							}
					}
					session.removeAttribute("st");
					
			}
			else
			{
				response.sendRedirect("index.html");
			}
	%>
		</body>
	</html>