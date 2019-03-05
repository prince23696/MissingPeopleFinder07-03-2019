<html>
<head>
<title>Registration-Page-Missing-People-Finder</title>
<style type="text/css">
h3 {
	color: red;
	font-size: 30px;
	text-shadow: 2px 2px blue;
}
body {
	background-color: #ffff99;
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

</head>

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
			<ul>
				<a>Registration</a>

				<li><a href="registration.jsp">User-Registration</a></li>
				<li><a href="policeregistration.jsp">Police-Registration</a></li>

				<li><a href="ngoregistration.jsp">NGO-Registration</a></li>
			</ul>

		</div>
		<a href="Help.jsp">Help!!</a>
	</div>
	<h2>Registration-Form-Police</h2>
	<form action="SavePolice" method="get">
		<table>
			<tr>
				<th>Email :</th>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<th>Password :</th>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<th>Name :</th>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<th>Address :</th>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<th>Mobile :</th>
				<td><input type="text" name="mobile" /><br></td>
			</tr>
			<tr>
				<th>Select Gender :</th>
				<td><input type="radio" name="gender" value="male"><label
					for="male">Male</label></td>
				<td><input type="radio" name="gender" value="female"> <label
					for="female">Female</label></td>
			</tr>
			<tr>

				<th>police_id:</th>
				<td><input type="text" name="police_id" /><br></td>

			</tr>

			<tr>
				<th>station_no :</th>
				<td><input type="text" name="station_no" /><br></td>
			</tr>

			<tr>
				<th>Area :</th>
				<td><input type="text" name="area" /><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register" /></td>
			</tr>
		</table>
	</form>

</body>
</html>