<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="styles.css" type="text/css">

</head>

<body onload ="updateYear();">

<div id="header">

  <div id="nav" class="nav">
    <div id="home" class="navitem"><a href="home.jsp">Home</a></div>
    <div id="products" class="navitem"><a href="products.jsp">Products</a></div>
    <div id="about" class="navitem"><a href="about.jsp">About</a></div>
    <div id="contact" class="navitem"><a href="contact.jsp">Contact</a></div>

  </div>
</div>
<div id="left">
  <ul class="leftnav">
    <li><a href="home.jsp">Home</a></li>
    <li><a href="products.jsp">Products</a></li>
    <li><a href="about.jsp">About</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    
    </<ul>

</div>
<div id="main">
<%
	String firstName = request.getParameter("firstname");
	boolean vegetarian = request.getParameter("vegetarian") != null;
	
	
	out.println("Welcome " + firstName);
	
	if (vegetarian){
		out.println("vegetarian");
	}
	
	String favouriteColour = request.getParameter("favouriteColour");
	
	out.println("favourite Colour:" + favouriteColour);
	
	
%>

<div id="colourDiv" class="<%=favouriteColour%>">DIV</div>
</div>
<div id="footer">&copy;<span id="year">2015</span> Revenue Commissioners</div>



<script src="js/functions.js">

</script>


</body>
</html>