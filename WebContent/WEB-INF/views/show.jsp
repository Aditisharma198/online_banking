<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3333/";
String dbName = "bank";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>MY ACCCOUNT</strong></font></h2><body background ="please.jpg">
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width: 910px; height: 250px; ">
<tr></tr>
<tr bgcolor="#aa80ff">
<td><b>Account Number</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Username</b></td>
<td><b>Password</b></td>
<td><b>Address</b></td>
<td><b>Contact</b></td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM banking";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("accnum") %></td>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact") %></td></tr><%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<center>
<a href="http://localhost:8081/registration/front">HOME PAGE</a> <br>
<a href="http://localhost:8081/registration/changepwd">CHANGE PASSWORD</a><br>
<a href="http://localhost:8081/registration/deposit">DEPOSIT</a><br>
<a href="http://localhost:8081/registration/withdraw">WITHDRAWL</a>
</center>