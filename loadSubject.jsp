<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<style>
	.name
			{
				border:1px solid white;
				padding:10px;
				outline: none;
				background:none;
				color:white;
				font-size: 18px;
			}

</style>

	<%
		String br=(String)request.getParameter("branch");
		String sm=(String)request.getParameter("semester");
		String s=(String)request.getParameter("subject");
		String s1=(String)request.getParameter("markType");
		int i=0;
		String t,u;
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				ResultSet rs1=stmt.executeQuery("select * from marks where branch='"+br+"' and semester='"+sm+"' and markType='"+s1+"' and sub='"+s+"' ");
				
					if(rs1.next())
					{
						out.println("The marks Already uploaded");
					}
				else
				{
					ResultSet rs=stmt.executeQuery("select * from studentdetail where branch='"+br+"' and semester='"+sm+"'  ");
					out.println("<form action='result.jsp'>");
					out.println("<table class='container' border='1'><tr><th>Name</th><th>Roll_Number</th><th>"+s+"</th></tr>");
			
					while(rs.next())
					{
						t=rs.getString("name");
						u=rs.getString("roll_no");
						
					out.println("<tr><td>"+t+"<input class='name' type='hidden' name='name"+i+"' value='"+t+"'></td><td>"+u+"<input type='hidden' name='roll"+i+"' value='"+u+"'></td><td><input type='text' pattern='^[1-2]?[0-9]$' required='required' name='marks"+i+"' ></td></tr>");
						i++;
					}
					out.println("<button id='button1'>SUBMIT</button>");
			out.println("</form>");
	
				}
				
				con.close();
				
			}
		catch(Exception e)
		{
			out.println(e);
		}
			
			String i1=String.valueOf(i);
			System.out.println("check"+i1);
				session.setAttribute("sub",i1);
				
	%>
