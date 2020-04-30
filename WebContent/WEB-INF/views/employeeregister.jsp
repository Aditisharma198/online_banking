<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIRSTRUST BANK-LOGIN</title>
</head>
<body><body background ="please.jpg">
 <div align="center">
  <h1> UserRegister Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr style="width: 450px; ">
     <td><b>Account Number</b></td>
     <td><input type="text" name="accountnumber" style="width: 269px; "/></td>
    </tr>
    <tr>
     <td><b>First Name</b></td>
     <td><input type="text" name="firstName" style="width: 271px; "/></td>
    </tr>
    <tr>
     <td><b>Last Name</b></td>
     <td><input type="text" name="lastName" style="width: 269px; "/></td>
    </tr>
    <tr>
     <td><b>UserName</b></td>
     <td><input type="text" name="username" style="width: 272px; "/></td>
    </tr>
    <tr>
     <td style="width: 145px; "><b>Password</b></td>
     <td><input type="password" name="password" style="width: 270px; "/></td>
    </tr>
    <tr>
     <td><b>Address</b></td>
     <td><input type="text" name="address" style="width: 272px; "/></td>
    </tr>
    <tr>
     <td><b>Contact No</b></td>
     <td><input type="text" name="contact" style="width: 274px; "/></td>
    </tr>
   </table><br>
   <input type="submit" value="Submit" />
   
  </form>
  <a href="http://localhost:8081/registration/front">HOME PAGE</a>
 </div>
 
</body>
</html>