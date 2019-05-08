
<html>
	<head>
		
		<link rel="stylesheet"  href="login.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
	<%
		String s=(String)session.getAttribute("user");
	%>
		<img src="RGPV-DIPLOMA.png" height="200px" align="center" width="500px">
		<form onsubmit="fun();"method="get" >
			<div class="login-box">
			<h1>LOGIN</h1>
			<div class="textbox">User_id:<div><i class="fa fa-user" aria-hidden="true"></i> <input type="text"  name="user" id=="user_id" autofocus placeholder="User Id" ></div><span id="wronguser"></span></div>
			<div class="textbox">Password: <div><i class="fa fa-lock" aria-hidden="true"></i><input type="password" name="pass" placeholder="Password" id="password"></div><span id="wrongpass"></span></div>
			<span id="wrong"><%=s%></span>
			<button class="btn">LOG IN</button><br>
			</div>
		</form>
		
			
	</body>
</html>