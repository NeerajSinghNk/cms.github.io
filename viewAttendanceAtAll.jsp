<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="stuattend.css">
<script src="sd.js">
		
			
</script>
<body>
<%
		
		String a=(String)session.getAttribute("user");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((a!=null))
			{
				if((a.equals("Admin")) && (b.equals("123456")))
				{
				out.println("<h1 align='center'><br>STUDENT Attendance<br></h1>");
									out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
		out.println("<form action='insert.jsp' method='get()' onsubmit='return validation();'>");
		
						out.println("Session::<select name='session' id='session' onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
					out.println("Branch::<select id='branch' name='branch'  required='required'>");
			
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
				
		out.println("</select>");
		
			out.println("Semester::<select id='semester' name='semester' onchange='fun2();' onmouseout='getRoll();' required>");
			
				out.println("<option>select</option>");
			out.println("</select><br><br>");
		out.println("Subject:<select id='subject' name='subject' onchange='singleAttend();' required='required'>");
					out.println("<option>select</option>");
											
							out.println("</select>");
							out.println("DATE::<input type='date' name='date' id='date' onchange='singleAttend();' required='required'>");
							out.println("Lecture::<select name='lecture' id='lecture' onchange='singleAttend();'>");
							out.println("<option>select</option>");
							out.println("<option>1</option>");
							out.println("<option>2</option>");
							out.println("<option>3</option>");
							out.println("<option>4</option>");
							out.println("<option>5</option>");
							out.println("<option>6</option>");
							out.println("</select>");
							out.println("Roll-Number::<select id='roll' onchange='singleAttend();' name='roll' >");
							
							out.println("<option>select</option>");
				
							
						out.println("</select>");
	out.println("<div id='globalPrint'>");
	out.println("</div>");
		

				}
				
			}
	%>
</body>