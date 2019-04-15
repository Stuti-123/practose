<%-- 
    Document   : tech
    Created on : 4 Apr, 2019, 8:26:34 PM
    Author     : Smriti Pandey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>select your quiz!</title>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
        
        <style>
            #settable{
                margin-top: 40px;
            }
            </style>
        
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="index.jsp">
					<img src="assets\images\practose5.png"  width="5" height="73" alt="Techro HTML5 template"></a>
			</div>
			
		</div>
	</div>
	<!-- /.navbar -->

		<header id="head" class="secondary">
            <div class="container">
                    <h1>Technical Quiz</h1>
                    <p>Kindly select the language to continue your technical Quiz!!!</p>
                </div>
    </header>
        <div id='settable'>
            
         
        <center>

        <table>
           
            <tr>
                <th><img src="assets/images/db.jpg"  alt="" width="300px" height="300px"></th>
            <th><img src="assets/images/cc.jpg" alt="" width="300px" height="300px"></th>
            <th><img src="assets/images/java.png" alt="" width="300px" height="300px"></th>
            <th><img src="assets/images/python.png" alt="" width="300px" height="300px"></th>
            </tr>
            <tr>
                <td><button type="button" class="btn btn-success" onclick="window.location = 'quiz1.jsp'">DS/OS/HTML/DB</button></td>
                <td><button type="button" class="btn btn-success" onclick="window.location = 'quiz2.jsp'">C/C++</button></td>
                <td><button type="button" class="btn btn-success"onclick="window.location = 'quiz3.jsp'">Java</button></td>
                <td><button type="button" class="btn btn-success"onclick="window.location = 'quiz4.jsp'">Python</button></td>
            </tr>
        </table>
                </center>
</div>
        

</body>
</html>