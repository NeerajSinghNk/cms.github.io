<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="STD.css">
	<%
				String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String br=(String)session.getAttribute("branch2");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((br!=null))
			{

					out.println("<h1 align='center'><br>WELCOME  :  "+c+"<br></h1>");
			
			
					out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home3.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	out.println("<div>");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where branch='"+br+"' and semester='"+sm+"' and roll_no='"+a+"'");
							String o,p,q,r,s,t,u;
							out.println("<table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
							while(rs.next())
							{
							
								o=rs.getString("session1");
								p=rs.getString("branch");
								q=rs.getString("semester");
								r=rs.getString("category");
								s=rs.getString("gender");
								
								t=rs.getString("name");
								u=rs.getString("roll_no");
								
								out.println("<tr>");
									out.println("<td>"+o+"</td>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
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