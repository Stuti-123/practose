<%-- 
    Document   : registration
    Created on : 5 Apr, 2019, 12:43:58 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
     <script> 
function validation()                                    
{ 
    var name = document.forms["RegForm"]["first_name"];               
    var email = document.forms["RegForm"]["email"];    
    var phone = document.forms["RegForm"]["password"];
    if (name.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
       
    if (email.value == "")                                   
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf("@", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
   
    if (email.value.indexOf(".", 0) < 0)                 
    { 
        window.alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 
    if (password.value == "")                        
    { 
        window.alert("Please enter your password"); 
        password.focus(); 
        return false; 
    } 
    return true; 
}</script> 
  
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <title>REGISTRATION</title>
    <link rel="icon" type="image/png" href="images/icons/doctor.png"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/mainsignup.css" rel="stylesheet" media="all">
    <style media="screen">
    .dropdown {
display: inline-block;
position: relative;
overflow: hidden;
height: 40px;
width: 200px;
background: #e5e5e5;
border: 1px solid;
border-color: white #e5e5e5 whitesmoke;
border-radius: 3px;
/* background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08); */
}

.dropdown-select {
position: relative;
width: 130%;
margin: 0;
padding: 6px 8px 6px 10px;
height: 28px;
line-height: 14px;
font-size: 12px;
color: #6;
text-shadow: 0 1px white;
background: #e5e5e5; /* Fallback for IE 8 */
background: rgba(0, 0, 0, 0) !important; /* "transparent" doesn't work with Opera */
border: 0;
border-radius: 0;
-webkit-appearance: none;
}


.dropdown-select > option {
margin: 3px;
padding: 6px 8px;
text-shadow: none;
background: #f2f2f2;
border-radius: 3px;
cursor: pointer;
}
    </style>
</head>

<body>
    
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">

      <h3 class="l1-txt1 txt-center p-b-10" style = "font-family: Ubuntu-Bold;">
             
            </h3>
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Registration Form</h2>
                </div>
                <div class="card-body">
                    <form name="RegForm" action="login.jsp" onsubmit="return validation()" method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="first_name">
                                            
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password">
                                </div>
                            </div>
                        </div>

                        
                        
                        <div class="form-row m-b-55">

                        </div>
                        
                       
                        <div>
                            <input type="submit" class="form-control" name="b1" value="Submit" /><br>
                            <a href="login.jsp">Already have an account?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   

   <% if(request.getParameter("b1")!=null)
	{
	Connection con=null;
        	Statement st;
        	ResultSet rs;
                try{
            		Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
            		st=con.createStatement();
                       
		  String fn=request.getParameter("first_name");
                  String m=request.getParameter("email");
                  String p =request.getParameter("password");
                  String sql="insert into user1 values('"+fn+"','"+m+"','"+p+"');";
                        
                                     int res=st.executeUpdate(sql);
			if(res!=0)
				response.sendRedirect("login.jsp");
			else
				out.println("Record Not Inserted");       
			
			
		
                }
                catch(Exception e)
        	{
            		out.println(e.toString());
        	}
	}
        %>	
            

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->