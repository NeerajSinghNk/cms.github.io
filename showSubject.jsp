<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	
<link rel="stylesheet" href="showsub.css">
<%
				String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String sess=(String)session.getAttribute("session");
				String br=(String)session.getAttribute("branch2");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((br!=null))
			{
out.println("<h1 align='center'><br>Syllabus<br></h1>");
			
					out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home3.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
			out.println("<div>");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from subject where dept='"+br+"' and semester="+sm+" order by sub_code asc");
							String o,p,q,r,s,t,u;
							out.println("<table class='container' border='1'><tr><th colspan='4'>Session:"+sess+" Branch:"+br+" Semester:"+sm+"</th></tr><tr><th>Subject-Name</th><th>Subject-code</th><th>Paper-code</th><th>Subject-Type</th></tr>");
							while(rs.next())
							{
							
								o=rs.getString("sub");
								p=rs.getString("sub_code");
								q=rs.getString("paper_code");
								r=rs.getString("T_N_P");
								
								out.println("<tr>");
									out.println("<td>"+o+"</td>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("</tr>");
								
							}
							out.println("</table>");

					}catch(Exception e)
					{
						out.println(e);
					}
			
				
				
				out.println("</div><br><br>");
			}
%>