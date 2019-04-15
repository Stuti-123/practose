
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form >
            <input type="text" name="id" value="quizID" placeholder="Enter quiz">
            <input type="submit" name="b2" value="submit">
        </form>
        
<%
    if(request.getParameter("b2")!=null){

        String id=request.getParameter("quizID");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose", "root", "");
String query = "delete from quiz1 where id='"+no+"'";
Statement st = conn.createStatement();
int  res = st.executeUpdate(query);
if(res!=0){
    out.println("Record Deleted");
}
else{
    out.println("Record Not Deleted");
}
}
catch(Exception e){}
    
%>} </body>
</html>