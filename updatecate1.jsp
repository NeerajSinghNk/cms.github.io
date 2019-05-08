<%
		String b=(String)request.getParameter("cate");
			if(b!=null)
			{
				out.println("<option>"+b+"</option>");
				if(b.equals("SC"))
				{
					out.println("<option >ST</option>");
					out.println("<option >OBC</option>");
					out.println("<option >GENERAL</option>");
				}
				else if(b.equals("ST"))
				{
					out.println("<option >SC</option>");
					out.println("<option >OBC</option>");
					out.println("<option >GENERAL</option>");
				}
				else if(b.equals("OBC"))
				{
					out.println("<option >ST</option>");
					out.println("<option >SC</option>");
					out.println("<option >GENERAL</option>");
				}
				else 
				{
					out.println("<option >ST</option>");
					out.println("<option >OBC</option>");
					out.println("<option >SC</option>");
				}
			}
%>