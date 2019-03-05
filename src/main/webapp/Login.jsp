<html>
<head>
<style>
h3 {
	color: red;
	font-size: 30px;
	text-shadow: 2px 2px blue;
}

body {
	background-color: #ffff99;
	margin: 0;
	padding: 0;
	background-size: cover;
	background-position: center;
	font-family: sans-serif;
}

.button {
	background-color: #ccffb2;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none dispaly:inline-block;
	font-size: 25px;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	background-color: #A9A9A9;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none dispaly:inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.menu {
	width: 100%;
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

.login {
	width: 325px;
	height: 420px;
	background: rgba(0, 0, 0, 0, 5);
	color: white;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
}
</style>
<title>Home | Missing-People-Finder</title>
</head>
<body>
	<p style="margin-top:1em">
		<font size="5" face="sans-serif"> <marquee>Welcome to the Portal to Find Missing People</marquee>
			<div class="menu">
				<a href="index.jsp">Home</a> <a href="AboutUs.jsp">About us</a> <a href="ContactUs.jsp">Contact
					us</a> <a href="registration.jsp">Registration</a> <a href="Help.jsp">Help!!</a>
			</div>
			<h3>
				<center>We Are Here To Help You Finding And Helping ForMissing Person</center>
			</h3> <br>
	</p><br>
    <div class="login">
	<br><h3>Login Here!!!</h3>
	<form action="VerifyUser">

		<table>
			<tr>
				<th>Email :</th>
				<td><input type="text" name="userid" placeholder="Enter Email" /></td>
			</tr>
			<tr>
				<th>Password :</th>
				<td><input type="password" name="password"placeholder="Enter Password" /></td>
			</tr>
			<tr>
				<th>UserType :</th>
				<td><select name="utype">
						<option>Admin</option>
						<option>User</option>
						<option>NGO</option>
						<option>Police</option>
				</select></td>
			</tr>
			<tr>
				<td><a href="RecoverPassword.jsp">Forget Password?? </a>
			</tr>
			<tr></tr>
			<tr>
				<td><input type="submit" value="Login" /></td>
				<td><input type="reset" value="Reset" /></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>	