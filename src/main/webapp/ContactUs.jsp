<!DOCTYPE html>
<html>
<head>
<title>Contact-Us | Missing People Finder</title>
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
		<ul id="dropdown1" class="dropdown-content">
		<li><a href="registration.jsp">User-Registration</a></li>
		<li class="divider"></li>
		<li><a href="policeregistration.jsp">Police-Registration</a></li>
		<li class="divider"></li>
		<li><a href="ngoregistration.jsp">NGO-Registration</a></li>
	</ul>
	<h3 align="center">Contact-Us</h3>
	<form action="SaveContact" method="post">
		<div class="container">
			<div class="card " style="margin: -15px;:">
				<div align="Center">

					<h5 class="header center">Mail Us At PRINCEGUPTA632@GMAIL.COM</h5>
				</div>
				<h5 class="header center">OR</h5>
				<div class="row">
					<h5 class="header center">DROP YOUR MESSAGE HERE!!!</h5>
					<div class="input-field col s10 offset-s1">
						<i class="material-icons prefix">account_circle</i> <input
							id="icon_prefix" name="name" type="text" class="validate"
							required> <label for="name">Name</label><span
							class="helper-text" data-error="Enter Name"></span>
					</div>
					<div class="row">
						<div class="input-field col s10 offset-s1">
							<i class="material-icons prefix">contact_mail</i> <input
								name="email" type="email" class="validate" id="email" required>
							<label for="email">E-Mail</label> <span class="helper-text"
								data-error="Enter Email Address"></span>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s10 offset-s1">
							<i class="material-icons prefix">message</i> <input
								name="message" type="text" class="validate" id="message"
								required> <label for="message">Message (MAX 250
								CHARECTER)</label> <span class="helper-text" data-error="Enter Message "></span>
						</div>
						<div class="row">
							<div class="col s5 offset-s1" onclick="check()">
								<button type="submit" class="btn red darken-4"
									class="btn waves-effect waves-red waves-ripple btn-small:hover"
									id='submit' name="signup">Submit Message</button>
								<br> <br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>