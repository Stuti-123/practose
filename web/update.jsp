<%-- 
    Document   : update
    Created on : 5 Apr, 2019, 4:11:51 PM
    Author     : DELL
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<%
	if(session.getAttribute("username")==null){
            		response.sendRedirect("admin.jsp");		

        }
        else{      
    String ide=request.getParameter("quizID");
int num=Integer.parseInt(ide);
String name=request.getParameter("question");
String desg=request.getParameter("choice1");
String qual=request.getParameter("choice2");
String in=request.getParameter("choice3");
String ph=request.getParameter("choice4");
String email=request.getParameter("answer");

try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root", "");
Statement st;
st=conn.createStatement();
st.executeUpdate("update quiz1 set question='"+name+"',choice1='"+desg+"',choice2='"+qual+"',choice3='"+in+"',choice4='"+ph+"',answer='"+email+"' where id="+num+"");
response.sendRedirect("test1.jsp");
}
catch(Exception e){
out.println(e);
}}
%>
