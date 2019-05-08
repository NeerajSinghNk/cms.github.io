<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import ="javax.sql.*" %>
<script src="sd.js">

</script>

<html>
<body>
	<%
	 String query="";
		String a=(String)request.getParameter("session");
		String b=(String)request.getParameter("branch");
		
		String c=(String)request.getParameter("semester");
		String d=(String)request.getParameter("num");
		int i=0;
		int j=1;
		i=Integer.parseInt(d);
		String e[]=new String[6];
		String f[]=new String[6];
		String g[]=new String[6];
		String h[]=new String[6];
		
	   // int m=0;
		
			session.setAttribute("sess",a);
			session.setAttribute("br",b);
			session.setAttribute("sm",c);
			session.setAttribute("num",d);
		
		try
		{
		
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
			
			Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
			Statement stmt=con.createStatement();  
			
			int i1=0;
			String roll;
			while(j<=i)
		{
				ResultSet rs=stmt.executeQuery("select * from subject where sess='"+a+"' and dept='"+b+"' and semester="+d+"  and sub='"+e[j]+"'");
						if(rs.next())
						{
							session.setAttribute("sub"+j+"",e[j]);
							session.setAttribute("msg","This Subject Alredy Exist");
							response.sendRedirect("addSubject.jsp");
			
						}							
			 e[j]=(String)request.getParameter("sub"+j);
			session.setAttribute("sub"+j+"",e[j]);
			System.out.println(e[j]);
			String k=(String)request.getParameter("T"+j);
			String l=(String)request.getParameter("P"+j);
			if(k!=null &&l!=null)
			{
				
			 f[j]="[T][P]";
			}
			else if(k!=null)
			{
				
			 f[j]="[T]";
			}
			else if(l!=null)
			{
				
			 f[j]="[P]";
			}
			String m="0";
			 g[j]=(String)request.getParameter("subjectcode"+j);
			 h[j]=(String)request.getParameter("paper"+j);
			  query="insert into subject(dept,sess,sub,semester,sub_code,paper_code,T_N_P) values ('"+b+"','"+a+"','"+e[j]+"',"+c+","+g[j]+","+h[j]+",'"+f[j]+"')";
			 System.out.println("insert into subject(dept,sess,sub,semester,sub_code,paper_code,T_N_P) values ('"+b+"','"+a+"','"+e[j]+"',"+c+","+g[j]+","+m+",'"+f[j]+"')");
			 	
			i1=stmt.executeUpdate(query);
			j++;
		}
			
			con.close();
			session.setAttribute("msg","Your data successfully inserted");
			response.sendRedirect("addSubject.jsp");
			
			}
			catch(Exception g1)
			{
				out.println(g1);
			}
	%>
</body>
</html>