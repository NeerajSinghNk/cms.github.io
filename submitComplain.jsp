	<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
	<%
		String a=(String)request.getParameter("year");
		String b=(String)request.getParameter("session");
		String c=(String)request.getParameter("branch");
		String d=(String)request.getParameter("semester");
		String e=(String)request.getParameter("roll");
		String f=(String)request.getParameter("notice");
		Date date = new Date();  
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
		String g = formatter.format(date);  
			
		String a1=(String)session.getAttribute("pass1");
		String c1=(String)session.getAttribute("msg");
				try	
					{
					
						Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
						Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
						Statement stmt=con.createStatement();
						int i=0;
						System.out.println("insert into notice(year1,session1,branch1,semester1,subject,notice,date1) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
						i=stmt.executeUpdate("insert into complain(year1,session1,branch1,semester1,roll_no,notice,date1,password,name) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+a1+"','"+c1+"')");
						
					}
					catch(Exception e1)
					{
						out.println(e1);
					}
					
					session.setAttribute("st2","Insert Successfully");
						response.sendRedirect("complain.jsp");
					
	%>