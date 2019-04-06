<!DOCTYPE html>
<html>
<head>
<title>Help | Missing People Finder</title>
<!-- Compiled and minified CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="home.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<meta charset="utf-8">
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
		var elems = document.querySelectorAll('.dropdown-trigger');
		var instances = M.Dropdown.init(elems);
	});
	document.addEventListener('DOMContentLoaded', function() {
		var elems = document.querySelectorAll('select');
		var instances = M.FormSelect.init(elems);
	});
</script>


</head>
<body bgcolor="#eeeeee">
	<p style="margin-top: 1em">
		<font size="5" face="sans-serif"> <marquee>Welcome to
				the Portal to Find Missing People</marquee>

		</font>
	</p>


	<nav>
		<div class="nav-wrapper  " style="background-color: teal">
			<div class="container">

				<a href="index.jsp" class="brand-logo"> Home</a>
				<ul class="right hide-on-med-and-down" id="nav-mobile">

					<li><a href="ContactUs.jsp">Contact us</a></li>
					<li><a href="AboutUs.jsp">About us</a>
					<li><a href="Login.jsp">Login</a></li>
					<li><a class="dropdown-trigger" href="#!"
						data-target="dropdown1" onclick="instance.onOpenEnd();">Registration<i
							class="material-icons right">arrow_drop_down</i></a></li>
					<li><a href="Help.jsp">Help!!</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="registration.jsp">User-Registration</a></li>
		<li class="divider"></li>
		<li><a href="policeregistration.jsp">Police-Registration</a></li>
		<li class="divider"></li>
		<li><a href="ngoregistration.jsp">NGO-Registration</a></li>
	</ul>
	<h3 align="center">Need-Help!!!!</h3>

	<div class="container">
<h4>How to Register????</h4>
<br><p>You can register to our site to just follow this simple step:</p>
<p>If you are a User : go to the register menu then their submenu
		User Registration and fill your information and click to the SingUp
		Button. You are successful registered to our site(If You Get Message
		Action Performed!). For NGO User : Go to the Ngo submenu and for
		police go to the Police submenu and fill your information.</p>
	<br>
	<h4>How to login????</h4>
	<br>
	<p>You can login to our site by this steps:</p>
	<p>For login to our site you have go to Login option enter your
	   name and password and enter login button.Then you are login to our site.</p>
	
	<br>
	<h4>Contact to our site....</h4>
<h5>Email:</h5><br>
<p>XYZ@GMAIL.COM<p>

<h5>Mobile:</h5><br>
<p>8085798656<p>
	<br></div> 
</body>
</html>