	<%@ page import="java.io.*"%>
		
		<%
			String s=(String)request.getParameter("semester");
			System.out.println("semester: "+s);
			
			if((s!=null))
			{
				out.println("<option >select</option>");
				out.println("<option >SC</option>");
				
				out.println("<option >ST</option>");
				out.println("<option >OBC</option>");
				
				out.println("<option >GENERAL</option>");
			}
			else{
				response.sendRedirect("studentdetail.jsp");
			}
			
		%>