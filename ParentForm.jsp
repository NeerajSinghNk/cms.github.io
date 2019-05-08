<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
String r1=(String)request.getParameter("roll");
if(r1!="select")
{
	String u,v;
	out.println("<form onsubmit='return valid();' action='insertPDetail.jsp'>");
		try
			{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			String s,t;
			ResultSet rs=stmt.executeQuery("select * from studentdetail where roll_no='"+r1+"'");
			if(rs.next())
			{
				t=(String)rs.getString("Name");
				s=(String)rs.getString("roll_no");
				out.println("<br><br>Name_Of_Student::<input type='text'  name='name' id='name' value='"+t+"' >");
				out.println("<br><br>Roll_no_Of_Student::<input type='text'  name='rollno' id='rollno' value='"+s+"' >");
			}
			con.close();
		}catch(Exception g)
			{
				out.println(g);
			}
			out.println("<br><br>Father/Mother_Name::<input type='text' id='fname' name='fname' placeholder='Enter Name'><br><br>");
			try
			{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from studentdetail where roll_no='"+r1+"'");
			if(rs.next())
			{
				u=(String)rs.getString("category");
				out.println("<br><br>Category::<input type='text'  name='cate' id='cate' value='"+u+"' >");
			}
			con.close();
		}
			catch(Exception g)
			{
				out.println(g);
			}
			try
			{
			
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			ResultSet rs=stmt.executeQuery("select * from studentdetail where roll_no='"+r1+"'");
			if(rs.next())
			{
				v=(String)rs.getString("Gender");
				out.println("<br><br>Gender::<input type='text'  name='gen' id='gen' value='"+v+"'>");
			}
			con.close();
		}
			catch(Exception g)
			{
				out.println(g);
			}			
			out.println("<br><br>Mobile/Phone :<input type='text' id='sub1' name='sub1' placeholder='10-digit mobile' required='required'></div>");
			out.println("<br><br>Address::<textarea id='sub2' name='sub2' required='required' placeholder='Address' rows='4' cols='40'></textarea></div><br><br>");
			out.println("<br><br><button id='button1'>SUBMIT</button>");
			out.println("</form>");

}
%>