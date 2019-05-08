<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

	<%
		String br=(String)request.getParameter("branch");
		String sm=(String)request.getParameter("semester");
		String s=(String)request.getParameter("markType");
		int i=0;
		String t,u,v,query="";
		if(s.equals("Lab Work"))
		{
		
			query="select sub from subject where dept='"+br+"' and semester="+sm+" and (T_N_P='[P]' or T_N_P='[T][P]') order by sub_code asc";
		}
		else if(s.equals("Term Work"))
		{
			query="select sub from subject where dept='"+br+"' and semester="+sm+" and (T_N_P='[T]' or T_N_P='[T][P]') order by sub_code asc";
		}
		
		
			try
			{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			out.println("<option>select</option>");
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next())
			{
				v=(String)rs.getString("sub");
			
				
				out.println("<option>"+v+"</option>");
			
			}
			con.close();
		}
			catch(Exception g)
			{
				out.println(g);
			}	
			
	%>
