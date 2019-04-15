<%@page import="java.sql.*"%>
<html>
<center>
<form method="post" action="result.jsp">
<%
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");	
            		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practose","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("Select * from quiz1");
int i=1;
while(rs.next()){
%>
<table border="1" width="500px"  cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<b>Select Correct Answer</b>
<table border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"> Question: <%= rs.getString("question") %></td>

<tr>
<td>

1: <input type="radio" name="radio<%=i%>" value= "A" /></td>
<td><%= rs.getString("choice1") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="radio<%=i%>" value="B" /></td>
<td><%= rs.getString("choice2") %></td></tr>

<tr>
<td>
3: <input type="radio" name="radio<%=i%>" value="C" /></td>
<td><%= rs.getString("choice3") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="radio<%=i%>" value="D" /> </td>
<td> <%= rs.getString("choice4") %> </td></tr>

</table>

<%
i++;
}
%>
<tr><td><center><input type="submit" value="submit"></center></td>
<td><center><button type="button" class="btn btn-success" onclick="window.location = 'login.jsp'">Logout</button></center></td>
</tr>
</table>
</form>
</center>
</html>