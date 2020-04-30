<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIRSTRUST BANK-Deposit</title>
</head>
<body><body background ="please.jpg">
<script>
 function myFunction(){
 alert("Amount entered has been successfully deposited in the account. Check Your Balance!!");
 }
</script>
 <div align="center">
  <h1>Deposit Form</h1>
  <form action="<%= request.getContextPath() %>/deposit" method="post">
   <table style="with: 80%">
    <tr>
     <td><b><h2>Account Number</h2></b></td>
     <td><input type="text" name="accountnumber" style="width: 259px; "/></td>
    </tr>
   
   
    <tr>
     <td><b><h2>UserName</h2></b></td>
     <td><input type="text" name="username" style="width: 256px; "/></td>
    </tr>
    
    <tr>
     <td><b><h2>Password</h2></b></td>
     <td><input type="password" name="password" style="width: 256px; "/></td>
    </tr>
    
     <tr>
     <td><b><h2>Amount</h2></b></td>
     <td><input type="amount" name="amount" style="width: 256px; "/></td>
    </tr>
    
    
    
   </table>
   <input type="submit" value="Submit"  onclick="myFunctiom()"/>
   
  </form>
  <a href="http://localhost:8081/registration/front">HOME PAGE</a>
 </div>
</body>
</html>