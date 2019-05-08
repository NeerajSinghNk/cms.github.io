<html>
<head>
<style>
	.name
			{
				border:1px solid white;
				padding:10px;
				outline: none;
				background:none;
				color:white;
				font-size: 18px;
			}

</style>
<script src="sd.js">
</script>
</head>
<%
	
	int i=0;
	int j=1;
	String a=(String)request.getParameter("num");
	i=Integer.parseInt(a);
	out.println("<form action='submitSubject.jsp' method='get()' onsubmit='return validation();'>");
		
	while(j<=i)
	{
		out.println("<br><br><div id='full'><input type='text' class='name' name='sub"+j+"' id='sub"+j+"' placeholder='Subject-Name"+j+"'>");
		out.println("<input type='checkbox'  name='T"+j+"' id='T"+j+"' value='T'>Theory");
		out.println("<input type='checkbox'  name='P"+j+"' id='P"+j+"' value='P'>Practical");
		out.println("<input type='text' class='name' name='subjectcode"+j+"' placeholder='Subject-Code"+j+"' id='subjectcode"+j+"' maxlength='3' size='3' title='subject code must be 3 digit ' required='required'>");
		out.println("<input type='text' class='name' name='paper"+j+"' placeholder='Paper-Code"+j+"' id='paper"+j+"' maxlength='4' size='4' title='Insert paper code Otherwise Insert 4 digit 0000' required='required'></div>");
		
		j++;
	}
	out.println("<button id='button1'>Submit</button>");
	out.println("</form>");

%>
</html>