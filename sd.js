

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
function  getSubjectDetail()
		{
			//alert("run");
			s1=document.getElementById("session").value
			s2=document.getElementById("branch").value
			s3=document.getElementById("semester").value
			s4=document.getElementById("subject").value
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
			
			
			var url= "getSubjectDetail.jsp?session="+s1+"&branch="+s2+"&semester="+s3+"&subject="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = getSubDetail;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function getSubDetail()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("dp");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		function  getSubjectDetail1()
		{
			//alert("run");
			s1=document.getElementById("session").value
			s2=document.getElementById("branch").value
			s3=document.getElementById("semester").value
			s4=document.getElementById("subject").value
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
			
			
			var url= "getSubjectDetail1.jsp?session="+s1+"&branch="+s2+"&semester="+s3+"&subject="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = getSubDetail1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function getSubDetail1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("dp");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
function  getSubject()
		{
			//alert("run");
			s1=document.getElementById("session").value
			s2=document.getElementById("branch").value
			s3=document.getElementById("semester").value
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
			
			
			var url= "getSubject1.jsp?session="+s1+"&branch="+s2+"&semester="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = getSub;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function getSub()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("subject");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		
function  getText()
		{
			//alert("run");
			s=document.getElementById("num").value
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
			
			
			var url= "addText.jsp?num="+s;
			//alert(url);
			xmlHttp.onreadystatechange = get1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function get1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("dp");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}	
		
		
		function  funAjax1()
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
			
			
			var url= "gender.jsp?branch="+s;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("gender");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		function  funAjax2()
		{
			s=document.getElementById("semester").value;
		//	alert(s)
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
			
			
			var url= "category.jsp?semester="+s;
			//alert(url);
			xmlHttp.onreadystatechange = stateChange2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stateChange2()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("category");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
			
	
		function validation()
		{ 
			//alert("hii");
			sess=document.getElementById("session");
			rol=document.getElementById("roll");
			brach=document.getElementById("branch");
			sam=document.getElementById("semester");
			gen=document.getElementById("gender");
			ctagory=document.getElementById("category");
			//alert("hii");
			if(sess.value=="select")
			{
				alert("Please select Session...");
				sess.focus();
				sess.style.color="red";
				return false;
			}
			if(brach.value=="select")
			{
				alert("Please select branch...");
				brach.focus();
				brach.style.color="red";
				return false;
			}
			if(sam.value=="select")
			{
				alert("Please select sem...");
				sam.focus();
				sam.style.color="red";
				return false;
			}
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
			//alert("nll");
			p_rn=/^\d{5}[A-z]\d{5}$/;
			if(!p_rn.test(rol.value))
			{
				alert("Invalid roll no");
				rol.style.background="#ffaadd";
				rol.focus();
				return false;
			}
			
			return true;
		}
		function  fun()
		{
			//alert("run");
			s=document.getElementById("session").value
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
			
			
			var url= "getsem.jsp?session="+s;
			//alert(url);
			xmlHttp.onreadystatechange = state;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function state()

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
			s=document.getElementById("session").value
			s1=document.getElementById("branch").value
			s2=document.getElementById("semester").value
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
			
			
			var url= "getsubject.jsp?session="+s+"&branch="+s1+"&semester="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = state1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function state1()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("subject");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  fun3()
		{
			//alert("run");
			s=document.getElementById("branch").value
			s1=document.getElementById("semester").value
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
			
			
			var url= "getstudent.jsp?branch="+s+"&semester="+s1;
			//alert(url);
			xmlHttp.onreadystatechange = state2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function state2()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("data");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  fun4()
		{
			//alert("run");
			s=document.getElementById("branch").value
			s1=document.getElementById("semester").value
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
			
			
			var url= "getstudent1.jsp?branch="+s+"&semester="+s1;
			//alert(url);
			xmlHttp.onreadystatechange = state3;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function state3()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("data");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  global()
		{
			//alert("run");
			s5=document.getElementById("subject").value
			s6=document.getElementById("date").value
			s7=document.getElementById("lecture").value
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
			
			
			var url= "globalAttendance.jsp?&subject="+s5+"&date="+s6+"&lecture="+s7;
			//alert(url);
			xmlHttp.onreadystatechange = global1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function global1()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  checkAttendance()
		{
			//alert("run");

			s2=document.getElementById("branch").value
			s3=document.getElementById("semester").value
			s4=document.getElementById("lecture").value
			
			s6=document.getElementById("date").value
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
			
			
			var url= "checkAttendance.jsp?branch="+s2+"&semester="+s3+"&lecture="+s4+"&date="+s6;
			//alert(url);
			xmlHttp.onreadystatechange = global2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function global2()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  checkMarks()
		{
			//alert("run");

			s2=document.getElementById("branch").value
			s3=document.getElementById("semester").value
			s4=document.getElementById("test").value
			
			s6=document.getElementById("subject").value
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
			
			
			var url= "checkProMarks.jsp?branch="+s2+"&semester="+s3+"&test="+s4+"&subject="+s6;
			//alert(url);
			xmlHttp.onreadystatechange = global3;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function global3()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
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
			
			
			var url= "globalTotalAttendance.jsp?subject="+s2;
			//alert(url);
			xmlHttp.onreadystatechange = glo2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo2()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		function  allAttend1()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("roll").value
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
			
			
			var url= "globalTotalAttendance1.jsp?subject="+s2+"&roll="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = g1;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function g1()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  getProMarks()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("test").value
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
			
			
			var url= "globalProMarks.jsp?subject="+s2+"&test="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = glo3;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo3()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  getDetail()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("date").value
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
			
			
			var url= "getTopic.jsp?subject="+s2+"&date="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = glo4;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo4()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  updateTopic()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("date").value
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
			
			
			var url= "getTopic1.jsp?subject="+s2+"&date="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = glo5;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo5()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  updatePractical()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("date").value
			var s4=document.getElementById("topic").value
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
			
			
			var url= "getPractical.jsp?subject="+s2+"&date="+s3+"&topic="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = glo6;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo6()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  deletePractical()
		{
			//alert("run");

			var s2=document.getElementById("subject").value
			var s3=document.getElementById("date").value
			var s4=document.getElementById("topic").value
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
			
			
			var url= "getPractical1.jsp?subject="+s2+"&date="+s3+"&topic="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = glo7;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo7()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		
		function  getRoll()
		{
			//alert("run");
			
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
			
			
			var url= "loadroll.jsp?session="+s2+"&branch="+s3+"&semester="+s4;
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
		
		
		
		function  checkRoll()
		{
			//alert("run");
			s1=document.getElementById("roll").value
			s2=document.getElementById("session").value
			s3=document.getElementById("branch").value
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
			
			
			var url= "checkRoll.jsp?roll="+s1+"&session="+s2+"&branch="+s3;
			//alert(url);
			xmlHttp.onreadystatechange = stt2;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		
		function stt2()

		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("Print");
				a.innerHTML=xmlHttp.responseText;
				
				
		
			}
		}
		
		function  singleAttend()
		{
			//alert("run");

			var s1=document.getElementById("subject").value
			var s2=document.getElementById("date").value
			var s3=document.getElementById("lecture").value
			var s4=document.getElementById("roll").value
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
			
			
			var url= "singleAttend.jsp?subject="+s1+"&date="+s2+"&lecture="+s3+"&roll="+s4;
			//alert(url);
			xmlHttp.onreadystatechange = glo5;
	
			
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
		function glo5()
		{
	
	
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				
				b=document.getElementById("globalPrint");
				b.innerHTML=xmlHttp.responseText;
				
		
			}
		}
		