<%-- 
    Document   : login1
    Created on : 5 Apr, 2019, 2:07:50 PM
    Author     : DELL
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
<title>Sign in</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body background="C:\Users\DELL\Desktop\2.jpg" style="background-repeat: no-repeat;background-size: cover;"id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->


<br><br>
<nav>
  
   <a href="index.jsp" class="btn btn-link">Home</a>
   <a href="registration.jsp" class="btn btn-link">Register</a>
</nav>



<center>
	<div style="background-color:white; border-radius:100px; color:black; width:300px; align:center; height:300px; font-size:110%">
	<strong><form><br><br><br><br>
	
	Username: <input name="username" type="username" placeholder="Jhon" required>
	<br><br><br>
	
	Password: <input name="password" type="password" pattern=".{5,10}" required title="5 to 10 characters">

	<br><br><br>

	<input class="btn btn-default"  name="b2" type="submit" value="Sign In">

</form></div></center>
<%
	if(request.getParameter("b2")!=null)
	{
	Connection con=null;
        	Statement st;
        	ResultSet rs;
                try{
            		Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
            		st=con.createStatement();
                     
                  String m=request.getParameter("username");
                     String p =request.getParameter("password");
                  
                   

                     String sql="select * from user1 where name='"+m+"' and password='"+p+"';";
                                      rs=st.executeQuery(sql);
			if(rs.next())
                        {
                              
                            session.setAttribute("usern",m);
				response.sendRedirect("index1.jsp");
                       
                        }else %>
<center><%out.println("<div style='color:red'>Invalid User or Password</div>"); %></center>      
			
			
		<%
                }
                catch(Exception e)
        	{
            		out.println(e.toString());
        	}
	}
        %>	



</body>
</html>
