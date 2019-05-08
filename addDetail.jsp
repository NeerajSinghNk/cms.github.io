<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
	<script src="try.js">
	</script>
</head>
<body>
<%
			String a=(String)session.getAttribute("adm");
			String b=(String)session.getAttribute("pass1");
			String c=(String)session.getAttribute("msg");		
				if((a.equals("Admin")) && (b.equals("123456")))
				{	
					out.println("<h1>WELCOME  :  "+a+"</h1>");
					
					out.println("<h1 align='center'><br>ADD Parents Detail<br></h1>");
					out.println("<div id='dp'>BRANCH::<select id='branch' name='branch' onchange='fun2();'>");
						out.println("<option>select</option>");
						
						out.println("<option>Cs</option>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
						out.println("</select>");
			
						out.println("SEMESTER::<select id='semester' name='semester' onchange='fun3();'>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.println("Roll_number::<select id='roll' name='roll' onchange='fun4();'><br><br>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.println("<div id='printdata'>");
						String c2=(String)session.getAttribute("c1");
						if(c2!=null)
						{
							out.println("<p>"+c2+"</p>");
							try{
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
									Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
									Statement st= con.createStatement(); 
									ResultSet rs=st.executeQuery("select * from parentDetail ");
									String p,q,r,s,t,u,v,w,x;
									out.println("<table border='1'><tr><th>Name</th><th>Roll_No</th><th>Mother/Father_Name</th><th>Category</th><th>Gender</th><th>Phone_number</th><th>Address</th><th>ID</th><th>password</th></tr>");
									while(rs.next())
									{
										p=rs.getString("ID");
										q=rs.getString("name");
								
										r=rs.getString("roll");
										s=rs.getString("parent");
										t=rs.getString("category");
										u=rs.getString("gender");
										v=rs.getString("mobile");
										w=rs.getString("address");
										x=rs.getString("password");
			
										out.println("<tr><td>"+q+"</td>");
										out.println("<td>"+r+"</td>");
										out.println("<td>"+s+"</td>");
										out.println("<td>"+t+"</td>");
										out.println("<td>"+u+"</td>");
										out.println("<td>"+v+"</td>");
										out.println("<td>"+w+"</td>");
										out.println("<td>"+p+"</td>");
										out.println("<td>"+x+"</td></tr>");
									}
								out.println("</table>");
								con.close();
							}
						catch(Exception e)
						{
							out.println(e);
						}
						session.removeAttribute("c1");
					}
						out.println("</div>");
				}
%>
