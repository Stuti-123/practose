<%-- 
    Document   : questionsearch
    Created on : 4 Apr, 2019, 4:56:42 PM
    Author     : DELL
--%>

<%-- 
    Document   : app
    Created on : Jun 30, 2018, 11:39:13 AM
    Author     : nEW u
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
         <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        


</head>
<body>
<br><br>
<form method="post" name="form">
<table border="1">
<%
out.println("<table class='table'>");
out.println("<tr>");
out.println("<td colspan='13' style='background-color:maroon; color:white;'>");
out.println("Quiz</td>");
out.println("</tr>");
out.println("<tr style='background-color:black;color:white'>");
out.println("<th>qid</th><th>Question</th><th>choice1</th><th>choice2</th><th>choice3</th><th>choice4</th><th>Answer</th><th>Edit</th><th>Delete</th");


out.println("</tr>");
Connection con=null;
		Statement st;
		ResultSet rs;
		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
			st=con.createStatement();	
			String n=request.getParameter("name");
			String na="'"+n+"%'";
			rs=st.executeQuery("select * from quiz1 where question like "+na);
			while(rs.next())
			{
%>


<tr><td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>

<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>

<td><a href="edit.jsp?id=<%=rs.getString(1)%>" name="edit" class="btn btn-primary" ><i class="fas fa-user-edit"></i></a></td>
<td><a href="delete.jsp?id=<%=rs.getString(1)%>" name="edit" class="btn btn-primary" ><i class="fas fa-trash"></i></a></td>

</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
</body>
    </head>
   
</html>
<%
	if(session.getAttribute("username")==null){
            		response.sendRedirect("admin.jsp");		

        }
        %>