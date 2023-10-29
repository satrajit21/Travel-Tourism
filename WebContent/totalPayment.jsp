<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>   
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
   <link rel="stylesheet" type="text/css" href="NewFile.css">
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
        	<i class="fas fa-user" id="login-btn">  <%=username %></i>
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
<div class = "image">
	<div class = "table">
	<%String uemail=null;
String place = null;
String member = null;
String arrival = null;
String leaving = null;
Connection con=null;
Statement smt=null;
ResultSet rs;
try{
	
	Class.forName("com.mysql.jdbc.Driver");

	
	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root", "root");
	smt=con.createStatement();
	String Query="select * from book where uemail = '"+username+"' ";
	//smt = con.prepareStatement(Query);
	rs=smt.executeQuery(Query);
	
	//psmt.setString(1,uemail);
	//psmt.setString(2,place);
	//psmt.setString(3,member);
	//psmt.setString(4,arrival);
	/*psmt.setString(5,leaving);*/
	 /*rs = psmt.executeQuery();*/
	 %>
	 <table border="2" width=600>
    	<tr align="center">
    		<th><font size="6">Place</font></th>
    		<th><font size="6">Member</font></th>
    		<th><font size="6">Arrival</font></th>
    		<th><font size="6">Cost</font></th>
    	</tr>
	 
	 <%
	while(rs.next()==true){
		%>
		
		<tr align="center">
			
			<td><font size="5"><%=rs.getString(2) %></font></td>
			<td><font size="5"><%=rs.getString(3) %></font></td>
			<td><font size="5"><%=rs.getString(4) %></font></td>
			<td><font size="5"><%=rs.getString(5) %></font></td>
		</tr>
		
		<% 
	}
	
	}
	catch(Exception e){
		out.println(e);
	}

	%>
	</table>
	</div>
	
	<div>
		<form>
			<input type="button" name="payment" id="payment" value="Pay Now" class="btn1">
		</form>
	</div>
</div>
	<!-- custom js file link  -->
<script src="js/scriptlogout.js"></script>

</body>
</html>
