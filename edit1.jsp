<%@ page import="java.sql.*"%>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	<link rel="stylesheet" href="edit.css">
<script >

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
		function  funn()
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
			br=document.getElementById("roll").value;
			
			
			//alert(br);
			var url= "updatename.jsp?roll="+br;
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
</head>
<body >
<%
		String s2=(String)session.getAttribute("adm");
					
	if(s2.equals("Admin")) 				
	{
		
	
										out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG OUT</div></i></span></a></div>");
					
				out.println("<div id='wrapper'><a href='home.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	
			
		out.println("<h1 align='center'><br>Update Student Detail<br></h1>");
			out.println("Session::<select name='session' id='session'  onchange='getsem();'>");
						out.println("<option>select</option>");
						out.println("<option>Jul_to_Dec</option>");
						out.println("<option>Jan_to_June</option>");
						out.println("</select>");
		
		
				out.println("Branch::<select id='branch' name='branch'>");
						out.println("<option>select</option>");
						out.println("<option>Cs</o2ption>");
						out.println("<option>Civil</option>");
						out.println("<option>Mechanical</option>");
						out.println("<option>Electronics</option>");
						out.println("<option>Electrical</option>");
						out.println("</select>");
			
						out.println("Semester::<select id='semester' name='semester' onchange='fun4();'>");
							out.println("<option>select</option>");
							out.println("<option>1</option>");
							out.println("<option>2</option>");
							out.println("<option>3</option>");
							out.println("<option>4</option>");
							out.println("<option>5</option>");
							out.println("<option>6</option>");
						out.println("</select>");
						out.println("<form action='edit.jsp'>");
						out.println("<br><br><div id='rll'>Roll_number::<select id='roll' name='roll' onchange='funn();'></div>");
							out.println("<option>select</option>");
						out.println("</select>");
						out.println("<div id='divv'>");
						out.println("</div>");
						out.println("</form>");
						String br7=(String)session.getAttribute("status");
						
						String num2=(String)session.getAttribute("num1");
						String br6=(String)session.getAttribute("rollno");
						
						if(num2!=null)
						{
							out.println("<div id='spp'><h2 h1='spn'><span style='color:white;'>"+br7+"</span></h2></div>");
							out.println("<div id='tabledata'>");
							try
								{
						
									Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
									
									Connection con=DriverManager.getConnection("jdbc:odbc:valid");  
									 
									Statement stmt=con.createStatement();  
							
							
										
										ResultSet rs=stmt.executeQuery("select * from studentdetail where roll_no='"+br6+"'");
										String o,p,q,r,s,t,u;
									
										out.println("<div id=''><table class='container' border='1'><tr><th>Session</th><th>Branch</th><th>Semester</th><th>Category</th><th>Gender</th><th>Name</th><th>Roll_number</th></tr>");
										while(rs.next())
										{
										
											o=rs.getString("session1");
											p=rs.getString("branch");
											q=rs.getString("semester");
											r=rs.getString("category");
											s=rs.getString("gender");
											
											t=rs.getString("name");
											u=rs.getString("roll_no");
											
											out.println("<tr>");
												out.println("<td>"+o+"</td>");
												out.println("<td>"+p+"</td>");
												out.println("<td>"+q+"</td>");
												out.println("<td>"+r+"</td>");
												out.println("<td>"+s+"</td>");
												out.println("<td>"+t+"</td>");
												out.println("<td>"+u+"</td>");
												out.println("</tr>");
											}
												out.println("</table>");
						}
						catch(Exception g)
						{
							out.println(g);
						}
			
							out.println("</div>");
				}

		session.removeAttribute("num1");
		session.removeAttribute("status");
		
	}
	else
	{
		response.sendRedirect("index.html");
	}
	
	
%>
</body>