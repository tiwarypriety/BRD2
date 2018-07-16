<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <script>
function validateForm()
{
	var name=document.myform.name.value;  
	var password=document.myform.password.value;  
	  
	if (name==null || name=="")
	{  
	  alert("Name can't be blank");  
 	 return false;  
	}
}
</script> 
<body>
<%out.print(request.getSession(false)); %>
<h1>Login : </h1>
<form name="myform" action="UserServlet"  method="post" onsubmit="return validateForm()" >  
Enter Username : <input type = "text" name = "user"><br><br>
Enter Password : <input type = "password" name = "pass"><br><br>
<input type = "submit"   value = "submit"><br><br>
New User??<button type="button" onclick="location.href='http://localhost:8080/Maker/Register.jsp';">Register</button>  </form>
</body>
</html>