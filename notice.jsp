	<%@ page import="java.sql.*"%>
	<html>
	<head>
	<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    <link rel="stylesheet" href="notice.css">
		
	<script src="sd.js">
	</script>
	</head>
		<body>
<%
					String a=(String)session.getAttribute("pass1");
				String c1=(String)session.getAttribute("msg");
					String br=(String)session.getAttribute("branch2");
				if(a!=null)
					{
						out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home2.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	out.println("<h1 align='center'><br>Notice Board<br></h1>");

out.println("<div id='wrapper3'><a href='topic.jsp' class='mscb3'><div class='dcr3'><div class='dot3'></div><div class='dot3'></div> <div class='dot3'></div> <div class='dot3'></div> </div> <span><i class='fas fa-book'><div class='dlt'> Todays<br>Topic</div></i></span></a></div>");
								out.println("<div id='wrapper4'><a href='practical.jsp' class='mscb4'><div class='dcr4'><div class='dot4'></div><div class='dot4'></div> <div class='dot4'></div> <div class='dot4'></div> </div> <span><i class='fas fa-file-invoice'><div class='dlt'>Assingment<br>And Practical</div></i></span></a></div>");

											
					
				}
				else
				{
					response.sendRedirect("index.html");
				}

	%>
		</body>
	</html>