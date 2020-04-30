<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIRSTRUST BANK</title>
</head>
<body>
<body background ="please.jpg">
 <div align="center">
  <h1>Login Here</h1>
  <form action="<%= request.getContextPath() %>/login" method="post">
   <table style="with: 80%; width: 400px">
    <tr> 
     <td><b><h2>UserName</h2></b></td>
     <td><input type="text" name="username" style="width: 256px; "></td>
    </tr>
    <tr>
     <td style="width: 161px; "><b><h2>Password</h2></b></td>
     <td><input type="password" name="password" style="width: 254px; "></td>
    </tr>   
   </table>
        <input type="submit" value="Submit">
        <a href="http://localhost:8081/registration/front"> HOME PAGE</a>
 </div>
</body>
</html>