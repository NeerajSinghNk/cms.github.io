	<%@ page import="java.sql.*"%>
	<%
					String s1=(String)request.getParameter("roll");	
					
					if(s1!="select" )
					{
					try
					 {
					
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
							
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							Statement stmt=con.createStatement();
							int i=0;
							i=stmt.executeUpdate("delete * from complain where roll_no='"+s1+"'");
							
							session.setAttribute("st2","Delete Successfully");
							response.sendRedirect("complain.jsp");
						
						
						
						}
						catch(Exception g1)
						{
							out.println(g1);
						}
					}
					
						
						
						
					%>
					
				