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
              <a class="nav-link" href="${contextRoot}/CustomerHomePage">Home
                 <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" id="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false">Booking
        <span class="caret"></span></a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	        <a class="dropdown-item" href="/BookCabNow">Book Vehicle Now</a>
	        <a class="dropdown-item" href="/bookingHistory">Booking History</a>
	      </div>
	    </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" id="navbarDropdownMenuLink" aria-haspopup="true" aria-expanded="false">View Profile
            <span class="caret"></span></a>
	      <div class="dropdown-menu" aria-labelledby="navbarDropdownmenuLink">
	        <a class="dropdown-item" href="viewProfile?id=${user}">View Profile</a>
	      </div>
	    </li>            
	    <li class="nav-item" id="Contact">
              <a class="nav-link" href="logout">logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>