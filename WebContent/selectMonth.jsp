<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
    String userName = (String)session.getAttribute("userName");
    if (userName == null){
    	response.sendRedirect("login.jsp");
    }
    %>
<html>
<head>
  <link rel="stylesheet" href="css/home.css" type="text/css">

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

<% String month = request.getParameter("month"); %>
	<img src="images/<%=month%>.jpg"/>

</div>
<div id="footer">&copy;<span id="year">2015</span> Revenue Commissioners</div>


</body>

<script src="js/functions.js">
</script>
</html>
