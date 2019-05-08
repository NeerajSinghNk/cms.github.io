<%@ page import="java.sql.*"%>		

 
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="Allmarks.css">


<script >
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
		function  fun5()
		{
			//alert("check");
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
			
			br=document.getElementById("branch").value
			
			br1=document.getElementById("semester").value
			br2=document.getElementById("markType").value
			br3=document.getElementById("subject").value
			br4=document.getElementById("roll").value
			//alert(br);
			var url= "Allmarks1.jsp?branch="+br+"&semester="+br1+"&markType="+br2+"&subject="+br3+"&roll="+br4;
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
		function  getSubject()
		{
			//alert("run");

			var s1=document.getElementById("markType").value
			var s2=document.getElementById("branch").value
			var s3=document.getElementById("semester").value
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
			
			
			var url= "getParticularSubject.jsp?markType="+s1+"&branch="+s2+"&semester="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = glo1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo1()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("subject");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  getRoll()
		{
			//alert("run");
			
			s3=document.getElementById("branch").value
			s4=document.getElementById("semester").value
			//alert(s1);
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
			
			
			var url= "loadroll1.jsp?branch="+s3+"&semester="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = stt;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stt()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("roll");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}

</script>
<body>
<%
	String a1=(String)session.getAttribute("adm");
	if(a1.equals("Admin"))
	{
								
				out.println("<h1 align='center'><br>FILTERING<br></h1>");
			
			out.println("<form >");
		
				out.println("Branch::<select name='branch' id='branch' onchange='fun5();'>");
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
			out.println("</select>");
			
			out.println("Semester::<select name='semester' id='semester' onchange='fun5();' onmouseout='getRoll();'>");
				out.println("<option>select</option>");
				
				out.println("<option>1</option>");
				out.println("<option>2</option>");
				out.println("<option>3</option>");
				out.println("<option>4</option>");
				out.println("<option>5</option>");
				out.println("<option>6</option>");
			out.println("</select>");	
			out.println("Marks-Type::<select name='markType' id='markType' onchange='fun5();' onmouseout='getSubject();' >");
				out.println("<option>select</option>");
				
				out.println("<option>Lab Work</option>");
				out.println("<option>Term Work</option>");
				out.println("</select>");
			
				out.println("Subject::<select name='subject' id='subject' onchange='fun5();'>");
				out.println("<option>select</option>");
				
				out.println("</select>");
				out.println("<br><br>Roll_number::<select name='roll' id='roll' onchange='fun5();'>");
				out.println("<option>select</option>");
				
			out.println("</select>");
			out.println("</form>");
	out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	
			out.println("<div class='container' id='table' >");
					
				out.println("</div>");
	}
	else
	{
		response.sendRedirect("index.html");
	}
				
	%>
</body>