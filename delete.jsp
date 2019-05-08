<%@ page import="java.sql.*"%>

<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="delete.css">
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
		function  fun4()
		{
			//alert("run");
			s2=document.getElementById("semester").value
			s1=document.getElementById("branch").value
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
			
			
			var url= "loadroll1.jsp?branch="+s1+"&semester="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange2()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("roll");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		function  funn1()
		{
			//alert("b");
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
			br=document.getElementById("roll").value
			br1=document.getElementById("session").value
			br2=document.getElementById("branch").value
			
			
			//alert(br);
			var url= "deletename.jsp?roll="+br+"&session="+br1+"&branch="+br2;
			//alert(url);
			xmlHttp.onreadystatechange = xyz1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("divv");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}

</script>
<%

		String s2=(String)session.getAttribute("adm");
					
	if(s2.equals("Admin")) 				
	{
				out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
		
			out.println("<h1 align='center'><br>DELETING<br></h1>");
			
			out.println("<form name='deleteform' action='deletevalue.jsp'>");
			out.println("<br><br>Session::<select name='session' id='session'  onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
		
			out.println("Branch::<select name='branch' id='branch' >");
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
			out.println("</select>");
			
			out.println("Semester::<select name='semester' id='semester' onchange='fun4();'>");
				out.println("<option>select</option>");
				
			out.println("</select>");
			out.println("Roll_number:<select name='roll' id='roll' onchange='funn1();'>");
				out.println("<option>SELECT</option>");
			out.println("</select><br><br>");
			
			out.println("<div id='divv'>");
			String str=(String)session.getAttribute("del");
			if(str!=null)
			{
					out.println("<h3 >"+str+"</h3><br>");
			}	
				
			out.println("</div>");
			session.removeAttribute("del");
	}
			
	%>