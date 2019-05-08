<%@ page import="java.sql.*"%>
	<%		
			
			String sess=(String)request.getParameter("branch");
			String br1=(String)request.getParameter("semester");
			String br2=(String)request.getParameter("markType");
			String br3=(String)request.getParameter("subject");
			String br4=(String)request.getParameter("roll");
			String query="";
			System.out.println(br1);
			if(sess!="select" &&br1.equals("select") &&br2.equals("select") &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where branch='"+sess+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess.equals("select") &&br1!="select" &&br2.equals("select") &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where semester='"+br1+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess.equals("select") &&br1.equals("select") &&br2!="select" &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where markType='"+br2+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess!="select" &&br1!="select" &&br2.equals("select") &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where branch='"+sess+"' and semester='"+br1+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess!="select" &&br2!="select" &&br1.equals("select") &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where branch='"+sess+"' and markType='"+br2+"' order by roll_no asc,branch asc,semester asc";
			}
			
			else if(sess!="select" &&br2!="select" &&br1!="select" &&br3.equals("select") &&br4.equals("select"))
			{
			query="select * from marks where branch='"+sess+"' and markType='"+br2+"' and semester='"+br1+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess!="select" &&br2.equals("select") &&br1!="select" &&br3.equals("select") &&br4!="select")
			{
			query="select * from marks where branch='"+sess+"' and semester='"+br1+"' and roll_no='"+br4+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess!="select" &&br2!="select" &&br1!="select" &&br3!="select" &&br4.equals("select"))
			{
			query="select * from marks where branch='"+sess+"' and markType='"+br2+"' and semester='"+br1+"' and sub='"+br3+"' order by roll_no asc,branch asc,semester asc";
			}
			else if(sess!="select" &&br2!="select" &&br1!="select" &&br3.equals("select") &&br4!="select")
			{
			query="select * from marks where branch='"+sess+"' and markType='"+br2+"' and semester='"+br1+"' and roll_no='"+br4+"' order by roll_no asc,branch asc,semester asc";
			}
			
			
			else if(sess!="select" &&br2!="select" &&br1!="select" &&br3!="select" &&br4!="select")
			{
			query="select * from marks where branch='"+sess+"' and markType='"+br2+"' and semester='"+br1+"' and sub='"+br3+"' and roll_no='"+br4+"' order by roll_no asc,branch asc,semester asc";
			}
			
			
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				String p,q,r,s,t,u,v,w;
		
				out.println("<table border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Name</th><th>Roll_Number</th><th>Marks-Type</th><th>Subject</th><th>Marks</th></tr>");
				ResultSet rs=stmt.executeQuery(query);
				while(rs.next())
				{	
					p=(String)rs.getString("session1");
					q=(String)rs.getString("branch");
					r=(String)rs.getString("semester");
					s=(String)rs.getString("markType");
					t=(String)rs.getString("sub");
					u=(String)rs.getString("name");
					v=(String)rs.getString("roll_no");
					w=(String)rs.getString("marks");
					out.println("<tr><td>"+p+"</td><td>"+q+"</td><td>"+r+"</td><td>"+u+"</td><td>"+v+"</td><td>"+s+"</td><td>"+t+"</td><td>"+w+"</td></tr>");
				}
			}catch(Exception e)
			{
				out.println(e);
			}
			
	%>