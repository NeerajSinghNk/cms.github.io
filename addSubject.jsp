<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="addsub.css">

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
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	out.println("<div id='wrapper3'><a href='updateSubject.jsp' class='mscb3'><div class='dcr3'><div class='dot3'></div><div class='dot3'></div> <div class='dot3'></div> <div class='dot3'></div> </div> <span><i class='fas fa-trash'><div class='dlt'> Update<br> Subject</div></i></span></a></div>");
		out.println("<div id='wrapper2'><a href='deleteSubject.jsp' class='mscb2'><div class='dcr2'><div class='dot2'></div><div class='dot2'></div> <div class='dot2'></div> <div class='dot2'></div> </div> <span><i class='fas fa-trash'><div class='dlt'> Delete<br> Subject</div></i></span></a></div>");
	out.println("<h1 align='center'><br>Add New Subject<br></h1>");
				out.println("<form action='submitSubject.jsp' method='get()' onsubmit='return validation();'>");
		
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
		
			out.println("Semester::<select id='semester' name='semester'  required='required'>");
			
				out.println("<option>select</option>");
				

				
		out.println("</select>");
		
		out.println("No_Of_Subject:<select id='num' onchange='getText();' name='num'>");
		out.println("<option>select</option>");
		out.println("<option>1</option>");
		out.println("<option>2</option>");
		out.println("<option>3</option>");
		out.println("<option>4</option>");
		out.println("<option>5</option>");
		out.println("</select><br>");
		out.println("<span id='wrong'></span>");
		
		out.println("<div id='dp'>");
		
	out.println("</div></form>");
		
			out.println("<div>");
			String ss=(String)session.getAttribute("sess");
			String br1=(String)session.getAttribute("br");
			String sem=(String)session.getAttribute("sm");
			String nm=(String)session.getAttribute("num");
			int i=0;
			int j=1;
			String nw=(String)session.getAttribute("msg");
			if(sem!=null)
			{
				
			i=Integer.parseInt(nm);
							if(nw!=null)
							{
								out.println("<span id='wrong'>"+nw+"</span><br>");
							}
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							out.println("<table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Subject-code</th><th>Paper-code</th><th>Subject-Type</th><th>Name</th></tr>");
						
							while(j<=i)
							{
								
								String subb=(String)session.getAttribute("sub"+j+"");
								ResultSet rs=st.executeQuery("select * from subject where sess='"+ss+"' and dept='"+br1+"' and semester="+sem+"  and sub='"+subb+"'");
								String p,q,r,s,t,u,v;
							
							if(rs.next())
							{
							
								p=rs.getString("sess");
								q=rs.getString("dept");
								r=rs.getString("semester");
								
								s=rs.getString("sub_code");
								t=rs.getString("paper_code");
								u=rs.getString("T_N_P");
								
								v=rs.getString("sub");
								
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
								j++;
							}
							out.println("</table>");
							session.removeAttribute("sm");
							session.removeAttribute("msg");
							
						}
					catch(Exception e)
					{
						out.println(e);
					}
			
			}	
					out.println("</div >");
					
					
				}
				
			
	%>
</body>