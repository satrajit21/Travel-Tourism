<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
   <%
		String username = session.getAttribute("username").toString();
		if(username==null){
			response.sendRedirect("Login.jsp");
		}
		session.setAttribute("user",username);
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>

    <title>Feedback</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
   <link rel="stylesheet" type="text/css" href="feedback.css">
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
<!-- review section starts  -->
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

<section class="review" id="review">

    <h1 class="heading">
        <span>R</span>
        <span>E</span>
        <span>V</span>
        <span>I</span>
        <span>E</span>
        <span>W</span>
    </h1>

    <div class="swiper-container review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="box">
                    <img src="images/pic1.png" alt="">
                    <h3>Titiksha Paul</h3>
                    <p>I had a lovely time.They provide great facilities with awesome food.Services were really good. The tour guides were well-experienced,good behaved.And also they provide comfortable journey.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="images/pic2.png" alt="">
                    <h3>Progya Manna</h3>
                    <p>I had a lovely time.They provide great facilities with awesome food.Services were really good. The tour guides were well-experienced,good behaved.And also they provide comfortable journey.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="images/pic3.png" alt="">
                    <h3>Rima Kundu</h3>
                    <p>I had a lovely time.They provide great facilities with awesome food.Services were really good. The tour guides were well-experienced,good behaved.And also they provide comfortable journey.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box">
                    <img src="images/pic4.png" alt="">
                    <h3>Esha Chakraborty</h3>
                    <p>I had a lovely time.They provide great facilities with awesome food.Services were really good. The tour guides were well-experienced,good behaved.And also they provide comfortable journey.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                </div>
            </div>

        </div>

    </div>

</section>
 </div>
<!-- review section ends -->

<!-- share review starts  -->

<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>Y</span>
        <span>O</span>
        <span>U</span>
        <span>R</span>
        <span class="space"></span>
        <span>F</span>
        <span>E</span>
        <span>E</span>
        <span>D</span>
        <span>B</span>
        <span>A</span>
        <span>C</span>
        <span>K</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="images/contact-img.svg" alt="">
        </div>

        <form action="feedback" method="get">
            <div class="inputBox">
                <input type="text" name="Name" placeholder="Name">
                <input type="Email" name="email" placeholder="email">
            </div>
            <div class="inputBox">
                <input type="text" name="Phone number" placeholder="Phone number">
                <input type="number" min="1" max="5" name="rate" placeholder="Rate Us out of 5!">
            </div>
            <textarea placeholder="Feedback" name="review" id="" cols="30" rows="10"></textarea>
            <input type="submit" class="btn" value="SUBMIT">
        </form>

    </div>
    
</section>

<!-- share review ends -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="js/scriptlogout.js"></script>

</body>
</html>


