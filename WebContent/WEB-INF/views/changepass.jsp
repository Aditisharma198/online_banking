<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FIRSTRUST BANK- Change 
password</title>
</head>
<body><body background ="please.jpg">
<form action="<%= request.getContextPath() %>/changepwd" method="post">
 <div align="center">
 <h2>Change Password</h2>
   <table style="with: 80%">
    <tr>
     <td><b>Current Password</b></td>
     <td><input type="password" name="username" style="width: 253px; "/></td>
    </tr>
    <tr>
     <td style="width: 150px; "><b>New Password</b></td>
     <td><input type="password" name="password" style="width: 254px; "/></td>
    </tr>
   </table>
   <button style="width: 155px; height: 50px; ">Change
   <input type="submit" value="Submit" style="width: 74px; height: 28px; "/>
  </button>
  </div>
  </form>

</body>
</html>