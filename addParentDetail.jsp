<html>
<head>
	<script src="try.js">
	</script>
</head>
<body>
<%
	
					out.println("<h1>WELCOME  :  "+a+"</h1>");
					out.println("<form  action='result.jsp'>");
					out.println("<h1 align='center'><br>ADD Parents Detail<br></h1>");
					out.println("Year::<select name='year' id='year'>");
						out.println("<option>select</option>");
						out.println("<option>2018</option>");
						out.println("<option>2019</option>");
						out.println("<option>2020</option>");
						out.println("<option>2021</option>");
						out.println("<option>2022</option>");
						out.println("</select>");
						out.println("Session::<select name='session' id='session' onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
				
					out.println("BRANCH::<select id='branch' name='branch' onchange='fun2();'>");
						out.println("<option>select</option>");
						
						out.println("<option>Cs</option>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
						out.println("</select>");
			
						out.println("SEMESTER::<select id='semester' name='semester' onchange='fun3();'>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.println("Roll_number::<select id='roll' name='roll' onchange='fun4();'><br><br>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.println("<div id='printdata'>");
						out.println("</div>");	
