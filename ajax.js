
		
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
			var url= "globaldetail.jsp?session="+ss+"&branch="+br+"&semester="+br1+"&category="+br2+"&gender="+br3;
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
		
		function  fun2()
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
			var url= "updatebranch.jsp?roll="+br;
			//alert(url);
			xmlHttp.onreadystatechange = xyz2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz2()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("branch");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}
		function  fun3()
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
			br=document.getElementById("branch").value
			br1=document.getElementById("semester").value
			//alert(br);
			var url= "loadroll2.jsp?branch="+br+"&semester="+br1;
			//alert(url);
			xmlHttp.onreadystatechange = xyz3;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz3()

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
			s2=document.getElementById("semester1").value
			s1=document.getElementById("branch1").value
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
			
			
			var url= "loadroll1.jsp?branch1="+s1+"&semester1="+s2;
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
			br=document.getElementById("roll").value;
			
			
			//alert(br);
			var url= "deletename.jsp?roll="+br;
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
		function  fun5()
		{
			//alert("run");
			s2=document.getElementById("semester1").value
			s1=document.getElementById("branch1").value
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
			
			
			var url= "loadroll3.jsp?branch1="+s1+"&semester1="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange3;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange3()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("roll");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		function  funn2()
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
			
			
			//alert(br);
			var url= "viewtable.jsp?roll="+br;
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
		