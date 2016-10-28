<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
</head>
<body>
<h1>Your Details</h1>
 
	
<form action="processform.jsp" method="post">
	
	Firstname:<input type="text" name="firstname"><br>
	Password:<input type="password" name="password"><br>
	Vegetarian:<input type="checkbox" name="vegetarian"><br>
	
	Favourite Colour:
	<select name ="favouriteColour"> 
	<option value="red">Red</option>
	<option value="green">Green</option>
	<option value="blue">Blue</option>
	
	</select>
	<br>
	<input type="submit" name="submit" value="submit">
	
</form>


</body>
</html>