<%-- 
    Document   : admin
    Created on : 3 Apr, 2019, 11:35:59 PM
    Author     : DELL
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    

	<style type="text/css">
	body
	{
		background: #2F4F4F;
	}
	* {
 margin: 0;
 padding: 0;
 box-sizing: border-box;
}

 

.container {
 width: 390px;
 height: 549px;
 background: #000;
 margin-left: auto;
 margin-right: auto;
 margin-top: 11px;
 -webkit-box-shadow: 0px 0px 114px 2px rgba(0, 0, 0, 0.75);
 -moz-box-shadow: 0px 0px 114px 2px rgba(0, 0, 0, 0.75);
 box-shadow: 0px 0px 114px 2px rgba(0, 0, 0, 0.75);

 svg {
  position: absolute;
 }
}

.rect1 {
 z-index: 1;
 stroke-dasharray: 197 509;
 stroke-dashoffset: -729;
 transition: stroke-width 1s, stroke-dashoffset 1s, stroke-dasharray 1s;
 transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
}

.rect2 {
 z-index: 1;
 stroke-dasharray: 197 509;
 stroke-dashoffset: -1058;
 transition: stroke-width 1s, stroke-dashoffset 1s, stroke-dasharray 1s;
 transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
}



.text {
 position: absolute;
 margin-top: 254px;
 border: none;
 background: #000;
 margin-left: 101px;
 color: gray;
 width: 196px;
 height: 44px;
 padding-left: 3px;
 z-index: 100;
 font-family: 'Roboto', sans-serif;
 padding-top: 21px;
 transition: all 600ms cubic-bezier(0.895, 0.03, 0.685, 0.22);
 &:focus {
  outline-width: 0;
  font-size: 16px;
 }
}

.pass {
 position: absolute;
 margin-top: 305px;
 border: none;
 background: #000;
 margin-left: 101px;
 color: gray;
 width: 196px;
 height: 44px;
 padding-left: 3px;
 z-index: 100;
 font-family: 'Roboto', sans-serif;
 padding-top: 21px;
 transition: all 600ms cubic-bezier(0.895, 0.03, 0.685, 0.22);
 &:focus {
  outline-width: 0;
  font-size: 16px;
 }
}


button {
 position: absolute;
 z-index: 100;
 width: 149px;
 height: 43px;
 border: 1px solid #fff;
 background: #000;
 font-family: 'Roboto', sans-serif;
 color: #fff;
 font-size: 16px;
 border-radius: 22px;
 margin-top: 421px;
 margin-left: 120.5px;
 transition: 0.5s;
 cursor: pointer;

 &:hover {
  color: #000;
  background: #fff;
 }

 &:focus {
  outline-width: 0;
 }
}

.header {

 position: absolute;
 text-align: center;
 font-family: 'Roboto', sans-serif;
 color: #fff;
 font-size: 48px;
 margin-left: 128px;
 margin-top: 81px;
}

.info {

 position: absolute;
 text-align: center;
 font-family: 'Roboto', sans-serif;
 color: #BDFFBD;
 font-size: 14px;
 margin-left: 125px;
 margin-top: 181px;
}

 
</style>

</head>
<body>
    <form method="get" action="">
	<div class="al"></div>
<div class="container">
 <div class="header">Welcome</div>
 <div class='info'>Practose Login</div>
 <input id='username' class='text' onfocus="handle2()" class='form-control' type="text" name="t1" placeholder='Username' value="">
<!-- Had to remove the type "password" due to the browser user credential's autofill-->
 <input id='password' class='pass' onfocus="handle1()" class='form-control' type="password" name="t2" placeholder='Password' value="">

 <button name="b1" type="submit" value="Submit">Login</button>
<!-- <button name="b1">Sign In </button>  -->
 <svg width="390" height="549" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <rect id='rect' class='rect1'   x="45px"  y="300px"   rx="27" ry="27" width="300px" height="50px" style="stroke: #fff; stroke-width: 1px; fill: #000" />
</svg>
</div>

<%
           
            	       if(session.getAttribute("username")!=null){
                       response.sendRedirect("adminwelcome1.jsp");
                       
                       }
                       else{
                           
                       

	if(request.getParameter("b1")!=null)
        {
	Connection con=null;
        	Statement st;
        	ResultSet rs;
	String un=request.getParameter("t1");
	String pw=request.getParameter("t2");
        	try{
            		Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
            		st=con.createStatement();
		String sql="select * from admin where username='"+un+"' and password='"+pw+"'";
		rs=st.executeQuery(sql);
		if(rs.next())
		{
			session.setAttribute("username",un);
			response.sendRedirect("adminwelcome1.jsp");
		}
		else
			out.println("<div style='color:red'>Invalid User Name or pasword</div>");
               	}
                catch(Exception e)
        	{
            		out.println(e.toString());
        	}
	}}
        %>	

    </form>
</body>
</html>

