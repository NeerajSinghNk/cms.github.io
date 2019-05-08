		function  fun()
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
			br=document.getElementById("user_id").value
			br1=document.getElementById("password").value
			//alert(br);
			var url= "check_login.jsp?user_id="+br+"&password="+br1;
			//alert(url);
			xmlHttp.onreadystatechange = xyz3;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz3()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("wrong");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}