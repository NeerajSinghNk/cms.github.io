<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
	String ab=(String)request.getParameter("dept");
	String cd=(String)request.getParameter("sess");
	System.out.println("value::"+ab);
	System.out.println("select "+ab+" from subject ");
	System.out.println("select "+cd+" from subject ");
	try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from subject where dept='"+ab+"' and sess='"+cd+"'");
					String r;
					int i=0;
					out.println("<form action='teacherdetail.jsp'>");
					out.println("SELECT SUBJECTS FOR TEACHING<br>");
					while(rs.next())
					{
						r=(String)rs.getString("sub");
								System.out.println("select:: "+r);
								out.println("<input type='checkbox'value='"+r+"' name='check"+i+"' >"+r+"<br>");
								i++;
					}
					String j=String.valueOf(i);
					session.setAttribute("sub",j);
					out.println("</form>");
			}catch(Exception e)
			{
				out.println(e);
			}
%>