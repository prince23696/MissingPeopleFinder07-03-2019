<%@page
	import="com.prince.entities.MissingPerson,com.prince.*,java.sql.Blob,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>
<!DOCTYPE html>
<html>
<head>
<title>Home | Missing People Finder</title>
<!-- Compiled and minified CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
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
		var elems = document.querySelectorAll('.slider');
		var instances = M.Slider.init(elems);
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
				<a href="index.jsp" class="brand-logo">Home</a>
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
		<div class="card " style="margin: -15px;:">
			<br>
			<h5 class="header center">We Are Here To Help You Finding And
				Helping For Missing Person</h5>
			<br>
		</div>
		<br> <br> <a href="MissingRegister.jsp"
			class="waves-effect waves-light btn-large red right">I WANT TO
			FIND SOME ONE</a> <a href="ShowMissingHome.jsp"
			class="waves-effect waves-light btn-large red left">I WANT TO
			HELP</a>
	</div>
	<br>
	<br>
	<br>
	<%
		Session session1 = Data.getSF().openSession();
		//fetching using QBC
		Criteria cr = session1.createCriteria(MissingPerson.class);
		List<MissingPerson> flist = cr.list();
	%>
	<div class="slider" "height: 500px;">
		<ul class="slides">
			<li><img src="images/missing"></li>
			<li><img src="images/missing1"></li>
			<li><img src="images/missing2" /></li>
			<li><img src="images/missing3"></li>
		</ul>
	</div>
	<h4 class="color">Records List</h4>
	<div class="col-offset=5"
		style="text-align: center; width: 200px; height: 500px;">

		<table class="highlight" align="left">

			<tr>
				<th>Unique Id</th>
				<th>Image</th>
				<th>Status</th>
			</tr>
			<%
				for (MissingPerson f : flist) {
					int id = f.getId();
					String status = f.getStatus();
			%>
			<tr>
				<td><marquee direction="up">
						<%=id%>
					</marquee></td>
				<td><marquee direction="up">
						<img width="100" height="100" src="ImageLoader?id=<%=id%>" />
					</marquee></td>
				<td><marquee direction="up">
						<%=status%></marquee></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>



</body>
</html>