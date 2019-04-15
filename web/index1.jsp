<%-- 
    Document   : index1
    Created on : 5 Apr, 2019, 7:12:52 AM
    Author     : DELL
--%>

<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


    <%
               
                Connection con=null;
		Statement st;
		ResultSet rs;
		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
			st=con.createStatement();
			rs=st.executeQuery("select * from practice");
                        int i=1;
			while(rs.next())
			{
                            String question=rs.getString(2);
                            %>
                            <form action="http://localhost:8080/Practose/Compile" method="post">
                            
                             <%=i%>. <%=question%><br/>
                             <textarea rows="30" cols="150" name="tacode"></textarea>
<br>
<input type="submit" name="b1" value="compile">
<input type="submit" name="b1" value="run">
<button type="button" class="btn btn-success" onclick="window.location = 'login1.jsp'">Logout</button>
</form>
     <%
                              i++;
                              
                            }
                           
                        
                }
                catch(Exception e){
                    					System.out.println(e.toString());

                }
                        %>
                 

</body>
</html>

