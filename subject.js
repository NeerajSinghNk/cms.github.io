

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
			br=document.getElementById("dept").value;
			br1=document.getElementById("sess").value;
			//alert(br);
			var url= "getsub.jsp?dept="+br+"&sess="+br1;
			//alert(url);
			xmlHttp.onreadystatechange = xyz;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function xyz()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("sub");
				a.innerHTML=xmlHttp.responseText;
		
			}
		}
		function validation()
		{ 
			//alert("hii");
			sess=document.getElementById("sess");
			rol=document.getElementById("year");
			brach=document.getElementById("dept");
			sam=document.getElementById("quali");
			gen=document.getElementById("gender");
			ctagory=document.getElementById("category");
			
			if(ctagory.value=="select")
			{
				alert("Please select catagory...");
				ctagory.focus();
				ctagory.style.color="red";
				return false;
			}
			//alert("nll");
			if(gen.value=="select")
			{
				alert("Please select ganer...");
				gen.focus();
				gen.style.color="red";
				return false;
			}
			if(sam.value=="")
			{
				alert("Please Fill the qualification field...");
				sam.focus();
				sam.style.color="red";
				return false;
			}
			
			if(brach.value=="select")
			{
				alert("Please select Department...");
				brach.focus();
				brach.style.color="red";
				return false;
			}
			//alert("nll");
			if(rol.value=="select")
			{
				alert("please select year");
				rol.style.background="#ffaadd";
				rol.focus();
				return false;
			}
			
			if(sess.value=="select")
			{
				alert("Please select Session...");
				sess.focus();
				sess.style.color="red";
				return false;
			}
			
			
			return true;
		}