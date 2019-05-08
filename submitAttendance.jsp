<%@ page import="java.sql.*"%>
<%
	String z=(String)session.getAttribute("k");
	
	System.out.println("the value of brrrr is :"+z);
	int l=Integer.parseInt(z);
			String a=(String)request.getParameter("year");
			System.out.println("the value of year is::"+a);
			String j=(String)request.getParameter("session");
			String b=(String)request.getParameter("branch");
			String c=(String)request.getParameter("semester");
			String d=(String)request.getParameter("lecture");
			String e=(String)request.getParameter("subject");
			String f=(String)request.getParameter("date");
			String g[]=new String[30];
			String h[]=new String[30];
			String i[]=new String[30];

		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from Attendance where branch1='"+b+"' and semester1='"+c+"' and lecture1='"+d+"' and subject1='"+e+"' and date1='"+f+"'");
				while(rs.next())
				{
					con.close();
					session.setAttribute("status","Attendance Already submitted ");
					response.sendRedirect("takeAttendance.jsp");
				}					
					
					int n=0;
					String pp="A";
					
					while(n<l)
					{

							 g[n]=request.getParameter("name"+n);
							h[n]=request.getParameter("roll"+n);
							i[n]=request.getParameter("check"+n);
							System.out.println("NAME::"+g[n]);
							System.out.println("ROLL NUMBER::"+h[n]);
							System.out.println("ATTENDANCE IS::"+i[n]);
							if(i[n]==null)
							{
								i[n]=pp;
							}
							if(i[n]!=null)
							{
								int i1=0;
								i1=stmt.executeUpdate("insert into Attendance(session1,branch1,semester1,lecture1,subject1,date1,name1,roll_no1,attendance1,year1)  values ('"+j+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g[n]+"','"+h[n]+"','"+i[n]+"','"+a+"')");
							}
							
							n++;
					}
					con.close();
					session.setAttribute("status","Attendance Submited successfully ");
						session.setAttribute("b1",b);
						session.setAttribute("c1",c);
						session.setAttribute("d1",d);
						session.setAttribute("e1",e);
						session.setAttribute("f1",f);
					response.sendRedirect("takeAttendance.jsp");
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	
		
	
%>