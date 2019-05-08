	<%@ page import="java.sql.*"%>
	<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="STD.css">

<%	
			String i=(String)session.getAttribute("adm");
			String j=(String)session.getAttribute("pass1");
			String c=(String)session.getAttribute("msg");
			if(j!=null)
			{
				out.println("<h1 align='center' ><br>WELCOME  :  "+c+"</h1>");
				out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home2.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	
				
				try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where password='"+j+"'");
							String q,r,s,t,u,v,w;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th></tr>");
							while(rs.next())
							{
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td></tr>");
								
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
			}
			
%>