<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
		String username = session.getAttribute("username").toString();
		if(username==null){
			response.sendRedirect("Login.jsp");
		}
		//session.setAttribute("user",username);
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Vertical slider</title>
    <!----CSS link----->
   <link rel="stylesheet" type="text/css" href="about1.css">
    <!----Fontaesome CDN Link---->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
</head>
<body>
 <!--navbar starts -->
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
    <!-- navbar ends -->
  <div class="slider-container">
    <div class="left-slide">
      <div style="background-image: linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.50)),url('imageabout/photo5.jpg');backdrop-filter: blur(5px);">
         <h1>ABOUT US</h1>
        <p>So, come and join us</p>
        <p>And live your life to the fullest</p>
        <p>With your loved ones</p>
      </div>
    <div style="background-image: linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.50)),url('imageabout/photo4.jpg');backdrop-filter: blur(5px);">
         <h1>ABOUT US</h1>
        <p>You get to stay at</p>
        <p>amazing places at your own comfort</p>
 <p>and get to test some delicious authentic cuisine</p>
      </div>
       <div style="background-image: linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.50)),url('imageabout/photo3.jpg');backdrop-filter: blur(5px);">
        <h1>ABOUT US</h1>
        <p>We provide you wonderful</p>
<p>packages at reasonable prices</p>
      </div>
      <div style="background-image: linear-gradient(rgba(0,0,0,0.50),rgba(0,0,0,0.50)),url('imageabout/photo-1.jpg');backdrop-filter: blur(5px);">
        <h1>ABOUT US</h1>
        <p>Travelling is the main thing you purchase.</p>
<p>	We at Travel swear by this and put stock in</p>
	 <p>satisfying dreams</p>
      </div>
    </div>
    <div class="right-slide">
      <div style="background-image: url('imageabout/photo3.jpg');"></div>
      <div style="background-image: url('imageabout/photo4.jpg');"></div>
      <div style="background-image: url('imageabout/photo5.jpg');"></div>
      <div style="background-image: url('imageabout/photo6.jpg');"></div>
    </div>
    <div class="action-buttons">
      <button class="down-button">
        <i class="fas fa-arrow-down"></i>
      </button>
      <button class="up-button">
        <i class="fas fa-arrow-up"></i>
      </button>
    </div>
  </div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="js/scripabt.js"></script>
  <script src="js/script.js"></script>
   <script src="js/scriptlogout.js"></script>
</body>
</html>