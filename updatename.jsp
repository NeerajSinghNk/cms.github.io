<%@ page import="java.sql.*"%>
	<link rel="stylesheet" href="updatenm.css">
<body>

	<%	
		out.println("<div align='left'>");
		String s1=(String)request.getParameter("roll");
		if(s1!=null)
		{	
			out.println("<div id='ps'>");
			try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where roll_no='"+s1+"'");
							String t;
							while(rs.next())
							{
								t=rs.getString("name");
	 							out.println("<div id='nmm'><input type='text' name='name' value='"+t+"' id='name' ></div>");
					 		}
												
					}catch(Exception e)
					{
						out.println(e);
					}
		
		out.println("<div id='bh'>Branch:<select id='branch' name='branch'>");
			try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where roll_no='"+s1+"'");
							String t;
							while(rs.next())
							{
								t=rs.getString("branch");
								out.println("<option>"+t+"</option>");
								if(t.equals("Cs"))
								{
										out.println("<option>Civil</option>");
										out.println("<option>Mechanical</option>");
										out.println("<option>Electronics</option>");
										out.println("<option>Electrical</option>");
								}
								else if(t.equals("Civil"))
								{
										out.println("<option>Cs</option>");
										out.println("<option>Mechanical</option>");
										out.println("<option>Electronics</option>");
										out.println("<option>Electrical</option>");
								}
								else if(t.equals("Mechanical"))
								{
										out.println("<option>Cs</option>");
										out.println("<option>Civil</option>");
										out.println("<option>Electronics</option>");
										out.println("<option>Electrical</option>");
								}
								else if(t.equals("Electronics"))
								{
										out.println("<option>Cs</option>");
										out.println("<option>Civil</option>");
										out.println("<option>Mechanical</option>");
										out.println("<option>Electrical</option>");
								}
								else 
								{
										out.println("<option>Cs</option>");
										out.println("<option>Civil</option>");
										out.println("<option>Mechanical</option>");
										out.println("<option>Electronics</option>");
								}
							}
												
					}catch(Exception e)
					{
						out.println(e);
					}
			
			
		out.println("</select></div>");
		out.println("<div id='sr'>Semester:<select id='semester' name='semester' >");
			try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where roll_no='"+s1+"'");
							String t;
							while(rs.next())
							{
								t=rs.getString("semester");
								out.println("<option>"+t+"</option>");
								if(t.equals("1"))
								{
										out.println("<option>2</option>");
										out.println("<option>3</option>");
										out.println("<option>4</option>");
										out.println("<option>5</option>");
										out.println("<option>6</option>");
								}
								else if(t.equals("2"))
								{
										out.println("<option>1</option>");
										out.println("<option>3</option>");
										out.println("<option>4</option>");
										out.println("<option>5</option>");
										out.println("<option>6</option>");
								}
								else if(t.equals("3"))
								{
										out.println("<option>1</option>");
										out.println("<option>2</option>");
										out.println("<option>4</option>");
										out.println("<option>5</option>");
										out.println("<option>6</option>");
								}
								else if(t.equals("4"))
								{
										out.println("<option>2</option>");
										out.println("<option>3</option>");
										out.println("<option>1</option>");
										out.println("<option>5</option>");
										out.println("<option>6</option>");
								}
								else if(t.equals("5"))
								{
										out.println("<option>2</option>");
										out.println("<option>3</option>");
										out.println("<option>1</option>");
										out.println("<option>4</option>");
										out.println("<option>6</option>");
								}
								else
								{
										out.println("<option>2</option>");
										out.println("<option>3</option>");
										out.println("<option>1</option>");
										out.println("<option>4</option>");
										out.println("<option>5</option>");
								}
							}
												
					}catch(Exception e)
					{
						out.println(e);
					}
		out.println("</select></div>");
		out.println("<div class='yrr'>Category:</div><div id='cy'>  <select id='cate' name='cate'>");
		try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where roll_no='"+s1+"'");
							String t;
							while(rs.next())
							{
								t=rs.getString("category");
								out.println("<option>"+t+"</option>");
								if(t.equals("SC"))
								{
									out.println("<option >ST</option>");
									out.println("<option >OBC</option>");
									out.println("<option >GENERAL</option>");
								}
								else if(t.equals("ST"))
								{
									out.println("<option >SC</option>");
									out.println("<option >OBC</option>");
									out.println("<option >GENERAL</option>");
								}
								else if(t.equals("OBC"))
								{
									out.println("<option >ST</option>");
									out.println("<option >SC</option>");
									out.println("<option >GENERAL</option>");
								}
								else 
								{
									out.println("<option >ST</option>");
									out.println("<option >OBC</option>");
									out.println("<option >SC</option>");
								}
							}
												
					}catch(Exception e)
					{
						out.println(e);
					}
		out.println("</select></div>");
		out.println("<div id='gr'>Gender:<select id='gen' name='gen'>");
			try{
							Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
							Connection con = DriverManager.getConnection("jdbc:odbc:valid"); 
							Statement st= con.createStatement(); 
							ResultSet rs=st.executeQuery("select * from studentdetail where roll_no='"+s1+"'");
							String t;
							while(rs.next())
							{
								t=rs.getString("gender");
								out.println("<option>"+t+"</option>");
								if(t.equals("male"))
								{
									out.println("<option>female</option>");
								}
								else{
									out.println("<option>male</option>");
								}
							}
												
					}catch(Exception e)
					{
						out.println(e);
					}
		out.println("</select></div>");
		out.println("<button id='button1'>UPDATE</button>");
		out.println("</div></div>");
		out.println("</div>");
		
		}
 %>
 
 </body>