<%		
			String s=(String)request.getParameter("session");
			if(s!=null)
			{
				if(s.equals("Jul_to_Dec"))
				{
					out.println("<option>select</option>");
					out.println("<option>1</option>");
					out.println("<option>3</option>");
					out.println("<option>5</option>");
				}
				else if(s.equals("Jan_to_June"))
				{
					
					out.println("<option>select</option>");
					out.println("<option>2</option>");
					out.println("<option>4</option>");
					
					out.println("<option>6</option>");
				}
				else
				{
					out.println("<option>select</option>");
				}
							
			}

%>