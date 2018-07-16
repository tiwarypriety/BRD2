<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "User.html" %>
<%out.print(request.getSession(false)); %>
<h1>Register</h1>
<form action = "" method = "post">
Enter Username : <input type = "text" name = "user1"><br><br>
Enter Password : <input type = "password" name = "pass1"><br><br>
Confirm password : <input type = "password" name = "cPass"><br><br>
<input type = "submit"   value = "submit"></form>
</body>
</html>