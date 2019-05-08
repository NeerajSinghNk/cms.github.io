<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
	<head>
		<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
      <link rel='stylesheet' href='home.css'>		
	</head>
	<body>
	
		
		<%
			String a=(String)session.getAttribute("user");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((a!=null))
			{
				if((a.equals("Admin")) && (b.equals("123456")))
				{

					out.println("<h1>WELCOME  :  "+a+"</h1>");
					
				
					
					out.println("<br>");
					
					out.println("<br><br><div class='mark'><a id='log' class='btn' href='studentdetail.jsp '>Add New Student Detail</a></div>");
					out.println("<br><br><div class='mark1'><a id='log' class='btn' href='addSubject.jsp'>Add New Subject</a></div>");
					out.println("<br><br><div class='up'><a id='log' class='btn' href='addteacher.jsp'>Add New Teacher</a></div>");
					out.println("<br><br><div class='sd'><a id='log' class='btn' href='marks.jsp'>Upload Sessional Marks</a></div>");
					out.println("<br><br><div class='ed'><a id='log' class='btn' href='Allmarks.jsp'>View Sessional Marks</a></div>");
					out.println("<br><br><div class='ca'><a id='log' class='btn' href='checkAllDetail.jsp'>View Student Detail</a></div>");
					out.println("<br><br><div class='at'><a id='log' class='btn' href='viewTeacherDetail.jsp'>View profesor Detail</a></div>");
					out.println("<br><br><div class='vt'><a id='log' class='btn' href='edit1.jsp'>Update Student Detail</a></div>");
					
					out.println("<br><br><div class='vpd'><a id='log' class='btn' href='viewAttendanceAtAll.jsp'>View Attendance</a></div>");
					out.println("<br><br><div class='va'><a id='log' class='btn' href='viewAttendanceAtAll1.jsp	'>View Total Attendance</a></div>");
					
					
					out.println("<div id='wrapper'><a href='delete.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-trash'><div class='dlt'> Delete<br> Detail</div></i></span></a></div>");
					
					session.setAttribute("adm",a);
					session.setAttribute("pass1",b);
				out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					}
				
			}
				
			else
			{
				response.sendRedirect("index.html");
			}
		%>
		
		
	</body>
</html>