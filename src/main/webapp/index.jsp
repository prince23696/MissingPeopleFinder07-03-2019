<html>
<head>
<style>
h3 {
	color: red;
	font-size: 30px;
	text-shadow: 2px 2px blue;
}
.dropdown {
	background-size: cover;
	font-family: Arial;
	color: white;
}

.dropdown ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

.dropdown ul li {
	float: left;
	width: 150px;
	height: 40px;
	background-color: black;
	opacity: .8;
	line-height: 25px;
	text-align: center;
	font-size: none;
}

.dropdown ul li a {
	text-decoration: none;
}
body {
	background-color: #ffff99;
}

.button {
	background-color: #ff0000;
	border: none;
	color: black;
	padding: 15px 28px;
	text-align: center;
	text-decoration: none dispaly:inline-block;
	font-size: 25px;
	margin: 4px 220px;
	cursor: pointer;
}

.button1 {
	background-color: #ff0000;
	border: none;
	color: black;
	padding: 15px 28px;
	text-align: center;
	text-decoration: none dispaly:inline-block;
	font-size: 25px;
	margin: 4px 150px;
	cursor: pointer;
}

.menu {
	width: 101%;
	height: 45px;
	background-color: #333;
}

.menu a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	text-decoration: none;
	padding: 0px 40px;
	font-size: 20px;
}

.menu a:hover {
	background-color: #ddd;
	color: green;
}

.menu ul {
	list-style: none;
}
</style>
<title>Home | Missing-People-Finder</title>
</head>
<body>
	<p style="margin-top: 1em">
		<font size="5" face="sans-serif"> <marquee>Welcome to
				the Portal to Find Missing People</marquee>

		</font>
	</p>
	<div class="menu">
		<a href="index.jsp">Home</a> <a href="AboutUs.jsp">About us</a><a
			href="ContactUs.jsp">Contact us</a><a href="Login.jsp">Login</a>
		<div class="dropdown">
		<li>
			<ul>
				<a>Registration</a>

				<li><a href="registration.jsp">User-Registration</a></li>
				<li><a href="policeregistration.jsp">Police-Registration</a></li>

				<li><a href="ngoregistration.jsp">NGO-Registration</a></li>
			</ul>
</li>
		</div>
		<a href="Help.jsp">Help!!</a>
	</div>

	<h3>
		<center>We Are Here To Help You Finding And Helping
			ForMissing Person</center>
	</h3>


	<a href="FindRegister.jsp" class="button">I want to Help</a>
	<a href="Details.jsp" class="button1">I want to Find SomeOne</a>

</body>
</html>
