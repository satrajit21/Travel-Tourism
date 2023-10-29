<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>" >

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form" name="form" onclick="return validateForm()">
							<div class="form-group">
								<label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label> 
									<input type="text" name="name" id="name" placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input type="email" name="email" id="email" placeholder="Your Email" required="required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
								 <input	type="password" name="pass" id="pass" placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required="required" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact" placeholder="Contact no" required="required" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required="required"/> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

    <script>
	function validateForm() {
	   
	    var regName = /^[a-zA-Z]+ [a-zA-Z]+$/;                                    // Javascript reGex for Name validation
	    var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;  //Javascript reGex for Email Validation.
	    var passw=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	    var regPhone=/^\d{10}$/;                                        // Javascript reGex for Phone Number validation.
	    
	    /*if(form.name.value==""){
			alert("Please Enter name");
			form.name.focus();
			return false;
		}*/
	    if((form.name.value!="")&&!(regName).test(form.name.value)){
	        alert("Please enter your name properly.");
	        form.name.focus();
	        return false;
	    }
		/*if(form.email.value==""){
			alert("Please Enter email");
			form.email.focus();
			return false;
		}*/
		if((form.email.value!="")&&!(regEmail).test(form.email.value)){
	        alert("Please enter valid email address.");
	        form.email.focus();
	        return false;
		}
		/*if(form.pass.value==""){
			alert("Please Enter password");
			form.pass.focus();
			return false;
		}*/
		if((form.pass.value!="")&&!(passw).test(form.pass.value)){
	        alert("The password should be 8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character.");
	        form.pass.focus();
	        return false;
		}
		/*if(form.re_pass.value==""){
			alert("Please Enter repeat-password");
			form.re_pass.focus();
			return false;
		}
		if(form.pass.value!=form.re_pass.value){
	        alert("both field must be same");
	        form.re_pass.value.focus()
	        return false
	    }*/
		/*if(form.contact.value==""){
			alert("Please Enter contact number");
			form.contact.focus();
			return false;
		}
		if(!(regPhone).test(form.contact.value)){
	        alert("Please enter valid phone number.");
	        form.contact.value.focus();
	        return false;
		}*/
		  
	    return true;
	}

</script>

<script type="text/javascript">

	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	if(status == "invalidName"){
		swal("Sorry","Please enter username","error");
	}
	if(status == "invalidEmail"){
		swal("Sorry","Please enter email","error");
	}
	if(status == "invalidPwd"){
		swal("Sorry","Please enter password","error");
	}
	if(status == "invalidconfirm"){
		swal("Sorry","Both the password should be same","error");
	}
	if(status == "invalidmobile"){
		swal("Sorry","Please enter mobile number","error");
	}
	if(status == "invalidmobilelen"){
		swal("Sorry","Please enter correct mobile number","error");
	}
	if(status == "notavlu"){
		alert("Sorry username or email exist");
	}

</script>

</body>

</html>
