<%-- 
    Document   : test1
    Created on : 4 Apr, 2019, 7:51:22 PM
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
        <title>Search Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <head>
<script>
function ajaxres(str)
{
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		 xmlhttp=new XMLHttpRequest();
	 }
	else
	{
		// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    	{
				document.getElementById("dynText").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","questionsearch.jsp?name="+str,true);
	xmlhttp.send();
}

</script>
</head>

<body>
<nav>
          <a href="adminwelcome1.jsp" class="btn btn-primary">Home</a>
            <a href="logout.jsp" class="btn btn-primary ">Logout</a> </nav>
<form name="f1" method="get" action="">
<table width="100%" border="2" style="font-family:arial;font-size:14px">
<tr  style="background-color:black; color:white">
	<td colspan="2">Search</td>
</tr>
<tr>
	<td>Enter Question</td>
	<td><input type="text" name="t1" onkeyup="ajaxres(t1.value)" /> </td>
</tr>
    
</table>
</form>
</body>
</html>

        	<div id="dynText"></div></td>
<%if(session.getAttribute("username")==null){
            		response.sendRedirect("admin.jsp");		

        }%>