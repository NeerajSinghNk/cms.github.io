<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
	String ab=(String)request.getParameter("session");
	String cd=(String)request.getParameter("branch");
	String ef=(String)request.getParameter("semester");
	
	try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from subject where dept='"+cd+"' and sess='"+ab+"'");
					String r,s;
					out.println("<option>select</option>");
					while(rs.next())
					{
						r=(String)rs.getString("sub");
						s=(String)rs.getString("semester");
						if(s.equals(ef))
						{
								System.out.println("select:: "+r);
								out.println("<option>"+r+"</option>");
						}
					}
			}catch(Exception e)
			{
				out.println(e);
			}
%>