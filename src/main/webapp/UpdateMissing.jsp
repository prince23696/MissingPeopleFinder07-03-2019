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
	<jsp:useBean scope="session" id="misingperson"
		class="com.prince.entities.MissingPerson"></jsp:useBean>

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
	-
	<div class="container">
		<div class="card">
			<div class="container" class="row">
				<form action="SaveMissingPerson" method="post"
					enctype="multipart/form-data">
					<div class="row">
						<br>
						<div align="Center">

							<h4 styleclass="header center">Update Report</h4>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">account_circle</i> <input
									id="name" name="name" type="text"
									value="<jsp:getProperty property="name" id="missingperson"/>" />
								<label for="name">Name</label>
							</div>
							<div class="row">
								<div class="col s11">
									- <label for="dob">Date Of Birth</lebel> <input type="date"
										name="dob"
										value="<jsp:getProperty property="dob" id="missingperson"/>" /></label>
								</div>
							</div>
							<div class="row">
								<div class="col s12">
									<div class="input-field col s2">
										<i class="material-icons prefix">wc</i> <label for="gender">Gender</label>
									</div>

									<div class="input-field col s5">
										<p>
											<label> <input name="gender" value="male"
												type="radio" required
												value="<jsp:getProperty property="gender" id="missingperson"/>" />
												<span>Male</span>
											</label>
										</p>
									</div>
									<div class="input-field col s5">
										<p>
											<label> <input name="gender" value="female"
												type="radio" required
												value="<jsp:getProperty property="gender" id="missingperson"/>" />
												<span>Female</span>
											</label>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">person</i> <select
										name="status"
										value="<jsp:getProperty property="status" id="missingperson"/>">
										<option disabled selected>Status :</option>
										<option>Missing</option>
										<option>Found</option>
										<option>In-Process</option>
									</select><label>Status</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">contact_mail</i> <input
										name="area" type="text" id="area"
										value="<jsp:getProperty property="area" id="missingperson"/>" />
									<label for="area">Area</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">room</i> <input name="address"
										type="text" id="address"
										value="<jsp:getProperty property="address" id="missingperson"/>" />
									<label for="address">Address</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s10 offset-s1">
									<i class="material-icons prefix">phone</i> <input
										id="icon_telephone" type="tel" name="mobile"
										value="<jsp:getProperty property="mobile" id="missingperson"/>" />
									<label for="icon_telephone">Telephone</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">recent_actors</i> <select
									name="complextion"
									value="<jsp:getProperty property="complextion" id="missingperson"/>">
									<option disabled selected>Choose Complextion :</option>
									<option>Sallow</option>
									<option>Black</option>
									<option>Wheatish</option>
									<option>Fair</option>
									<option>Not Available</option>
								</select><label>Complextion</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">face</i> <select name="hair"
									value="<jsp:getProperty property="hair" id="missingperson"/>">
									<option disabled selected>Hair :</option>
									<option>Normal</option>
									<option>Bald Partial</option>
									<option>Curly</option>
									<option>Long</option>
									<option>Short</option>
									<option>Medium</option>
									<option>Bald Full</option>
									<option>Small</option>
									<option>Not Available</option>
								</select><label>Hair</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">fingerprint</i> <select
									name="identi_mark"
									value="<jsp:getProperty property="identi_mark" id="missingperson"/>">
									<option disabled selected>Identification Mark :</option>
									<option>Handicap</option>
									<option>Leucoderma</option>
									<option>Mole</option>
									<option>Scare</option>
									<option>Tattoo</option>
									<option>Deformities</option>
									<option>Other Skin Disease</option>
									<option>Burn Mark</option>
									<option>Other Disease</option>
									<option>Other</option>
									<option>Not Available</option>
								</select><label>Identification Mark</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">person</i> <select name="build"
									value="<jsp:getProperty property="build" id="missingperson"/>">
									<option disabled selected>Build :</option>
									<option>Fat</option>
									<option>Thin</option>
									<option>Medium</option>
									<option>Stocky</option>
									<option>Not Available</option>
								</select><label>Build</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">directions_walk</i> <input
									id="height" type="text" name="height"
									value="<jsp:getProperty property="height" id="missingperson"/>"/>
								<label for="height">Height</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">accessibility_new</i> <input
									id="outfit" type="text" name="outfit"
									value="<jsp:getProperty property="outfit" id="missingperson"/>"/>
								<label for="outfit">Outfit</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">visibility</i> <input
									id="last_seen" type="text" name="last_seen"
									value="<jsp:getProperty property="last_seen" id="missingperson"/>"/>
								<label for="last_seen">Last Seen</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">assignment</i> <input
									id="extra" type="text" name="extra"
									value="<jsp:getProperty property="extra" id="missingperson"/>"/>
								<label for="extra">Extra Information (MAX 250
									CHARECTERS)</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s10 offset-s1">
								<i class="material-icons prefix">import_contacts</i> <input
									name="image" type="file" class="validate" id="image" required
									value="<jsp:getProperty property="image" id="missingperson"/>"/>
								<label for="image">Upload File</label> <span class="helper-text"
									data-error="Select File to Upload"></span>
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



