
<%@ page import ="java.sql.*" %>

<%@ page import ="java.io.*" %>
<body>
	<%
		
			String roll=(String) request.getParameter("roll");

				String mark1=(String) request.getParameter("sub1");
				String mark2=(String) request.getParameter("sub2");
				String mark3=(String) request.getParameter("sub3");
				String mark4=(String) request.getParameter("sub4");
		
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				
				int result,m1,m2,m3,m4;
				
				m1=Integer.parseInt(mark1);
				m2=Integer.parseInt(mark2);
				m3=Integer.parseInt(mark3);
				m4=Integer.parseInt(mark4);
				result=m1+m2+m3+m4;
				result=result/4;
				System.out.println(result);
				if(result>=75)
				{	
					String qury="update marks set sub1='"+mark1+"',sub2='"+mark2+"',sub3='"+mark3+"',sub4='"+mark4+"',total='"+result+"%',division='honour' where roll_no='"+roll+"'";
					int i=stmt.executeUpdate(qury);
					
				}
				else if((result>=65) && (result<75))
				{
					String qury="update marks set sub1='"+mark1+"',sub2='"+mark2+"',sub3='"+mark3+"',sub4='"+mark4+"',total='"+result+"%',division='first division' where roll_no='"+roll+"'";

					int i=stmt.executeUpdate(qury);
					
				}
				else if((result>=50) && (result<65))
				{
					String qury="update marks set sub1='"+mark1+"',sub2='"+mark2+"',sub3='"+mark3+"',sub4='"+mark4+"',total='"+result+"%',division='second division' where roll_no='"+roll+"'";

					int i=stmt.executeUpdate(qury);
					
				}
				else if((result>=33) && (result<50))
				{
					String qury="update marks set sub1='"+mark1+"',sub2='"+mark2+"',sub3='"+mark3+"',sub4='"+mark4+"',total='"+result+"%',division='third division' where roll_no='"+roll+"'";

					int i=stmt.executeUpdate(qury);
					
				}
				else if(result<33)
				{
					String qury="update marks set sub1='"+mark1+"',sub2='"+mark2+"',sub3='"+mark3+"',sub4='"+mark4+"',total='"+result+"%',division='fail' where roll_no='"+roll+"'";

					int i=stmt.executeUpdate(qury);
					
				}
				
				con.close();
				session.setAttribute("num3","Marks updated successfully");
				session.setAttribute("num4",roll);
				response.sendRedirect("update.jsp");
			}
			
			catch(Exception e)
			{
				System.out.println(e);
			}
	%>
	</body>