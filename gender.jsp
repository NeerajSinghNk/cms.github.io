	<%@ page import="java.io.*"%>
		
		<%
			String s=(String)request.getParameter("branch");
			System.out.println("branch: "+s);
			
			if((s!=null))
			{
				out.println("<option >select</option>");
				out.println("<option value='male'>male</option>");
				out.println("<option value=female'>female</option>");
			}
			else{
				response.sendRedirect("studentdetail.jsp");
			}
			
		%>