<%@ page import="java.sql.*"%>
	<%	
			
			String br3=(String)request.getParameter("roll");
			if((br3!="SELECT"))
			{
				try
				{
		
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
					
					Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
					 
					Statement stmt=con.createStatement();  
					
					String r;
					int i=0;
					i=stmt.executeUpdate("delete * from studentdetail where roll_no='"+br3+"' ");
					ResultSet rs=stmt.executeQuery("select * from marks");
					while(rs.next())
					{
						r=rs.getString("roll_no");
						if(r.equals(br3))
						{
								i=stmt.executeUpdate("delete * from marks where roll_no='"+br3+"' ");
								session.setAttribute("msg","REPORT:: your data successfully inserted");
								response.sendRedirect("delete.jsp");
						}
					}
				
					
					con.close();
				session.setAttribute("del","your data successfully deleted");
				response.sendRedirect("delete.jsp");
			
			}
			catch(Exception g)
			{
				out.println(g);
			}
			}
					
	%>