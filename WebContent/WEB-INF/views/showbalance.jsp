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
<h2 align="center"><font><strong> BALANCE </strong></font></h2><body background ="please.jpg">
<table align="center" cellpadding="6" cellspacing="6" border="1" style="width: 403px; height: 175px; ">
<tr>

</tr>
<tr bgcolor="#ffaa00">
<td><b>Account number</b></td>
<td><b>Balance</b></td>

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

<td><%=resultSet.getString("balance") %></td>
</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br> <br>
<center>
<a href="http://localhost:8081/registration/front">HOME PAGE</a>
</center>