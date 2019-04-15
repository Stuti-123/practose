<%-- 
    Document   : addmcq
    Created on : 4 Apr, 2019, 2:27:58 PM
    Author     : DELL
--%>

<%@page contentType="text/html"   import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <style>
        body
        {
            padding-top:3.5%;
            padding-bottom:3.5%;
            padding-right:3.5%;
            padding-left:3.5%;
            
            background-color:black;
        }
        </style>
    </head>
    <body>
<nav>
        <a href="adminwelcome1.jsp" class="btn btn-primary">Home</a>
            <a href="logout.jsp" class="btn btn-primary ">Logout</a> </nav>        
        
        
            
    <center>
        <form method="get" action="">
<table class="table, table table-bordered table-light">
    <tr>
	<td><input type="text" class="form-control" name="q1" placeholder="Enter Quiz" /></td>
</tr>
    
    <tr>
	<td><input type="number" class="form-control" name="a" placeholder="Enter qid " /></td>
</tr>
<tr>
	<td><input type="text" class="form-control" name="t1" placeholder="Enter Question" /></td>
</tr>

<tr>
    <td> <input type="text" class="form-control" name="c1"  placeholder="Enter option1"/></td>
</tr>
<tr>
	<td><input type="text" class="form-control" name="c2" placeholder="Enter option2" /></td>
</tr>
<tr>
	<td><input type="text" class="form-control" name="c3"  placeholder="Enter option3" /></td>
</tr>
<tr>
	<td><input type="text" class="form-control" name="c4"  placeholder="Enter option4" /></td>
</tr>
<tr>
	<td><input type="text" class="form-control" name="t2" placeholder="Enter answer" /></td>
</tr>
<tr>
    <td><input type="submit" class="btn btn-primary btn-lg btn-block"  name="b1" value="submit" /></td>

</tr>
<% if(request.getParameter("b1")!=null){
       Connection con=null;
		Statement st;
		
		try{
                    
                    Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
			st=con.createStatement();
                        String quiz=request.getParameter("q1");
                        
                        String ide=request.getParameter("a");
                        int n=Integer.parseInt(ide);
		
                        String fn=request.getParameter("t1");
                        			

	                 String des=request.getParameter("c1");
                                               

                         String q =request.getParameter("c2");
                                                 			
	              String a=request.getParameter("c3");
                                    			

                      String phn=request.getParameter("c4");
                                              
                      String m=request.getParameter("t2");
	           String sql="insert into "+quiz+" values("+n+",'"+fn+"','"+des+"','"+q+"','"+a+"','"+phn+"','"+m+"')";
                   int res=st.executeUpdate(sql);
			if(res!=0)
				out.println("Record Inserted");
			else
				out.println("Record Not Inserted");
                    
		}catch(Exception e)
		{     
			out.println(e.toString());
		}
		}
	
%>
      </form></table></center></body></html>
<%
	if(session.getAttribute("username")==null){
            		response.sendRedirect("admin.jsp");		

        }
        %>


                   


    