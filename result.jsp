
<%@ page import ="java.sql.*" %>

<%@ page import ="java.io.*" %>
<body>
	<%
		
			String svalue=(String)session.getAttribute("sub");
			int k=0;
			
				String b=(String) request.getParameter("session");
				String c=(String) request.getParameter("branch");
				
				String d=(String) request.getParameter("semester");
				String e=(String) request.getParameter("markType");
				String f=(String) request.getParameter("subject");
				session.setAttribute("br0",b);
				session.setAttribute("br1",c);
				session.setAttribute("br2",d);
				session.setAttribute("br3",e);
				session.setAttribute("br4",f);
			int n=0;
			int i=0;
			k=(int)Integer.parseInt(svalue);
			String marks[]=new String[30];
			String s_name[]=new String[30];
			String s_roll[]=new String[30];
				
					try
						{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
						
							Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
							int m=1;
							Statement stmt=con.createStatement(); 
							ResultSet rs=stmt.executeQuery("select * from marks where branch='"+c+"' and semester='"+d+"' and sub='"+f+"' and markType='"+e+"' ");
							if(rs.next())
							{
									session.setAttribute("insert","Marks Already submitted");
									con.close();
									response.sendRedirect("marks.jsp");
							}
							while(n<k)
							{
								
								
									s_name[n]=(String) request.getParameter("name"+n);
									s_roll[n]=(String) request.getParameter("roll"+n);
									marks[n]=(String) request.getParameter("marks"+n);
									String qury="insert into marks(session1,branch,semester,roll_no,name,markType,sub,marks) values('"+b+"','"+c+"','"+d+"','"+s_roll[n]+"','"+s_name[n]+"','"+e+"','"+f+"','"+marks[n]+"')";
								 i=stmt.executeUpdate(qury);
								n++;
							}
							
								
							if(i!=0)
							{
									session.setAttribute("insert","Marks inserted successfully");
							
							}
							con.close();
							response.sendRedirect("marks.jsp");
						}
						
						catch(Exception e1)
						{
							out.println(e1);
						}
				
				
				
			
	%>
	</body>