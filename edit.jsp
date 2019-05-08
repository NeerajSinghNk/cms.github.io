<%@ page import="java.sql.*"%>
	<%	
			
			String b1=(String)request.getParameter("branch");
			String b2=(String)request.getParameter("semester");
			String b3=(String)request.getParameter("cate");
			String b4=(String)request.getParameter("gen");
			String b5=(String)request.getParameter("name");
			String b6=(String)request.getParameter("roll");
		   	try
				{
		
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
					
					Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
					 
					Statement stmt=con.createStatement();  
					
					String query="update studentdetail set branch='"+b1+"',semester='"+b2+"',category='"+b3+"',gender='"+b4+"',name='"+b5+"',roll_no='"+b6+"' where roll_no='"+b6+"'";
					int i=0;
					String j="0";
					String p;
					i=stmt.executeUpdate(query);
					session.setAttribute("rollno",b6);
					session.setAttribute("status","Report::Data updated successfully of Roll_number:="+b6);
						session.setAttribute("num1",j);
							con.close();
							response.sendRedirect("edit1.jsp");

					
					
				}
			catch(Exception g)
			{
				out.println(g);
			}
			
	%>