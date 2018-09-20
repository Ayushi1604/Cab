<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">BOOK CAB NOW</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav nav-item " id="Home">
              <a class="nav-link" href="${contextRoot}/home">Home
                 <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="">Vehicles
        <span class="caret"></span></a>
	      <ul class="dropdown-menu">
	        <li><a  href="/AddVehicle">Add Vehicles</a></li>
	        <li><a  href="/getAllVehicles">veiw vehicles</a></li>
	      </ul>
	    </li>
        <li class="dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Drivers
            <span class="caret"></span></a>
	      <ul class="dropdown-menu">
	        <li><a  href="${contextRoot}/AddDriver">Add Driver</a></li>
	        <li><a  href="${contextRoot}/getAllDrivers">View Driver</a></li>
	      </ul>
	    </li>            <li class="nav-item" id="Contact">
              <a class="nav-link" href="logout">logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>