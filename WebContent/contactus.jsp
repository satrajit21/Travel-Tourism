<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
   
   <%
		String username = session.getAttribute("username").toString();
		if(username==null){
			response.sendRedirect("Login.jsp");
		}
		//session.setAttribute("user",username);
    %>
   
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="stylecontact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<div class="login-form-container">

    <i class="fas fa-times" id="form-close"></i>

    <form action="Logout" method="post">
        <h3>Logout?</h3>
        <p>Click here to logout</p>
        <input type="submit" value="LogOut" class="btn">
    </form>

</div>   
	
<div class="body">	
  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">AKCSIT</div>
          <div class="text-two">C.U. Technology Campus</div>
          <div class="text-three">Sector III,Salt Lake City</div>
          <div class="text-four">Kolkata</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+91 8697363533</div>
          <div class="text-two">+91 7044535429</div>
          <div class="text-three">+91 9903033069</div>
          <div class="text-four">+91 9434180870</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">pujadasrm@gmail.com</div>
          <div class="text-two">sagnikaid@gmail.com</div>
          <div class="text-three">pallavi.paul22nd@gmail.com</div>
          <div class="text-four">snmajumder66@gmail.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>If you have any work from me or any types of quaries related to my tutorial, you can send me message from here. It's my pleasure to help you.</p>
      <form method="post" action="Contactus">
        <div class="input-box">
          <input type="text" name="name" id="name" placeholder="Enter your name">
        </div>
        <div class="input-box">
          <input type="email" name="email" id="email" placeholder="Enter your email">
        </div>
        <div class="input-box message-box">
          <input type="text" name="msg" id="msg" placeholder="Enter your message">
        </div>
          <input type="submit" class="btn" value="Send now">
      </form>
    </div>
    </div>
  </div>
</div>
<!-- custom js file link  -->
<script src="js/scriptlogout.js"></script>
</body>
</html>
