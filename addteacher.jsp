<%@ page import="java.sql.*" %>
<html>
	<head>
		<script src="subject.js">
		</script>
		
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="addteacher.css">
	</head>
	<body>
	
		
		<%
			String a=(String)session.getAttribute("adm");
			String b=(String)session.getAttribute("pass1");
			String c=(String)session.getAttribute("msg");		
				if((a.equals("Admin")) && (b.equals("123456")))
				{

					
					out.println("<h1 align='center'><br>Add New Teacher<br></h1>");
					out.println("<form onsubmit='return validation();' action='teacherdetail.jsp'>");
					%>
					
					<input type="text" name="teacher" id="teacher" placeholder="Name-Of-Faculty"  title="The name must be at least 6 characters"required="required">
					<%
					out.println("<br><br><br><br>Category::<select name='category' id='category' required='required'>");
						out.println("<option >select</option>");
						out.println("<option >SC</option>");
						out.println("<option >ST</option>");
						out.println("<option >OBC</option>");
						out.println("<option >GENERAL</option>");
					out.println("</select>");
					out.println("Gender::<select name='gender' id='gender' required='required'>");
					out.println("<option >select</option>");
					out.println("<option >male</option>");
					out.println("<option >female</option>");
					out.println("</select>");
					out.println("<input type='text' id='quali' name='quali' placeholder='Qualification::' >");

					out.println("DEPARTMENT:<select name='dept' id='dept' required='required'>");
					out.println("<option >select</option>");
					out.println("<option >CS</option>");
					out.println("<option >Civil</option>");
					out.println("<option >Electrical</option>");
					out.println("<option >Electronics</option>");
					out.println("<option >Mechanical</option>");
					out.println("</select>");
					out.println("Year::<select name='year' id='year' required='required'>");
					out.println("<option >select</option>");
					out.println("<option >2018</option>");
					out.println("<option >2019</option>");
					out.println("<option >2020</option>");
					out.println("<option >2021</option>");
					out.println("<option >2022</option>");
					out.println("</select>");
					out.println("<br><br> Session:: <select name='sess' id='sess' onchange='fun5();' required='required'>");
					out.println("<option >select</option>");
					out.println("<option >Jul_to_Dec</option>");
					out.println("<option >Jan_to_June</option>");
					out.println("</select>");
					out.println("<div id='sub' name='sub'>");
					out.println("</div>");
					out.println("<input type='submit' id='button1' name='submit'>");
					out.println("</form>");
				out.println("<div>");
				String tru=(String)session.getAttribute("true");
				String pass=(String)session.getAttribute("user_id");
				if(tru!=null)
				{
							out.println("<h3>"+tru+"</h3>");
						try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where password='"+pass+"'");
							String p,q,r,s,t;
							int c1=0;
							out.println("<table class='container' border='1'><tr><th>ID</th><th>Password</th><th>Name</th><th>Department</th><th colspan='3'>Subjects</th></tr>");
							label1:while(rs.next())
							{
										if(c1<1)
										{
											p=rs.getString("ID");
											q=rs.getString("name");
											r=rs.getString("dept");
											t=rs.getString("password");
											
											out.println("<tr><td>"+p+"</td>");
											out.println("<td>"+t+"</td>");
											out.println("<td>"+q+"</td>");
											out.println("<td>"+r+"</td>");
											c1++;
										}
								s=rs.getString("sub");
								out.println("<td >"+s+"</td>");
								continue label1;
								
							}
							out.println("</tr></table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
					}
							//session.removeAttribute("true");
			out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	}
				
			else
			{
				response.sendRedirect("index.html");
			}
		%>
		
		
	</body>
</html>