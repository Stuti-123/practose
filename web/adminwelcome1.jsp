<%-- 
    Document   : adminwelcome1
    Created on : 3 Apr, 2019, 11:52:08 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inside Admin</title>
       
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    
    </head>
    <body>
        <nav>
                    <a href="adminwelcome1.jsp" class="btn btn-primary">Home</a>
            <a href="logout.jsp" class="btn btn-primary ">Logout</a> </nav>
    <center>
    <div class="container" >
      <div class="jumbotron" style="margin-top: 5%">
        <center><%
	if(session.getAttribute("username")!=null)
	{
		String un=(String)session.getAttribute("username");
		out.println("<h3>Welcome Admin "+un+" !</h3>");
	}
        else{
		response.sendRedirect("admin.jsp");		
        }
%></center>
         <button class="btn btn-primary" style="vertical-align:middle" onclick="window.location ='addmcq.jsp'"><span>Add MCQ <i class="fas fa-list"></i></</span></button>
        
         <br><br>
  <button class="btn btn-primary" style="vertical-align:middle" onclick="window.location = 'test1.jsp'"><span>Search <i class="fas fa-search"></i>/Edit <i class="fas fa-user-edit"></i>/Delete <i class="fas fa-trash"></i></</span></button>
  <br>
  <br>
   <button class="btn btn-primary" style="vertical-align:middle" onclick="window.location ='addpractice.jsp' "><span>Add Practice Question<i class="fas fa-user-plus"></i></</span></button>
  
  <br>
  
      </div></div>
  </center>
    </body>
</html>