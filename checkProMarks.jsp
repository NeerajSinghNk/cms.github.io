<%@ page import="java.sql.*"%>
<%

			String b=(String)request.getParameter("branch");
			String c=(String)request.getParameter("semester");
			String d=(String)request.getParameter("test");
			String f=(String)request.getParameter("subject");
		System.out.println(" the value of B::"+b);
		System.out.println(" the value of B::"+c);
		System.out.println(" the value of B::"+d);
	
		System.out.println(" the value of B::"+f);

		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 String brn=null;
			 int i=0;
			 System.out.println("bran"+brn);
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from promarks where branch1='"+b+"' and semester1='"+c+"' and test='"+d+"'  and subject1='"+f+"'");
				if(rs.next())
				{
					i++;
					brn=(String)rs.getString("branch1");

				}
			if(i==1)
			{
			out.println("<h3>ALERT:: this attendance already submited</h3>");	
			}
			con.close();			
		}
		catch(Exception g1)
		{
			out.println(g1);
		}

					
	
		
	
%>