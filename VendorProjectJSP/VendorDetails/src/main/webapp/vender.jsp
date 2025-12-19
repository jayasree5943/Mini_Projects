<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> VENDER DETAILS</h2>
<form action ="VendorServlet" method = "post">
<table>  

<tr>
<td>Vender Name:</td> <td> <input type = "text" name = "vendername"/> </td>
</tr>

<tr>
<td>GST Number:</td> <td> <input type = "text" name = "gstnumber"/> </td>
</tr>

<tr>
<td>Email:</td> <td> <input type = "text" name = "email"/> </td>
</tr>

<tr>
<td>MobileNumber:</td> <td> <input type = "text" name = "mobilenumber"/> </td>
</tr>

<tr>
<td> <input type = "submit" value = "ADD"/> </td>
</tr>
</table>

</form>
<%
String msg = (String) request.getAttribute("successMessage");
if (msg != null) {
%>
    <h3 style="color: green;">✔ <%= msg %></h3>
<%
}
%>

</body>
</html>