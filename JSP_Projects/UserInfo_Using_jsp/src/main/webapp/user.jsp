<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.jay.model.UserModel" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
</head>
<body>

<form action ="UserServlet" method = "post">

<table>

<tr>
<td>FirstName:</td> <td> <input type = "text" name = "fname"/> </td>
</tr>

<tr>
<td>LastName:</td> <td> <input type = "text" name = "lname"/> </td>
</tr>

<tr>
<td>PhoneNumber:</td> <td> <input type = "text" name = "phone"/> </td>
</tr>

<tr>
<td>Email:</td> <td> <input type = "text" name = "email"/> </td>
</tr>

<tr>
<td>Button:</td> <td> <input type = "submit" value = "ADD"/> </td>
</tr>
</table>

</form>

<hr>

<h2>Users List</h2>

<table border="1">
    <tr>
        <th>FirstName</th>
        <th>LastName</th>
        <th>PhoneNumber</th>
        <th>Email</th>
    </tr>
    
    <%
List<UserModel> users = (List<UserModel>) request.getAttribute("userList");
if (users != null) {
    for (UserModel u : users) {
%>
<tr>
    <td><%= u.getFname() %></td>
    <td><%= u.getLname() %></td>
    <td><%= u.getPhone() %></td>
    <td><%= u.getEmail() %></td>
</tr>
<%
    }
}
%>
</table>
    

</body>
</html>