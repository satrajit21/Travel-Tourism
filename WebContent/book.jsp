<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
   
   <%
		String username = session.getAttribute("username").toString();
		if(username==null){
			response.sendRedirect("Login.jsp");
		}
		session.setAttribute("user",username);
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
   <link rel="stylesheet" type="text/css" href="stylebook.css">

</head>
<body>  

<!-- Navbar begins --> 
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
        	<i class="fas fa-user" id="login-btn"> <%=username %></i>
    	</div>
	</div>
	
<!-- Navbar Ends --> 

<!-- logout form container  -->

<div class="login-form-container">

    <i class="fas fa-times" id="form-close"></i>

    <form action="">
        <h3>Logout?</h3>
        <p>Click here to logout</p>
        <input type="submit" value="LogOut" class="btn">
    </form>

</div>

<!-- logout form container ends  -->	
	
<!-- Video section begins  -->	

<section class="home" id="home">

    <div class="content">
        <h3>adventure is worthwhile</h3>
        <p>dicover new places with us, adventure awaits</p>
        <a href="#gallery" class="btn">discover more</a>
    </div>

    <div class="controls">
        <span class="vid-btn active" data-src="images/vid-1.mp4"></span>
        <span class="vid-btn" data-src="images/vid-2.mp4"></span>
        <span class="vid-btn" data-src="images/vid-3.mp4"></span>
        <span class="vid-btn" data-src="images/vid-4.mp4"></span>
        <span class="vid-btn" data-src="images/vid-5.mp4"></span>
    </div>

    <div class="video-container">
        <video src="images/vid-1.mp4" id="video-slider" loop autoplay muted></video>
    </div>

</section>

<!-- video section ends -->

	
<!-- book section starts  -->

<section class="book" id="book">

    <h1 class="heading">
        <span>B</span>
        <span>O</span>
        <span>O</span>
        <span>K</span>
        <span class="space"></span>
        <span>N</span>
        <span>O</span>
        <span>W</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="images/book-img.svg" alt="">
        </div>

        <form method="post" action="Book" class="book-form"
							id="book-form" name="myform" onsubmit=" return validateForm()">
            <div class="inputBox">
                <h3>Where to</h3>
                <!-- <input type="text" placeholder="place name"> -->
                <select name="places" id="places">
                <option value="none" selected disabled hidden>Select a place</option>
    			<option value="Kashmir">Kashmir(Rs.30000 per Head,7 Days 6 Nights)</option>
    			<option value="Goa">Goa(Rs.35000 per Head,7 Days 6 Nights)</option>
    			<option value="Sikkim">Sikkim(Rs.25000 per Head,7 Days 6 Nights)</option>
    			<option value="Mp">Madhya Pradesh(Rs.20000 per Head,7 Days 6 Nights)</option>
    			<option value="Shillong">Shillong(Rs.25000 per Head,7 Days 6 Nights)</option>
    			<option value="Uk">Uttarakhand(Rs.20000 per Head,7 Days 6 Nights)</option>
    			<option value="Shimla">Shimla(Rs.25000 per Head,7 Days 6 Nights)</option>
  				</select>
            </div>
            <div class="inputBox">
                <h3>How many</h3>
                <input type="number" min="1" name="guest" id="guest" placeholder="number of guests">
            </div>
            <div class="inputBox">
                <h3>Arrivals</h3>
                <input type="date" name="arrive" id="arrive">
            </div>
            <input type="submit" class="btn" value="book now">
        </form>

    </div>

</section>

<!-- book section ends -->

<!-- services section starts  -->

<section class="services" id="services">

    <h1 class="heading">
        <span>S</span>
        <span>E</span>
        <span>R</span>
        <span>V</span>
        <span>I</span>
        <span>C</span>
        <span>E</span>
        <span>S</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-hotel"></i>
            <h3>Affordable Hotels</h3>
            <p>Affordable and luxury hotels will be provided to you, with clean and hygienic surroundings and with a vew worth enjoying. </p>
        </div>
        <div class="box">
            <i class="fas fa-utensils"></i>
            <h3>Food And Drinks</h3>
            <p>Good quality food with superb taste will be provided. Foods will be cooked by our in house experienced chef.</p>
        </div>
        <div class="box">
            <i class="fas fa-bullhorn"></i>
            <h3>Safety Guide</h3>
            <p>An experienced guide will be provided who will be visiting with you at every sight scene and will be ellaborating to you about the history and culture of the place!</p>
        </div>
        <div class="box">
            <i class="fas fa-globe-asia"></i>
            <h3>Around India</h3>
            <p>We will be taking you around some of the most beautiful cities of India. You will get to enjoy the rich culture of different places and will be able to visit some of the iconic places of those cities!</p>
        </div>
        <div class="box">
            <i class="fas fa-plane"></i>
            <h3>Fastest Travel</h3>
            <p>We will be providing you with the best means of transport. Safe and comfortable travel is our main moto.</p>
        </div>
        <div class="box">
            <i class="fas fa-hiking"></i>
            <h3>Adventures</h3>
            <p>Pack your bags and get ready to live a few care-free days filled with lots of fun and adventures. join with us now!</p>
        </div>

    </div>

</section>

<!-- services section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

    <h1 class="heading">
        <span>G</span>
        <span>A</span>
        <span>L</span>
        <span>L</span>
        <span>E</span>
        <span>R</span>
        <span>Y</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/g-1.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-2.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-3.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-4.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-5.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-6.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-7.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-8.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>
        <div class="box">
            <img src="images/g-9.jpg" alt="">
            <div class="content">
                <h3>Amazing Places</h3>
                <p>Experience the most amazing moment of your life with us.</p>
                <a href="#" class="btn">see more</a>
            </div>
        </div>

    </div>

</section>

<!-- gallery section ends -->

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="js/scriptlogout.js"></script>


<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script>
		var ds= document.forms['myform']['places'];
		var num= document.forms['myform']['guest'];
		var date= new Date();
		var tdate= date.getDate() + 1;
		if(tdate < 10){
			tdate = '0' + tdate;
		}
		var tmonth= date.getMonth() + 1;
		if(tmonth < 10){
			tmonth = '0' + tmonth;
		}
		var tyear= date.getUTCFullYear();
		var minDate= tyear + "-" + tmonth + "-" + tdate;
		document.getElementById("arrive").setAttribute('min',minDate);
		var ardate= document.forms['myform']['arrive'];
		function validateForm() {
			if(ds.value=='none'){
				alert("Destination cannot be Empty!");
				return false;
			}
			if(num.value==''){
				alert("Number of guest cannot be Empty!");
				return false;
			} else if(num.value>10){
				alert("You can book for maximum 10 people using one valid Email_Id!");
				return false;
			}
			if(ardate.value==''){
				alert("Arrival Date cannot be Empty!");
				return false;
			} 
		return true;
		}
		
		
	
</script>
<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Tour Booked Successfully!","success");
	}
</script>
</body>
</html>
		