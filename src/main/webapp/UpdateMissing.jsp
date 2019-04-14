<!DOCTYPE html>
<html>
<head>
<title>Update Report</title>
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
	<jsp:useBean scope="session" id="missingperson"
		class="com.prince.entities.MissingPerson"></jsp:useBean>

	<nav>
		<div class="nav-wrapper  " style="background-color: teal">
			<div class="container">

				<a href="index.jsp" class="brand-logo"> Home</a>
				<ul class="right hide-on-med-and-down" id="nav-mobile">

					<li><a href="ContactUs.jsp">Contact us</a></li>
					<li><a href="AboutUs.jsp">About us</a>
					<li><a href="Logout">Logout</a></li>
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
	-
	<div class="container">
		<div class="card">
			<div class="container" class="row">
				<form action="UpdateMissing" method="post">
					<div class="row">
						<br>
						<div align="Center">

							<h4 styleclass="header center">Update Report Status</h4>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">person</i> <select
									name="status">
									<option disabled selected>Status :</option>
									<option>Missing</option>
									<option>Found</option>
									<option>In-Process</option>
								</select><label>Status</label>
							</div>
						</div>
						<div class="row">
							<div class="col s5 offset-s1" onclick="check()">
								<button type="submit" class="btn red darken-4"
									class="btn waves-effect waves-red waves-ripple btn-small:hover"
									id='submit' name="signup">Update</button>
								<br> <br>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>



