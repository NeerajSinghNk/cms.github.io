	<%@ page import="java.sql.*"%>
	<%
					String s1=(String)request.getParameter("subject");	
					String s2=(String)request.getParameter("date");	
					String s3=(String)request.getParameter("topic");	
					String g=(String)request.getParameter("notice");	
					
						try
						{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						int i=0;
						i=stmt.executeUpdate("update practical set notice='"+g+"' where subject='"+s1+"' and date1='"+s2+"' and topic='"+s3+"'");
						session.setAttribute("st1","Update Successfully");
						response.sendRedirect("practical.jsp");
						
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
				
					
						
						
						
					%>
					
				