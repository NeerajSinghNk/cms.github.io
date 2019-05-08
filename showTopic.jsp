<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	
<link rel="stylesheet" href="showTopic.css">
	
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String sess=(String)session.getAttribute("session");
				String br=(String)session.getAttribute("branch2");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((a!=null))
			{
				
			
			Date date = new Date();  
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");  
			String f = formatter.format(date);  
			
out.println("<h1 align='center'><br>Topic<br></h1>");
			
					out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home3.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	try
						{
						
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
							
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							 String i,j,k,l,m,n,o;
							Statement stmt=con.createStatement();
							ResultSet rs=stmt.executeQuery("select * from notice where  branch1='"+br+"' and semester1='"+sm+"'  ");
							System.out.println("select * from notice where  branch1='"+br+"' and semester1='"+sm+"' and date1='"+f+"'  ");
							out.println("<table class='container' border='1'><tr><th>Year</th><th>Session</th><th>Branch</th><th>Semester</th><th>Date</th><th>Subject</th><th>Notice</th></tr>");
								while(rs.next())
								{
									i=(String)rs.getString("year1");
									j=(String)rs.getString("session1");
									k=(String)rs.getString("branch1");
									l=(String)rs.getString("semester1");
									m=(String)rs.getString("date1");
									n=(String)rs.getString("subject");
									o=(String)rs.getString("notice");
									out.println("<tr><td>"+i+"</td>");
									out.println("<td>"+j+"</td>");
									out.println("<td>"+k+"</td>");
									out.println("<td>"+l+"</td>");
									out.println("<td>"+m+"</td>");
									out.println("<td>"+n+"</td>");
									out.println("<td>"+o+"</td></tr>");
									
								}			
								out.println("</table>");
								con.close();
			
						}
							catch(Exception g1)
							{
								out.println(g1);
							}
			}	
				

%>