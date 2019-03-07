<!DOCTYPE html>
<html>
<head>
<title>Login-Page | Missing-People-Finder</title>
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
	<div class="container" class="row">
		<div class="card">

			<div class="container" class="row">
				<form action="VerifyUser">
					<div class="row">

						<div align="Center">
							<br>
							<h4 styleclass="header center">LOGIN HERE!!!</h4>
							<br>
						</div>

						<div class="row">
							<div class="input-field col s10 offset-s1">
								<input name="userid" type="text" class="validate" id="userid"
									required> <label for="userid">E-Mail</label> <span
									class="helper-text" data-error="Enter Email Address"></span>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s10 offset-s1">
								<input name="password" type="password" id="password"
									maxlength="20" minlength="8" class="validate" required>
								<label for="password">Password</label> <span class="helper-text"
									data-error="Enter Password"></span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<select name="utype">
									<option value="" disabled selected>Choose your option</option>
									<option>Admin</option>
									<option>User</option>
									<option>Police</option>
									<option>NGO</option>
								</select> <label>User Type</label> <a href="RecoverPassword.jsp">ForgetPassword??</a>
							</div>
						</div>
						<div class="row">

							<div class="col s4 offset-s1" onclick="check()">
								<button type="submit" class="btn red darken-4"
									class="btn waves-effect waves-red waves-ripple btn-large:hover"
									id='submit'>Login</button>
								<br> <BR>
							</div>
						</div>
					</div>
				</form>

			</div>

		</div>
	</div>
</body>
</html>