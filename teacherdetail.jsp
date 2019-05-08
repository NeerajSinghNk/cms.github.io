<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
	String a5=(String)request.getParameter("dept");
	String a1=(String)request.getParameter("teacher");
	String a2=(String)request.getParameter("category");
	String a3=(String)request.getParameter("gender");
	String a4=(String)request.getParameter("quali");
	String a6=(String)request.getParameter("sess");
	String year1=(String)request.getParameter("year");
	String a7[]=new String[40];
	String a8=(String)session.getAttribute("sub");
	int k=Integer.parseInt(a8);
	
	System.out.print("name::"+a6);
	int random=(int)(Math.random()*50000+1);
	String psd=String.valueOf(random);
	try{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
					Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
					Statement st= con.createStatement(); 
					int j=0;
					int	i=0;
					while(j<k)
					{
							a7[j]=request.getParameter("check"+j);
							if(a7[j]!=null)
							{
								String query="(insert into teacherdetail(name,dept,sub,password,session,qualification,category,gender,year1) values ('"+a1+"','"+a5+"','"+a7[j]+"','"+psd+"','"+a6+"','"+a4+"','"+a2+"','"+a3+"','"+year1+"'))";
					
								i=st.executeUpdate(query);
							}

							if(i!=0)
							{
								session.setAttribute("true","STATUS::Data inserted successfully");
							}
							j++;
					}
					session.setAttribute("user_id",psd);
					response.sendRedirect("addteacher.jsp");
					
			}catch(Exception e)
			{
				out.println(e);
			}
%>