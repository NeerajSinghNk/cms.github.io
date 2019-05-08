<%
		String b=(String)request.getParameter("branch");
			if(b!=null)
			{
				out.println("<option>"+b+"</option>");
				if(b.equals("Cs"))
				{
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
				}
				else if(b.equals("Civil"))
				{
						out.println("<option>Cs</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
				}
				else if(b.equals("Mechanical"))
				{
						out.println("<option>Cs</option>");
						out.println("<option>Civil</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
				}
				else if(b.equals("Electronics"))
				{
						out.println("<option>Cs</option>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electrical</option>");
				}
				else 
				{
						out.println("<option>Cs</option>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
				}
			}
%>