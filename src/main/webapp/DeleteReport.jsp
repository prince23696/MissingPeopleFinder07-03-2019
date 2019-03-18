<%@page
	import="com.prince.entities.MissingPerson,com.prince.*,org.hibernate.Session,java.util.List,org.hibernate.Criteria"%>
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
		Session session1 = Data.getSF().openSession();
		//fetching using QBC
		Criteria cr = session1.createCriteria(MissingPerson.class);
		List<MissingPerson> flist = cr.list();
	%>
	<h4 align="center">Missing Table</h4>
	<form action="RemoveAllReport">
		<table class="highlight">
			<tr>
				<th>Unique Id</th>
				<th>Name</th>
				<th>Date_of_Birth</th>
				<th>Gender</th>
				<th>Image</th>
				<th>Mobile</th>
				<th>Status</th>
				<th>Delete One</th>
				<th>Delete Multiple</th>
			</tr>
			<%
				for (MissingPerson f : flist) {
					String id = f.getId();
					String name = f.getName();
					String Dob = f.getDob();
					String gender = f.getGender();
					String status = f.getStatus();
					String image = f.getImage();
					String mobile = f.getMobile();
			%>
			<tr>
				<td><%=id %></td>
				<td><%=name%></td>
				<td><%=Dob%>
				<td><%=gender%>
				<td><%=image%>
				<td><%=mobile%>
				<td><%=status%>
				<td><a href="RemoveReport?id=<%=id%>">[X]</a></td>
				<td><label> <input type="checkbox" name=id
						value=<%=id%> /> <span></span>
				</label></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><input type=submit value=X></td>
			</tr>
		</table>
	</form>
</body>
</html>
