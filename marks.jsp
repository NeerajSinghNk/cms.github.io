<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="marks.css">


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
		function  loadSubject()
		{
			//alert("run");

			var s1=document.getElementById("subject").value
			var s2=document.getElementById("branch").value
			var s3=document.getElementById("semester").value
			var s4=document.getElementById("markType").value
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
			
			
			var url= "loadSubject.jsp?subject="+s1+"&branch="+s2+"&semester="+s3+"&markType="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = glo2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo2()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("print");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}

</script>
<body>
<%

		String st=(String)session.getAttribute("adm");
					
	if(st.equals("Admin")) 				
	{
	
		
								out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
			out.println("<form onsubmit='return valid();' action='result.jsp'>");
					out.println("<h1 align='center'><br>Upload Sessional Marks<br></h1>");
						out.println("Session::<select name='session' id='session'  onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
		
						out.println("Branch::<select id='branch' name='branch'  required='required'>");
			
				out.println("<option>select</option>");
				
				out.println("<option>Cs</option>");
				out.println("<option>Civil</option>");
				out.println("<option>Mechanical</option>");
				out.println("<option>Electronics</option>");
				out.println("<option>Electrical</option>");
				
		out.println("</select>");
		
			out.println("Semester::<select id='semester'  onchange='pickRoll();' name='semester'  required='required'>");
			
				out.println("<option>select</option>");
		out.println("</select>");
		
							out.println("Marks-Type::<select name='markType' id='markType' onchange='getSubject();' >");
						out.println("<option>select</option>");
						out.println("<option>Lab Work</option>");
						out.println("<option>Term Work</option>");
						out.println("</select>");
						
						out.println("<br><br>Subject::<select  id='subject' name='subject' ><br><br>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.print("Maximum-Marks:<input type='text' name='mm' id='mm' oninput='loadSubject();' pattern='^[1-2]?[0-9]$' required='required'>");
						out.println("<div id='print'>");
						out.println("</div>");
						out.print("</form>");
					
					
			String s=(String)session.getAttribute("insert");
			String s1=(String)session.getAttribute("br0");
			String s2=(String)session.getAttribute("br1");
			String s3=(String)session.getAttribute("br2");
			String s4=(String)session.getAttribute("br3");
			String s5=(String)session.getAttribute("br4");
			if(s!=null)
			{
			out.println("<span>"+s+"</span>");
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
			
				Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
			 
				Statement stmt=con.createStatement(); 
				String p,q,r;
		
				out.println("<table class='container' border='1'><tr>Session:"+s1+" Branch:"+s2+" Semester:"+s3+" Marks-Type:"+s4+"<tr><th>Name</th><th>Roll_Number</th><th>"+s5+"-marks</th></tr>");
				ResultSet rs=stmt.executeQuery("select * from marks where branch='"+s2+"' and semester='"+s3+"' and sub='"+s5+"' and markType='"+s4+"' order by roll_no asc");
				while(rs.next())
				{	
					p=(String)rs.getString("name");
					q=(String)rs.getString("roll_no");
					r=(String)rs.getString("marks");
					out.println("<tr><td>"+p+"</td><td>"+q+"</td><td>"+r+"</td></tr>");
				}
			}catch(Exception e)
			{
				out.println(e);
			}
		}
				
				
	}
	else
	{
		response.sendRedirect("index.html");
	}
		
		
			
%>
</body>