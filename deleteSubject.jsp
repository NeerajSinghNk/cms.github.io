<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="deletesubject.css">

<script src="sd.js">
</script>
<body>
<%
		
		String a=(String)session.getAttribute("user");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			
			
				if((a.equals("Admin")) && (b.equals("123456")))
				{
					
					
				
			out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='addSubject.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
			out.println("<h1 align='center'><br>Delete Subject<br></h1>");
				out.println("<form action='submitDeleteDetail.jsp' method='post()' onsubmit='return validation();'>");
		
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
		
			out.println("Semester::<select id='semester' onchange='getSubject();' name='semester'  required='required'>");
			
				out.println("<option>select</option>");
				

				
		out.println("</select>");
		
		out.println("Subject:<select id='subject' onchange='getSubjectDetail1();' name='subject'>");
		out.println("<option>select</option>");
		
		out.println("</select>");
		out.println("<div id='dp'>");
		
	out.println("</div></form>");
		
			out.println("<div>");
			
			String nw=(String)session.getAttribute("msg");
	
							if(nw!=null)
							{
								out.println("<span id='wrong'>"+nw+"</span><br>");
							}
							session.removeAttribute("msg");
					out.println("</div >");
					
					
				}
				
			
	%>
</body>