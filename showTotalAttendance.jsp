<%@ page import="java.sql.*"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Artifika|Lobster');
</style>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'>
    
	
<link rel="stylesheet" href="STA.css">
<script>
function  allAttend()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
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
			
			
			var url= "getTotalAttendance.jsp?subject="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = g1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function g1()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("print");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		</script>
		<%
				String a=(String)session.getAttribute("user");
				String sm=(String)session.getAttribute("sem");
				String sess=(String)session.getAttribute("session");
				String br=(String)session.getAttribute("branch2");
			String b=(String)session.getAttribute("pass");
			String c=(String)session.getAttribute("msg");		
			if((br!=null))
			{
				out.println("<h1 align='center'><br>Total Attendance<br></h1>");
			
					out.println("<div id='wrapper1'><a href='logout.jsp' class='mscb1'><div class='dcr1'><div class='dot1'></div><div class='dot1'></div> <div class='dot1'></div> <div class='dot1'></div> </div> <span><i class='fas fa-power-off'><div class='dlt'> LOG<br> OUT</div></i></span></a></div>");				
	out.println("<div id='wrapper'><a href='home3.jsp' class='mscb'><div class='dcr'><div class='dot'></div><div class='dot'></div> <div class='dot'></div> <div class='dot'></div> </div> <span><i class='fas fa-backward'><div class='dlt'> Home</div></i></span></a></div>");
	
				out.println("<br><br>Subject:<select id='subject' name='subject' onchange='allAttend();' required='required'>");
					out.println("<option>select</option>");
					try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
						System.out.println("select * from subject where sess='"+sess+"' and dept='"+br+"' and semester='"+sm+"' order by sub_code asc");
						ResultSet rs=st.executeQuery("select * from subject where sess='"+sess+"' and dept='"+br+"' and semester="+sm+" order by sub_code asc"); 
							while(rs.next())
							{ 
								String s=rs.getString("sub");
								out.println("<option>"+s+"</option>");
							}
						
						}catch(Exception e)
						{
							out.println(e);
						}
					out.println("</select>");
					
				out.println("<div id='print'></div>");
			}
%>
		