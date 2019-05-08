<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
	<style>
			ins
			{
				color:blue;
				background-color:#ffaa12;
			}
	</style>
	<body>
		<%
			out.println("<h1><ins>you are enter the wrong user id &password</ins></h1>");
		%>
		<h1>welcome</h1>
		<h1>you are invalid user</h1>
		<%
			out.println("<a href='index.html'>back to the login page click hare</a>");
		%>
	</body>
</html>