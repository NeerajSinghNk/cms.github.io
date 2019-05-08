<%@ page import="java.sql.*"%>
	<%		
			String sess=(String)request.getParameter("session");
			String br1=(String)request.getParameter("branch");
			String bc=(String)session.getAttribute("branch2");			
	
			String br2=(String)request.getParameter("semester");
			String br3=(String)request.getParameter("category");
			String br4=(String)request.getParameter("gender");
			String query="select * from studentdetail ";
			if((sess!="select") &&(br1.equals("select")) &&(br2.equals("select")) &&(br3.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and branch='"+bc+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1!="select") &&(br2.equals("select")) &&(br3.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where branch='"+br1+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1.equals("select")) &&(br2!="select") &&(br3.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where semester='"+br2+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1.equals("select")) &&(br3!="select") &&(br2.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where category='"+br3+"' order by roll_no asc";
			}
			
			else if((sess.equals("select")) &&(br1.equals("select")) &&(br4!="select") &&(br2.equals("select")) &&(br3.equals("select")))
			{
				query="select * from studentdetail where gender='"+br4+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br1!="select") &&(br3.equals("select")) &&(br2.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and branch='"+br1+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br2!="select") &&(br3.equals("select")) &&(br1.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and semester='"+br2+"'  order by roll_no asc";
			}
			else if((sess!="select") &&(br3!="select") &&(br1.equals("select")) &&(br2.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and category='"+br3+"'  order by roll_no asc";
			}
			else if((sess!="select") &&(br4!="select") &&(br3.equals("select")) &&(br2.equals("select")) &&(br1.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1!="select") &&(br2!="select") &&(br3.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where branch='"+br1+"' and semester='"+br2+"' order by roll_no asc";
			
			}
			else if((sess.equals("select")) &&(br1!="select") &&(br3!="select") &&(br2.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where branch='"+br1+"' and category='"+br3+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1!="select") &&(br4!="select") &&(br3.equals("select")) &&(br2.equals("select")))
			{
				query="select * from studentdetail where branch='"+br1+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br2!="select") &&(br3!="select") &&(br1.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where semester='"+br2+"' and category='"+br3+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br4!="select") &&(br3!="select") &&(br1.equals("select")) &&(br2.equals("select")))
			{
				query="select * from studentdetail where gender='"+br4+"' and category='"+br3+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br2!="select") &&(br1!="select") &&(br3.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and branch='"+br1+"' and semester='"+br2+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br3!="select") &&(br1!="select") &&(br2.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and branch='"+br1+"' and category='"+br3+"'  order by roll_no asc";
			}
			else if((sess!="select") &&(br4!="select") &&(br1!="select") &&(br3.equals("select")) &&(br2.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and branch='"+br1+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br3!="select") &&(br2!="select") &&(br1.equals("select")) &&(br4.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and semester='"+br2+"' and category='"+br3+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br4!="select") &&(br2!="select") &&(br3.equals("select")) &&(br1.equals("select")))
			{
				query="select * from studentdetail where session1='"+sess+"' and semester='"+br2+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br3!="select") &&(br2!="select") &&(br1!="select") &&(br4.equals("select")))
			{
				query="select * from studentdetail where category='"+br3+"' and semester='"+br2+"' and branch='"+br1+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br4!="select") &&(br2!="select") &&(br3!="select") &&(br1.equals("select")))
			{
				query="select * from studentdetail where category='"+br3+"' and semester='"+br2+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br4!="select") &&(br3!="select") &&(br1!="select") &&(br2.equals("select")))
			{
				query="select * from studentdetail where category='"+br3+"' and branch='"+br1+"' and gender='"+br4+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br1!="select") &&(br2!="select") &&(br3!="select") &&(br4.equals("select")))
			{
				query="select * from studentdetail where category='"+br3+"' and branch='"+br1+"' and session1='"+sess+"' and semester='"+br2+"' order by roll_no asc";
			}
			else if((sess.equals("select")) &&(br1!="select") &&(br2!="select") &&(br3!="select") &&(br4!="select"))
			{
				query="select * from studentdetail where category='"+br3+"' and branch='"+br1+"' and gender='"+br4+"' and semester='"+br2+"' order by roll_no asc";
			}
			else if((sess!="select") &&(br1!="select") &&(br2!="select") &&(br3!="select") &&(br4!="select"))
			{
				query="select * from studentdetail where session1='"+sess+"' and category='"+br3+"' and branch='"+br1+"' and gender='"+br4+"' and semester='"+br2+"' order by roll_no asc";
			}
			
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery(query);
							String o,p,q,r,s,t,u;
							out.println("<table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
							while(rs.next())
							{
							
								o=rs.getString("session1");
								p=rs.getString("branch");
								q=rs.getString("semester");
								r=rs.getString("category");
								s=rs.getString("gender");
								
								t=rs.getString("name");
								u=rs.getString("roll_no");
								
									out.println("<tr>");
									out.println("<td>"+o+"</td>");
									out.println("<td>"+p+"</td>");
									out.println("<td>"+q+"</td>");
									out.println("<td>"+r+"</td>");
									out.println("<td>"+s+"</td>");
									out.println("<td>"+t+"</td>");
									out.println("<td>"+u+"</td>");
									out.println("</tr>");
								
							}
							out.println("</table>");
					}catch(Exception e)
					{
						out.println(e);
					}
%>