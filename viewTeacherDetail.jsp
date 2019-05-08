<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="checkAllDetail.css">
	<script src="try.js">
	</script>
</head>
<body>
<%
			String a=(String)session.getAttribute("adm");
			String b=(String)session.getAttribute("pass1");
			String c=(String)session.getAttribute("msg");		
				if((a.equals("Admin")) && (b.equals("123456")))
				{	
					out.println("<h1 align='center'><br>View Teacher Profile<br></h1>");
					out.println("Department::<select id='dept' namr='dept' onchange='fun1();'>");
					out.println("<option >select</option>");
					out.println("<option >CS</option>");
					out.println("<option >Civil</option>");
					out.println("<option >Electrical</option>");
					out.println("<option >Electronics</option>");
					out.println("<option >Mechanical</option>");
					out.println("</select>");
					out.println("Session::<select name='session' id='session' onchange='fun1();'>");
					out.println("<option >select</option>");
					out.println("<option >Jul_to_Dec</option>");
					out.println("<option >Jan_to_June</option>");
					out.println("</select>");
					out.println("Gender::<select name='gender' id='gender' onchange='fun1();'>");
					out.println("<option >select</option>");
					out.println("<option >male</option>");
					out.println("<option >female</option>");
					out.println("</select><br><br>");
				out.println("<div id='table'>");
					
					out.println("</div>");
										out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	}else
				{
					response.sendRedirect("index.html");
				}
%>
</body>
</html>