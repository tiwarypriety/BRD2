<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session = "false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function validateForm()
{
	var c1=document.myform.code.value;
	    if(c1=="")
		{
			document.getElementByName("code").innerHTML = "Customer Code Mandatory ";
			return false;
		}
		else if(c.length>10)
		{
			 document.getElementByName("code").innerHTML = "Customer Code length should be less than or equal to 10";
			return false;
		}
	 
   var c2=document.myform.name.value;
   var regex=/^([a-zA-Z0-9]+)$/;
	   	if(c2=="")
		{
	   		document.getElementByName("name").innerHTML = "Customer Name Mandatory ";
			return false;
		}
		 else if(c2.length>30)
		{
		    document.getElementByName("name").innerHTML = "Customer Code length should be less than or equal to 30";
			return false;
		}
		else if(!regex.test(c2))
		  {
		    	document.getElementByName("name").innerHTML = "Name should contain only alphanumeric characters";
				return false;
	      }
	   	
 	var c3=document.myform.address1.value;
	   	if(c3=="")
		{
	   		document.getElementByName("address1").innerHTML ="Address1 Mandatory ";
			return false;
		}
	   	
	 var c4=document.myform.pin.value;
	 var regex2=/^([0-9]+)$/;
	   	if(c4=="")
		{
	   		document.getElementByName("pin").innerHTML ="Pin Code Mandatory ";
			return false;
		}
		else if(c4.length!=6)
		{
		    document.getElementByName("pin").innerHTML = "length should be 6";
		   return false;
		}
		else if(!regex2.test(c4))
	 	{
		   document.getElementByName("pin").innerHTML = "should contain only numbers";
			return false;
		}
	   	
   	var c5=document.myform.email.value;
	var regex3=/^([a-zA-Z0-9._]+[@]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+[.]?[a-zA-Z]+)$/;
		if(c5=="")
		{
			document.getElementByName("email").innerHTML ="Email Mandatory ";
			return false;
		}
		else if(!regex3.test(c5))
		 {
		    document.getElementByName("email").innerHTML = "email format is not valid";
			return false;
		}
	var c6=document.myform.number.value;
		if(c6=="")
		{
			document.getElementByName("number").innerHTML ="Contact number Mandatory ";
			return false;
			
	    else if(c6.length!=10)
		{
			document.getElementByName("number").innerHTML = "number length should be equal to 10";
			return false;
		}
		}		
		var c7=document.myform.contactPerson.value;
		if(c7=="")
		{
			document.getElementByName("contactPerson").innerHTML ="Primary Contact Person Mandatory ";
			return false;
		}	
		var c8=document.myform.createdBy.value;
		if(c8=="")
		{
			document.getElementByName("createdBy").innerHTML ="Created By Mandatory ";
			return false;
		}
}
  
</script>
<body>
<%@ include file = "User.html" %>
<%out.print(request.getSession(false)); %>
<form name="myform" action="CustomerServlet"  method="post" onsubmit="return validateForm()" >  
<h1>Add New Customer</h1>
<table>
<tr>
<td>Customer Code:</td>
<td><input type="text" name="code"></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Customer Address 1:</td>
<td><textarea rows="2" cols="10" name="address1"></textarea></td>
</tr>
<tr>
<td>Customer Address 2:</td>
<td><input type="text" name="address2"></td>
</tr>
<tr>
<td>Customer Pin Code:</td>
<td><input type="text" name="pin"></td>
</tr>
<tr>
<td>E-mail address:	</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Contact Number:	</td>
<td><input type="text" name="number"></td>
</tr>
<tr>
<td>Primary Contact Person:</td>
<td><input type="text" name="contactPerson"></td>
</tr>
<tr>
<td>Record Status:</td>
<td><input type="Radio" name="recordStatus">N<input type="Radio" name="recordStatus">M<input type="Radio" name="recordStatus">D<input type="Radio" name="recordStatus">A<input type="Radio" name="recordStatus">R</td>
</tr>
<tr>
<td>Flag:</td>
<td><input type="Radio" name="flag">A<input type="Radio" name="flag">I</td>
 
</tr>
<tr>
<td>Created Date:</td>
<td><input type="text" name="createdDate"></td>
</tr>
<tr>
<td>Created By:</td>
<td><input type="text" name="createdBy"></td>
</tr>
<tr>
<td>Modified Date:</td>
<td><input type="text" name="modifiedDate"></td>
</tr>
<tr>
<td>Modified By:</td>
<td><input type="text" name="modifiedBy"></td>
</tr>
<tr>
<td>Authorized Date:</td>
<td><input type="text" name="authorizedDate"></td>
</tr>
<tr>
<td>Authorized By:</td>
<td><input type="text" name="authorizedBy"></td>
</tr>
</table>
<input type="submit" value="Submit"><br>
</form>
</body>
</html>