
<%@ page import="java.io.*"%>
<%		

		String s=(String)request.getParameter("branch");
		
		String t=(String)request.getParameter("gender");
					session.setAttribute("rs2",s);
					session.setAttribute("rs3",t);
					response.sendRedirect("Admindata.jsp");		
		%>