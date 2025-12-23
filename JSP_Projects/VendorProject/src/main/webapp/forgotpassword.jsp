<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>

<body>

<h2>Forgot Password</h2>

<form action="ForgotPasswordServlet" method="post">
    <input type="text" name="username" placeholder="Username" required>
    <br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
