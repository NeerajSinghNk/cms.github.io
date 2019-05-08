		<%
			String t=(String)request.getParameter("branch");
			session.setAttribute("brnch",t);
			
			System.out.println("branch : "+t);
			if((t!=null))
			{
				out.println("<option >select</option>");
				out.println("<option >1</option>");
				out.println("<option >2</option>");
				out.println("<option >3</option>");
				
				out.println("<option >4</option>");
				out.println("<option >5</option>");
				out.println("<option >6</option>");
				
			}
			
		%>