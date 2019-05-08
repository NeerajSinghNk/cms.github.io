	<%@ page import="java.sql.*"%>
	<html>
	<head>
	<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    <link rel="stylesheet" href="takeAttendance.css">
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
					
out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home2.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
						out.println("<h1 align='center'><br>TAKE ATTENDANCE<br></h1>");
					out.println("<form action='submitAttendance.jsp' method='get()' onsubmit='return validation();'>");
							out.println("Year: : <select name='year' id='year'  required='required'>");
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
						
						}catch(Exception e)
						{
							out.println(e);
						}
								out.println("</select>");
							out.println("Session: : <select name='session' id='session' onchange='fun();' required='required'>");
								out.println("<option >select</option>");
								out.println("<option >Jul_to_Dec</option>");
								out.println("<option >Jan_to_June</option>");
								out.println("</select>");
								out.println("BRANCH: : <select id='branch' name='branch'  required='required'>");
						
							out.println("<option>select</option>");
							out.println("<option>"+br1+"</option>");
							
											
					out.println("</select>");
					
						out.println("SEMESTER: : <select id='semester' name='semester'  required='required'>");
						
							out.println("<option>select</option>");
							
					out.println("</select>");
					out.println("<br><br>DATE: : <input type='date' name='date' id='date'  required='required'>");
					out.println("Lecture:: <select id='lecture' name='lecture' onchange='checkAttendance();' required='required'>");
					out.println("<option>select</option>");
					out.println("<option>1</option>");
					out.println("<option>2</option>");
					out.println("<option>3</option>");
					out.println("<option>4</option>");
					out.println("<option>5</option>");
					out.println("<option>6</option>");
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
						
						}catch(Exception e)
						{
							out.println(e);
						}
					out.println("</select>");
					out.println("<div id='data'>");
					out.println("</div>");
					out.println("<div id='globalPrint'>");
					out.println("</div>");
					out.println("<button id='button1'>SUBMIT</button>");
					out.println("</form>");
					String state=(String)session.getAttribute("status");
					String b=(String)session.getAttribute("b1");
					String c=(String)session.getAttribute("c1");
					String d=(String)session.getAttribute("d1");
					String e=(String)session.getAttribute("e1");
					String f=(String)session.getAttribute("f1");
					out.println("<div>");
					if(state!=null)
					{
						out.println("<h3 id='wrong' >"+state+"</h3>");
					try
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						 String i,j,k,l,m,n,o,p,q,r;
						Statement stmt=con.createStatement();
						System.out.println("select * from Attendance where branch1='"+b+"'");
						ResultSet rs=stmt.executeQuery("select * from Attendance where branch1='"+b+"' and semester1='"+c+"' and lecture1='"+d+"' and subject1='"+e+"' and date1='"+f+"'");
						out.println("<table class='container' border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Lecture</th><th>Date</th><th>Subject</th><th>Name</th><th>Roll_number</th><th>Attendance</th></tr>");
							while(rs.next())
							{
								i=(String)rs.getString("year1");
								j=(String)rs.getString("session1");
								k=(String)rs.getString("branch1");
								l=(String)rs.getString("semester1");
								m=(String)rs.getString("lecture1");
								n=(String)rs.getString("date1");
								o=(String)rs.getString("subject1");
								p=(String)rs.getString("name1");
								q=(String)rs.getString("roll_no1");
								r=(String)rs.getString("attendance1");
								out.println("<tr><td>"+i+"</td>");
								out.println("<td>"+j+"</td>");
								out.println("<td>"+k+"</td>");
								out.println("<td>"+l+"</td>");
								out.println("<td>"+m+"</td>");
								out.println("<td>"+n+"</td>");
								out.println("<td>"+o+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+q+"</td>");
								if(r.equals("P"))
								{
									out.println("<td style='background-color:green;'>"+r+"</td>");
								}
								else
								{
									out.println("<td style='background-color:red;'>"+r+"</td></tr>");
								}
							}			
							out.println("</table>");
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					session.removeAttribute("status");
					out.println("</div>");
					
			}
			else
			{
				response.sendRedirect("index.html");
			}
	%>
		</body>
	</html>