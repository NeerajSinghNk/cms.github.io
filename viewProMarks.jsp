	<%@ page import="java.sql.*"%>
	<html>
	<head>
	
	<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    <link rel="stylesheet" href="viewProMarks.css">

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
						
						out.println("<h1 align='center'><br>UPLOAD Progressive Marks<br></h1>");
												out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home2.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
								
					out.println("<br><br>Subject:<select id='subject' name='subject' onchange='getProMarks();' required='required'>");
					out.println("<option>select</option>");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where password='"+a+"'"); 
						System.out.println("select * from teacherdetail where password='"+a+"'"); 
						
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
					out.println("TEST_Number:<select id='test' onchange='getProMarks();' name='test' required='required'>");
					out.println("<option>select</option>");
					out.println("<option>Test 1</option>");
					out.println("<option>Test 2</option>");
					out.println("<option>Test 3</option>");
					out.println("</select>");
					
						out.println("<div id='globalPrint'>");
						out.println("</div>");
					
				
					out.println("</div>");
					session.removeAttribute("status");
					
				}
				else
				{
					response.sendRedirect("index.html");
				}

	%>
		</body>
	</html>