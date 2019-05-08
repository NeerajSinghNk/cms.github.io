<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
	String a3=(String)request.getParameter("gender");
	String a1=(String)request.getParameter("dept");
	String a2=(String)request.getParameter("session");
	if((a1.equals("select")) &&(a2.equals("select")) &&(a3.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail ");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a1!="select") &&(a2.equals("select")) &&(a3.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where dept='"+a1+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a2!="select") &&(a1.equals("select")) &&(a3.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where session='"+a2+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a3!="select") &&(a2.equals("select")) &&(a1.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where gender='"+a3+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a1!="select") &&(a2!="select") &&(a3.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where dept='"+a1+"' and session='"+a2+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a1!="select") &&(a3!="select") &&(a2.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where dept='"+a1+"' and gender='"+a3+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a2!="select") &&(a3!="select") &&(a1.equals("select")))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where session='"+a2+"' and gender='"+a3+"'");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
	else if((a1!="select") &&(a2!="select") &&(a3!="select"))
	{
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from teacherdetail where dept='"+a1+"' and session='"+a2+"' and gender='"+a3+"' ");
							String p,q,r,s,t,u,v,w,x;
							out.println("<table class='container' border='1'><tr><th>Name</th><th>Category</th><th>Gender</th><th>Qualification</th><th>Department</th><th>Session</th><th>Subjects</th><th>ID</th><th>password</th></tr>");
							while(rs.next())
							{
								p=rs.getString("ID");
								q=rs.getString("name");
						
								u=rs.getString("dept");
								v=rs.getString("sub");
								x=rs.getString("password");
								w=rs.getString("session");
								t=rs.getString("qualification");
								r=rs.getString("category");
								s=rs.getString("gender");
	
								out.println("<tr><td>"+q+"</td>");
								out.println("<td>"+r+"</td>");
								out.println("<td>"+s+"</td>");
								out.println("<td>"+t+"</td>");
								out.println("<td>"+u+"</td>");
								out.println("<td>"+w+"</td>");
								out.println("<td>"+v+"</td>");
								out.println("<td>"+p+"</td>");
								out.println("<td>"+x+"</td></tr>");
							}
							out.println("</table>");
				
						}catch(Exception e)
						{
							out.println(e);
						}
	}
%>