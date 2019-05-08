<%
	String s3=(String)request.getParameter("branch");
	String s4=(String)request.getParameter("semester");
	String s5=(String)request.getParameter("branch1");
	session.setAttribute("m2",s3);
	session.setAttribute("m3",s4);
	session.setAttribute("m4",s5);
	response.sendRedirect("checkAllDetail.jsp");
%>