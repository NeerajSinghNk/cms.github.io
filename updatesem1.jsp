<%
		String b=(String)request.getParameter("semester");
			if(b!=null)
			{
				out.println("<option>"+b+"</option>");
				if(b.equals("1"))
				{
						out.println("<option>2</option>");
						out.println("<option>3</option>");
						out.println("<option>4</option>");
						out.println("<option>5</option>");
						out.println("<option>6</option>");
				}
				else if(b.equals("2"))
				{
						out.println("<option>1</option>");
						out.println("<option>3</option>");
						out.println("<option>4</option>");
						out.println("<option>5</option>");
						out.println("<option>6</option>");
				}
				else if(b.equals("3"))
				{
						out.println("<option>1</option>");
						out.println("<option>2</option>");
						out.println("<option>4</option>");
						out.println("<option>5</option>");
						out.println("<option>6</option>");
				}
				else if(b.equals("4"))
				{
						out.println("<option>2</option>");
						out.println("<option>3</option>");
						out.println("<option>1</option>");
						out.println("<option>5</option>");
						out.println("<option>6</option>");
				}
				else if(b.equals("5"))
				{
						out.println("<option>2</option>");
						out.println("<option>3</option>");
						out.println("<option>1</option>");
						out.println("<option>4</option>");
						out.println("<option>6</option>");
				}
				else
				{
						out.println("<option>2</option>");
						out.println("<option>3</option>");
						out.println("<option>1</option>");
						out.println("<option>4</option>");
						out.println("<option>5</option>");
				}
			}
%>