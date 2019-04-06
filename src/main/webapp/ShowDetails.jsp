<%@page
	import="com.prince.entities.MissingPerson,com.prince.*,java.sql.Blob,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>
<html>
<head>
<title>Missing People Finder</title>
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
	<div class="container">
		<div class="card " style="margin: -15px;:">
			<br>
			<h5 class="header center">We Are Here To Help You Finding And
				Helping For Missing Person</h5>
			<br>

		</div>
	</div>
	<br>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Session session1 = Data.getSF().openSession();
		MissingPerson mp = session1.get(MissingPerson.class, id);
	%>
	<h4 align="center">Missing People</h4>
	<%
		int Id = mp.getId();
		String Name = mp.getName();
		String Dob = mp.getDob();
		String Gender = mp.getGender();
		String Area = mp.getArea();
		String Address = mp.getAddress();
		String Telephone = mp.getMobile();
		String complextion = mp.getComplextion();
		String Hair = mp.getHair();
		String Identi_mark = mp.getIdenti_mark();
		String Build = mp.getBuild();
		String Height = mp.getHeight();
		String Outfit = mp.getOutfit();
		String Last_seen = mp.getLastseen();
		String Extra = mp.getExtra();
		Blob Image = mp.getImage();
	%>
	<div class="container">
		<div class="card">
			<table class="highlight">
				<tr>
					<td>Image :</td>
					<td><img width="100" height="100"src="ImageLoader?id=<%=id%>" /></td>
				</tr>

				<tr>
					<td>Unique Id :</td>
					<td><%=id%></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><%=Name%></td>
				</tr>
				<tr>
					<td>Dob :</td>
					<td><%=Dob%></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><%=Gender%></td>
				</tr>
				<tr>
					<td>Area :</td>
					<td><%=Area%></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><%=Address%></td>
				</tr>
				<tr>
					<td>Telephone :</td>
					<td><%=Telephone%></td>
				</tr>
				<tr>
					<td>Complextion :</td>
					<td><%=complextion%></td>
				</tr>
				<tr>
					<td>Hair :</td>
					<td><%=Hair%></td>
				</tr>
				<tr>
					<td>Identi_mark :</td>
					<td><%=Identi_mark%></td>
				</tr>
				<tr>
					<td>Build :</td>
					<td><%=Build%></td>
				</tr>
				<tr>
					<td>Height:</td>
					<td><%=Height%></td>
				</tr>
				<tr>
					<td>Outfit :</td>
					<td><%=Outfit%></td>
				</tr>
				<tr>
					<td>Lastseen :</td>
					<td><%=Last_seen%></td>
				</tr>
				<tr>
					<td>Extra :</td>
					<td><%=Extra%></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>