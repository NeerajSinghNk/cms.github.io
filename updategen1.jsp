<%
		String b=(String)request.getParameter("gen");
			if(b!=null)
			{
				out.println("<option>"+b+"</option>");
				if(b.equals("male"))
				{
					out.println("<option >female</option>");
				}
				else 
				{
					out.println("<option >male</option>");
				}
			}
%>