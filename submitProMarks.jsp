<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	String z=(String)session.getAttribute("k");

	
	int l=Integer.parseInt(z);
			String a=(String)request.getParameter("year");
			System.out.println("the value of year is::"+a);
			String j=(String)request.getParameter("session");
			String b=(String)request.getParameter("branch");
			String c=(String)request.getParameter("semester");
			String d=(String)request.getParameter("test");
			String e=(String)request.getParameter("subject");
			Date date = new Date();  
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			String f = formatter.format(date);  
			//System.out.println("Date Format with MM/dd/yyyy : "+f);
			String total1=(String)request.getParameter("total");
			String g[]=new String[30];
			String h[]=new String[30];
			String i[]=new String[30];
						
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from promarks where branch1='"+b+"' and semester1='"+c+"' and test='"+d+"' and subject1='"+e+"'");
				while(rs.next())
				{
					con.close();
					session.setAttribute("b1",b);
						session.setAttribute("c1",c);
						session.setAttribute("d1",d);
						session.setAttribute("e1",e);
						session.setAttribute("f1",f);
					session.setAttribute("status","Marks Already submitted ");
					response.sendRedirect("uploadProMarks.jsp");
				}					
					
					int n=0;
					String pp="A";
					
					while(n<l)
					{

							 g[n]=request.getParameter("name"+n);
							h[n]=request.getParameter("roll"+n);
							i[n]=request.getParameter("obtain"+n);
							System.out.println("NAME::"+g[n]);
							System.out.println("ROLL NUMBER::"+h[n]);
							System.out.println("ATTENDANCE IS::"+i[n]);
							if(i[n]=="")
							{
								i[n]=pp;
							}
							if(i[n]!=null)
							{
								int i1=0;
								i1=stmt.executeUpdate("insert into promarks(session1,branch1,semester1,test,subject1,date1,name1,roll1,total,obtain,year1)  values ('"+j+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g[n]+"','"+h[n]+"','"+total1+"','"+i[n]+"','"+a+"')");
							}
							
							n++;
					}
					con.close();
					session.setAttribute("status","Marks Submited successfully ");
					session.setAttribute("b1",b);
						session.setAttribute("c1",c);
						session.setAttribute("d1",d);
						session.setAttribute("e1",e);
						session.setAttribute("f1",f);
					response.sendRedirect("uploadProMarks.jsp");
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	
%>