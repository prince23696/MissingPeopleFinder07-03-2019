<!DOCTYPE html>
<html>
<head>
<title>Registration Form Police</title>
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

	var disable = function() {
		document.getElementById('submit').disabled = true;
	}
	var check = function() {
		if (document.getElementById('password').value != document
				.getElementById('confirm_password').value) {
			alert("Make sure Password and Confirm Password are the same")
			document.getElementById('submit').disabled = true;
		} else {
			document.getElementById('submit').disabled = false;
		}
	}

	document.addEventListener('DOMContentLoaded', function() {
		var elems = document.querySelectorAll('.datepicker');
		var instances = M.Datepicker.init(elems);
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
	<div class="container">
		<div class="card">
			<div class="container" class="row">
				<form action="SavePolice" method="post">
					<div class="row">
						<br>
						<div align="Center">

							<h4 styleclass="header center">Registration Form Police</h4>
						</div></div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">account_circle</i> <input
									id="icon_prefix" name="name" type="text" class="validate" required>
								<label for="icon_prefix">Name</label>
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
									<i class="material-icons prefix">import_contacts</i> <input name="police_id"
										type="text" class="validate" id="police_id" required> <label
										for="police_id">Police Id</label> <span class="helper-text"
										data-error="Enter Police Id"></span>
								</div>
							</div>	<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">home</i> <input name="station_no"
										type="text" class="validate" id="station_no" required> <label
										for="station_no">Station No.</label> <span class="helper-text"
										data-error="Enter Station No."></span>
								</div>
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">home</i> <input name="Area"
										type="text" class="validate" id="Area" required> <label
										for="Area">Area</label> <span class="helper-text"
										data-error="Enter Area"></span>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">room</i> <input name="address"
										type="text" class="validate" id="address" required> <label
										for="address">Address</label> <span class="helper-text"
										data-error="Enter address"></span>
								</div>
							</div>
							<div class="row">
								<div class="col s11">
<label for name="dob">Date Of Birth</label> <input type="date" name="dob">
								</div>
							</div>
							<div class="row">
								<div class="col s12">
									<div class="input-field col s2"><i class="material-icons prefix">wc</i>
										<label for="gender">Gender</label>
									</div>

									<div class="input-field col s5">
										<p>
											<label> <input name="gender" value="male"
												type="radio" required/> <span>Male</span>
											</label>
										</p>
									</div>
									<div class="input-field col s5">
										<p>
											<label> <input name="gender" value="female"
												type="radio" required/> <span>Female</span>
											</label>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">phone</i> <input
										id="icon_telephone" type="tel"name="mobile" class="validate" required> <label
										for="icon_telephone">Telephone</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">lock</i> <input
										name="password" type="password" id="password" maxlength="20"
										minlength="8" class="validate" required> <label
										for="password">Password</label> <span class="helper-text"
										data-error="Enter Password"></span>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">lock_outline</i> <input
										name="cpassword" type="password" id="confirm_password"
										maxlength="20" minlength="8" class="validate" onblur="check()"
										required> <label for="confirm_password">Confirm
										Password</label>
								</div>
							</div>
							<div class="row">
								<div class="col s5 offset-s1" onclick="check()">
									<button type="submit" class="btn red darken-4"
										class="btn waves-effect waves-red waves-ripple btn-small:hover"
										id='submit' name="signup">Sign Up</button>
									<br>
									<br>
								</div>
							</div>
						</div>
				</form>


			</div>
		</div>
	</div>
</body>
</html>



