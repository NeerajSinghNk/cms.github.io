<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
		String name=(String)request.getParameter("name");
		String roll=(String)request.getParameter("rollno");
		String pname=(String)request.getParameter("fname");
		String cate=(String)request.getParameter("cate");
		String gen=(String)request.getParameter("gen");
		String mob=(String)request.getParameter("sub1");
		String addr=(String)request.getParameter("sub2");
		int random=(int)(Math.random()*100000+1);
		String psw=String.valueOf(random);
		
	    
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			String query="(insert into parentDetail(name,roll,parent,category,gender,mobile,address,password) values ('"+name+"','"+roll+"','"+pname+"','"+cate+"','"+gen+"','"+mob+"','"+addr+"','"+psw+"'))";
			int i=0;
			i=stmt.executeUpdate(query);
			
			con.close();
			session.setAttribute("c1","Report::-Data inserted successfuly");
			response.sendRedirect("addDetail.jsp");
			}
			catch(Exception g)
			{
				out.println(g);
			}
%>