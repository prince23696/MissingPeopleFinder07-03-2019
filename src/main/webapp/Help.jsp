<!DOCTYPE html>
<html>
    <head>
        <title>About-Us | Missing-People-Finder</title>
          <!-- Compiled and minified CSS -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
   <link rel="stylesheet" href="home.css">

   <!-- Compiled and minified JavaScript -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
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
            <div class="nav-wrapper  " style="background-color:teal">
              <div class="container">

             <a href = "index.jsp" class="brand-logo" >  Home</a>
                <ul class="right hide-on-med-and-down" id="nav-mobile">
                   
                    <li> <a href="ContactUs.jsp">Contact us</a></li>
                    <li><a href="AboutUs.jsp">About us</a>  
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1"  onclick="instance.onOpenEnd();">Registration<i class="material-icons right">arrow_drop_down</i></a></li>
                   
                    <li><a href="Help.jsp">Help!!</a></li>

                </ul>
              
            
          </div>
            </div>
        </nav><br><br>
     
<ul id="dropdown1" class="dropdown-content">
  <li><a href="registration.jsp">User-Registration</a></li>
  <li class="divider"></li>
  <li><a href="policeregistration.jsp">Police-Registration</a></li>
  <li class="divider"></li>
  <li><a href="ngoregistration.jsp">NGO-Registration</a></li>
</ul>
<h3><center>Need-Help!!!!</center></h3>

		<center><p>
		Missing-People-Finder
		
		
</body>
</html>