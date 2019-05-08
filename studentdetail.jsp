<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<script src="sd.js">
					
</script>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="studentdetail.css">
<body>
<%
		
		String a=(String)session.getAttribute("user");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((a!=null))
			{
				if((a.equals("Admin")) && (b.equals("123456")))
				{
					
				out.println("<h1 align='center'><br>ADD STUDENT DEATIL<br></h1>");
				out.println("<form action='insert.jsp' method='get()' onsubmit='return validation();'>");
		
						out.println("<div id='dp'>Session::<select name='session' id='session' onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
					out.println("Branch::<select id='branch' name='branch' onchange='funAjax1();' required='required'>");
			
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
				
		out.println("</select>");
		
			out.println("Semester::<select id='semester' name='semester' onchange='funAjax2();' required>");
			
				out.println("<option>select</option>");
				

				
		out.println("</select>");
		
		out.println("Category:<select id='category' name='category'>");
		out.println("<option>select</option>");
		out.println("</select>");
		
		out.println("<br><br>Gender:<select id='gender' name='gender'>");
		out.println("<option>select</option>");
		out.println("</select><br>");
		%>
		
		<input type="text" name="name" id="name" placeholder="Full-Name" pattern="[A-Za-z ]{10,}" title="The name must have 4 characters"required="required"><br>
		<input type="text" name="roll" placeholder="Roll No" id="roll"  title="roll_number must contain 5 digit-one character-5 digit "  required="required" ><br>
		<%
		out.println("<button id='button1'>SUBMIT</button>");
		
	out.println("</div></form>");
out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
				out.println("<div>");
			String ss=(String)session.getAttribute("sess");
			String br1=(String)session.getAttribute("br");
			String roll1=(String)session.getAttribute("roll");
			String exst=(String)session.getAttribute("value");
			String nw=(String)session.getAttribute("msg");
			if(roll1!=null)
			{
						if(exst!=null)
							{
								out.println("<span id='wrong'>"+exst+"</span><br>");
							}
							if(nw!=null)
							{
								out.println("<span id='wrong'>"+nw+"</span><br>");
							}
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where session1='"+ss+"' and branch='"+br1+"' and roll_no='"+roll1+"' ");
							String p,q,r,s,t,u,v;
							
							out.println("<br><br><br><br><br><br><table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
							while(rs.next())
							{
							
								p=rs.getString("session1");
								q=rs.getString("branch");
								r=rs.getString("semester");
								
								s=rs.getString("category");
								t=rs.getString("gender");
								u=rs.getString("name");
								
								v=rs.getString("roll_no");
								
								out.println("<tr>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
			
									out.println("<td>"+v+"</td>");
									
								out.println("</tr>");
								
							}
							out.println("</table>");
							session.removeAttribute("roll");
							session.removeAttribute("msg");
							session.removeAttribute("value");
						}
					catch(Exception e)
					{
						out.println(e);
					}
			
			}	
					out.println("</div >");
					
					
				}
				
			}
	%>
</body>