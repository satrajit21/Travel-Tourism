<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <%
	String username = session.getAttribute("username").toString();
	if(username==null){
		response.sendRedirect("Login.jsp");
	}
	%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<div class="navbar">
			<h1>Travel</h1>
		<div class="menu">
			<ul>
				<li><a href="http://localhost:9999/TravelAndTourismNewNew/Homepage.jsp">Home</a></li>
				<li><a href="http://localhost:9999/TravelAndTourismNewNew/about1.jsp">About Us</a></li>
				<li><a href="http://localhost:9999/TravelAndTourismNewNew/contactus.jsp">Contact US</a></li>
				<li><a href="http://localhost:9999/TravelAndTourismNewNew/feedback.jsp">Feedback</a></li>
				<li><a href="http://localhost:9999/TravelAndTourismNewNew/totalPayment.jsp">Bookings</a></li>
			</ul>
		</div>
		<div class="icons">
        	<i class="fas fa-user" id="login-btn"><%=username %></i>
    	</div>	
	</div>
<!-- logout form container  -->

<div class="login-form-container">

    <i class="fas fa-times" id="form-close"></i>

    <form action="Logout" method="post">
        <h3>Logout?</h3>
        <p>Click here to logout</p>
        <input type="submit" value="LogOut" class="btn">
    </form>

</div>

<!-- logout form container ends  -->
<div class="body">
<div class="tours">
			<div class="places">
				<h3>Madhya Pradesh</h3>
				<img src="MP.jpg" style="width: 300px; height: 250px; border-radius: 0px;">
				<br>
				<br>
				<a href="http://localhost:9999/TravelAndTourismNewNew/book.jsp">Book Now 15% OFF</a>
			</div>
			
			<div class="places">
				<h2>Shillong</h2>
				<img src="shillong.jpg" style="width: 300px; height: 250px; border-radius: 0px;">
				<br>
				<br>
				<a href="http://localhost:9999/TravelAndTourismNewNew/book.jsp">Book Now 20% OFF</a>
			</div>
			
			<div class="places">
				<h2>Uttarakhand</h2>
				<img src="UK.jpg" style="width: 300px; height: 250px; border-radius: 0px;">
				<br>
				<br>
				<a href="http://localhost:9999/TravelAndTourismNewNew/book.jsp">Book Now 25% OFF</a>
			</div>
			<div class="places">
			
				<h2>Shimla</h2>
				<img src="Shimla.jpg" style="width: 300px; height: 250px; border-radius: 0px;">
				<br>
				<br>
				<a href="http://localhost:9999/TravelAndTourismNewNew/book.jsp">Book Now 25% OFF</a>
			</div>
		</div>	
</div>	
<!-- custom js file link  -->
<script src="js/scriptlogout.js"></script>
</body>
</html>