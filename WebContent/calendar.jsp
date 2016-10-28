<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
    String userName = (String)session.getAttribute("userName");
    if (userName == null){
    	response.sendRedirect("login.jsp");
    }
    %>
    
    <% 
    String[] months = new String[12];
    
    months[0] = "January";
    months[1] = "February";
    months[2] = "March";
    months[3] = "April";
    months[4] = "May";
    months[5] = "June";
    months[6] = "July";
    months[7] = "August";
    months[8] = "September";
    months[9] = "October";
    months[10] = "November";
    months[11] = "December";

    
    for (int i=0; i<3; i++){
    	out.println(months[i]);
    }
    out.println("<br>");
    String[] mnths = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec"};
    
    for (int i=0; i<mnths.length; i++) {
    	out.println(mnths[i]);
    }
    %>
    
<html>
<head>
  <link rel="stylesheet" href="css/home.css" type="text/css">
</head>

<body onload ="updateYear();startTimer();">

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
    <li><a href="about.jsp">About Us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
     <li><a href="logout.jsp">Logout</a></li>
    </<ul>

</div>

<div id="main"><h1>About</h1>
	<table class = "calendarTable">
		<% for (int i=0; i<12; i++) { %>
		
			<tr>
				<td><%=months[i]%></td>
				<td onmouseenter="changeImage(<%=i+1%>)">
				<a href="selectMonth.jsp?month=<%=i+1%>">
					<img src="images/<%=i+1%>.jpg">
				</a>
				</td>
				<% if (i==0) { %>
					<td rowspan="12" onmouseenter="animationRunning = false;" onmouseleave="animationRunning = true;">
					<a href="selectMonth.jsp?month=1" id="bigImageLink">
						<img id="bigImage" src="images/1.jpg">
					</a>
					</td>
			
				<% } %>
		</tr>	
		<% } %>
	</table>
</div>
	<div id="footer">&copy;<span id="year">2015</span> Revenue Commissioners</div>
	
</body>
<script src="js/functions.js">
</script>
</html>
