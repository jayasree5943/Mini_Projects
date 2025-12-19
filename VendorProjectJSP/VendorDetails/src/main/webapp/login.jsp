<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> LOGIN </h2>
<form action = "LoginServlet" method = "post">
<table>

<tr>
<td>UserName:</td> <td> <input type = "text" name = "username"></td>
</tr>

<tr>
<td>Password:</td> <td> <input type = "password" name = "password"></td>
</tr>


<tr>
<td> <input type ="submit" value = "Login"></td>
</tr>
</table>
</form>

<br>

<a href="forgotpassword.jsp">Forgot Password?</a><br><br>
<a href="Registration.jsp">New User? Register</a>


</body>
</html>