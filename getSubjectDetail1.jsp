<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
	String ab=(String)request.getParameter("session");
	String cd=(String)request.getParameter("branch");
	String ef=(String)request.getParameter("semester");
	String f=(String)request.getParameter("subject");
	
	try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from subject where dept='"+cd+"' and sess='"+ab+"' and semester="+ef+" and sub='"+f+"'");
					String r,s,t,u;
					out.println("<table border='1'><tr><th>Subject-Name</th><th>Subject-code</th><th>Paper-code</th><th>Subject-Type</th></tr>");
					while(rs.next())
					{
						r=(String)rs.getString("sub");
						s=(String)rs.getString("sub_code");
						t=(String)rs.getString("paper_code");
						u=(String)rs.getString("T_N_P");
						
						out.println("<tr><td>"+r+"</td>");
						
						out.println("<td>"+s+"</td>");
						out.println("<td>"+t+"</td>");
						out.println("<td>"+u+"</td></tr>");
						
					}
					out.println("</table>");
					out.println("<button>Update</button>");
					
			}catch(Exception e)
			{
				out.println(e);
			}
%>