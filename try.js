

		function  fun1()
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
			br=document.getElementById("dept").value;
			//alert(br);
			
			br1=document.getElementById("session").value;
			//alert(br1);
			br2=document.getElementById("gender").value;
			//alert(br);
			//alert(br2);
			var url= "globalTeacheDetail.jsp?dept="+br+"&session="+br1+"&gender="+br2;
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
		function  fun2()
		{
			//alert("run");
			s=document.getElementById("branch").value
			//alert(s);
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
			
			
			var url= "loadsem.jsp?branch="+s;
		//	alert(url);
			xmlHttp.onreadystatechange = stateChange1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("semester");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		function  fun3()
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
			
			
			var url= "GetRoll.jsp?branch="+s1+"&semester="+s2;
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
		function  fun4()
		{
			//alert("run");
			s1=document.getElementById("roll").value
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
			
			
			var url= "ParentForm.jsp?roll="+s1;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange3;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange3()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("printdata");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}