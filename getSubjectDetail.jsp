<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

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
	String ab=(String)request.getParameter("session");
	String cd=(String)request.getParameter("branch");
	String ef=(String)request.getParameter("semester");
	String f=(String)request.getParameter("subject");
	
	try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					ResultSet rs=st.executeQuery("select * from subject where dept='"+cd+"' and sess='"+ab+"' and semester="+ef+" and sub='"+f+"'");
					String r,s,t,u;
					while(rs.next())
					{
						r=(String)rs.getString("sub");
						s=(String)rs.getString("sub_code");
						t=(String)rs.getString("paper_code");
						u=(String)rs.getString("T_N_P");
						
						out.println("<br><br>Subject-Name:<input type'text' class='name' name='sub' placeholder='"+r+"' >");
						out.println("<br><br>Subject-code:<input type'text' class='name' size='3' maxlength='3' name='sub_code' placeholder='"+s+"' required='required'>");
						out.println("<br><br>Paper-code:<input type'text' class='name' size='4' maxlength='4' name='paper_code' placeholder='"+t+"' title='fill paper code otherwise fill 0000' required='required'>");
						out.println("<br><br>Subject-Type:<input type'text' class='name' name='type' placeholder='"+u+"' >");
						
					}
					out.println("<button id='button1'>Update</button>");
					
			}catch(Exception e)
			{
				out.println(e);
			}
%>