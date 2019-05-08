	<%@ page import="java.sql.*"%>
	<%
		String a=(String)request.getParameter("year");
		String b=(String)request.getParameter("session");
		String c=(String)request.getParameter("branch");
		String d=(String)request.getParameter("semester");
		String e=(String)request.getParameter("subject");
		String f=(String)request.getParameter("notice");
		String g=(String)request.getParameter("date");
		String a1=(String)session.getAttribute("pass1");
		session.setAttribute("brn",c);
		session.setAttribute("br2",d);
		session.setAttribute("br3",e);
		session.setAttribute("br4",g);
				
				try	
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						int i=0;
						System.out.println("insert into notice(year1,session1,branch1,semester1,subject,notice,date1) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
						i=stmt.executeUpdate("insert into notice(year1,session1,branch1,semester1,subject,notice,date1,password) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+a1+"')");
						
					}
					catch(Exception e1)
					{
						out.println(e1);
					}
					
					session.setAttribute("st","Update Successfully");
						response.sendRedirect("topic.jsp");
					
	%>