<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIRSTRUST BANK-Close Account</title>
</head>
<body><body background ="please.jpg">
 <div align="center">
  <h1>Account closing Form</h1>
  <form action="<%= request.getContextPath() %>/closeaccount" method="post">
   <table style="with: 80%">
    <tr>
     <td><b><h2>Account Number</h2></b></td>
     <td><input type="text" name="accountnumber" style="width: 199px; "/></td>
    </tr>
   
   
    <tr>
     <td><b><h2>UserName</h2></b></td>
     <td><input type="text" name="username" style="width: 197px; "/></td>
    </tr>
    
    <tr>
     <td><b><h2>Password</h2></b></td>
     <td><input type="password" name="password" style="width: 195px; "/></td>
    </tr>
      
    
   </table>
   <input type="submit" value="Submit" />
  
  </form>
  <a href="http://localhost:8081/registration/front">HOME PAGE</a>
 </div>
</body>
</html>