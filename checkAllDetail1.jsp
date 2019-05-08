<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    <link rel="stylesheet" href="checkAllDetail1.css">
		
<script >

function  fun()
		{
			
			if (typeof XMLHttpRequest != "undefined")
			{
				xmlHttp= new XMLHttpRequest();

			}

			else if (window.ActiveXObject)
			{
				xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
		
			}
	
			if (xmlHttp==null)
			{
				alert ("Browser does not support XMLHTTP Request")
				return
			}
			//alert("check");
			ss=document.getElementById("session").value;
			br=document.getElementById("branch").value;
			
			br1=document.getElementById("semester").value;
			br2=document.getElementById("category").value;
			br3=document.getElementById("gender").value;
			//alert(br);
			var url= "globaldetail2.jsp?session="+ss+"&branch="+br+"&semester="+br1+"&category="+br2+"&gender="+br3;
			//alert(url);
			xmlHttp.onreadystatechange = xyz;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("table");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}
		
		function  getsem()
		{
			//alert("run");

			var s2=document.getElementById("session").value
			//alert(s2);
			if (typeof XMLHttpRequest != "undefined")
			{
				xmlHttp= new XMLHttpRequest();

			}

			else if (window.ActiveXObject)
			{
				xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
		
			}
	
			if (xmlHttp==null)
			{
				alert ("Browser does not support XMLHTTP Request")
				return
			}
			
			
			var url= "getsem.jsp?session="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = glo;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("semester");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
</script>

<body>
<%
			String a=(String)session.getAttribute("pass1");
			String c1=(String)session.getAttribute("msg");	
			String br1=(String)session.getAttribute("branch2");			
			if((a!=null))
			{
				
out.println("<h1 align='center'><br>STUDENT DETAIL<br></h1>");
			
								out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home2.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");

						out.println("Session::<select name='session' id='session' onchange='fun();' onmouseout='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
		
						out.println("Branch::<select name='branch' id='branch' onchange='fun();'>");
				out.println("<option>select</option>");
				out.println("<option>"+br1+"</option>");
				
			out.println("</select>");
			
			out.println("Semester::<select name='semester' id='semester' onchange='fun();'>");
				out.println("<option>select</option>");
				out.println("<option>1</option>");
				out.println("<option>2</option>");
				out.println("<option>3</option>");
				out.println("<option>4</option>");
				out.println("<option>5</option>");
				out.println("<option>6</option>");
				
			out.println("</select>");	
			out.println("Category::<select name='category' id='category' onchange='fun();'>");
				out.println("<option>select</option>");
				
				out.println("<option>SC</option>");
				out.println("<option>ST</option>");
				out.println("<option>OBC</option>");
				out.println("<option>GENERAL</option>");

			out.println("</select>");
			
				out.println("<br><br>Gender::<select name='gender' id='gender' onchange='fun();'>");
				out.println("<option>select</option>");
				
				out.println("<option>male</option>");
				out.println("<option>female</option>");

			out.println("</select></div>");
			out.println("</form >");
			
			
			
		
			out.println("<div id='table'>");
				out.println("</div><br><br>");
			
			}
		%>