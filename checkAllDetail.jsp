<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="checkAllDetail.css">

<script src="ajax.js"></script>

<body>
<%
	String s1=(String)session.getAttribute("adm");
	if((s1!=null))
	{ 
		
		if(s1.equals("Admin"))
		{
									out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
			
			out.println("<h1 align='center'><br>Student Detail<br></h1>");
			
			out.println("<form >");
			out.println(" Session:: <select name='session' id='session' onchange='fun();' onmouseout='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
		
			out.println(" Branch:: <select name='branch' id='branch' onchange='fun();'>");
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
			out.println("</select>");
			
			out.println(" Semester:: <select name='semester' id='semester' onchange='fun();'>");
				out.println("<option>select</option>");
				out.println("<option>1</option>");
				out.println("<option>2</option>");
				out.println("<option>3</option>");
				out.println("<option>4</option>");
				out.println("<option>5</option>");
				out.println("<option>6</option>");
				
			out.println("</select>");	
			out.println(" Category:: <select name='category' id='category' onchange='fun();'>");
				out.println("<option>select</option>");
				
				out.println("<option>SC</option>");
				out.println("<option>ST</option>");
				out.println("<option>OBC</option>");
				out.println("<option>GENERAL</option>");

			out.println("</select>");
			
				out.println("<br><br> Gender:: <select name='gender' id='gender' onchange='fun();'>");
				out.println("<option>select</option>");
				
				out.println("<option>male</option>");
				out.println("<option>female</option>");

			out.println("</select></div>");
			out.println("</form >");
			
			
			
		
			out.println("<div id='table'>");
				out.println("</div><br><br>");
			
		}
					
	}
	else
	{
		response.sendRedirect("index.html");
	}

%>
</body>