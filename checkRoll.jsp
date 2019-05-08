<%@ page import="java.sql.*" %>
<%
			String s1=(String)request.getParameter("roll");
			String s2=(String)request.getParameter("session");
			String s3=(String)request.getParameter("branch");
				System.out.println("select roll_no from studentdetail where session1='"+s2+"' and branch='"+s3+"' and roll_no='"+s1+"' ");
				int i=0;
				try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select roll_no from studentdetail where session1='"+s2+"' and branch='"+s3+"' and roll_no='"+s1+"' ");
							
							if(rs.next())
							{
								i++;
							}
							
					}catch(Exception e)
					{
						out.println(e);
					}
					if(i==1)
					{
						out.println("<span style='color:red;'>Alert:this roll-number already exist</span>");
	
					}else
					{
						out.println("");
	
					}
%>		
				