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
		
		function  fun2()
		{
			//alert("run");
			s1=document.getElementById("year").value
			s2=document.getElementById("session").value
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
			
			
			var url= "loadroll.jsp?year="+s1+"&session="+s2+"&branch="+s3+"&semester="+s4;
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
		function  fun3()
		{
			//alert("hi");
					
			s2=document.getElementById("session").value
			s3=document.getElementById("branch").value
			s4=document.getElementById("semester").value
			s1=document.getElementById("roll").value;
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
			
			
			var url= "loadname.jsp?roll="+s1+"&session="+s2+"&branch="+s3+"&semester="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange4;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange4()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("printdata");
				b.innerHTML=xmlHttp.responseText;
			
			}
		}
		function valid()
		{
			//alert("check");
			marks=document.getElementsByClassName("sub");
			//alert(marks.length==3);
				if (marks[0].value<0 ||mark1.value>100)
				{
					alert("marks should be greater than 0 and less than 100...");
					marks[0].focus();
					marks[0].style.color="red";
					return false;
				}
				if (marks[1].value<0 ||mark1.value>100)
				{
					alert("marks should be greater than 0 and less than 100...");
					marks[1].focus();
					marks[1].style.color="red";
					return false;
				}
				if (marks[2].value<0 ||mark1.value>100)
				{
					alert("marks should be greater than 0 and less than 100...");
					marks[2].focus();
					marks[2].style.color="red";
					return false;
				}
				if (marks[3].value<0 ||mark1.value>100)
				{
					alert("marks should be greater than 0 and less than 100...");
					marks[3].focus();
					marks[3].style.color="red";
					return false;
				}
				if (marks[4].value<0 ||mark1.value>100)
				{
					alert("marks should be greater than 0 and less than 100...");
					marks[4].focus();
					marks[4].style.color="red";
					return false;
				}
			
				
			
			return true;
					
		}
function valid2()
		{
			
			mark1=document.getElementById("sub1");
			//alert("hii");
			if(mark1.value<0 ||mark1.value>100)
			{
				alert("marks should be greater than 0 and less than 100...");
				mark1.focus();
				mark1.style.background="red";
				return false;
			}
			mark2=document.getElementById("sub2");
			if(mark2.value<0 ||mark2.value>100)
			{
				alert("Please enter correct mark2...");
				mark2.focus();
				mark2.style.background="red";
				return false;
			}
			mark3=document.getElementById("sub3");
			if(mark3.value<0||mark3.value>100)
			{
				alert("Please enter correct mark3...");
				mark3.focus();
				mark3.style.background="red";
				return false;
			}
			mark4=document.getElementById("sub4");
			if(mark4.value<0||mark4.value>100)
			{
				alert("Please enter correct mark4..");
				mark4.focus();
				mark4.style.background="red";
				return false;
			}
			
			return true;
					
		}
