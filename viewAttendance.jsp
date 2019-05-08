		<%@ page import="java.sql.*"%>
		
		<html>
		<head>
		
	<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    <link rel="stylesheet" href="viewAttendance.css">
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
	

out.println("<h1 align='center'><br>ATTENDANCE<br></h1>");
			
							
					out.println("Subject:<select id='subject' name='subject' onchange='global();' required='required'>");
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
							out.println("DATE::<input type='date' name='date' id='date' onchange='global();' required='required'>");
							out.println("LECTURE::<select name='lecture' id='lecture' onchange='global();'>");
							out.println("<option>select</option>");
							out.println("<option>1</option>");
							out.println("<option>2</option>");
							out.println("<option>3</option>");
							out.println("<option>4</option>");
							out.println("<option>5</option>");
							out.println("<option>6</option>");
							out.println("</select>");
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