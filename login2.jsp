
<html>
	<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

      <link rel="stylesheet" href="css/style.css">

		<script src="aj.js">
		</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
	
		
		
<form  action="check_login2.jsp"  method="get" >  
<div class="form" id="form">
  <div class="field email">
    <div class="icon"></div>
    <input class="input" id="user_id" oninput="" name="user" type="text" placeholder="User" autocomplete="off"/>
  </div>
  <div class="field password">
    <div class="icon"></div>
    <input class="input" name="pass" id="password" type="password" placeholder="Password"/>
  </div>	<%
			String s1=(String)session.getAttribute("state");
			if(s1!=null)
			{
				%>
				
			<span id="wrong" style="color:red;"><%= s1%></span>
			
			<%
			}
			session.removeAttribute("state");
			%>
			
  <button class="button" id="submit">LOGIN
    <div class="side-top-bottom"></div>
    <div class="side-left-right"></div>
  </button>
		</form>
		
			</div><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>


	</body>
</html>