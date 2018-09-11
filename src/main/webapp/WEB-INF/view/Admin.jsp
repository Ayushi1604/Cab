<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<style type="text/css">
	ul li {display: inline-block;width: 245px;}
	ul li ul li:hover {background: maroon;}
	ul li ul li a {display:block !important;}
	ul li ul li {
	 	 background: #555;
	 	 display: block;
		}
	ul li:hover ul {display: block;}
	ul li ul {
	 	 position: absolute;
	 	 width: 100px;
	 	 display: none;
		}
	ul {
		  display: inline;
		  margin: 0;
	 	 padding: 0;
		}
	div a {
	   	text-decoration: none;
	   	color: white;
	  	font-size: 20px;
	  	padding: 15px;
	    display:inline-block;
		}
	div{
		background-color: green;}
	body{background-image: url("http://www.haripriyacarrentals.com/car-rent-kolhapur/haripriya-travels-car-rental-kolhapur_08.jpg");
	}
	#main{
		color: #fff;
	}
	body{
		margin-left: 0px;
		margin-right: 0px;
	}
	.menu li{
		margin-left: 10%;
	}
</style>
</head>
<body>

     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	<div id ="main" style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center" style="margin-top:2%;">Hello Admin</h1>
	<h1 align="center" style="margin-left:21%;"> Welcome<a href="logout" style="color: #cc0000;font-size:22px; margin-left:18%;">Logout</a></h1>
	
	</div>
	
	${message}
	<div>
	  <ul class="menu">
	    <li>
	      <a href="#">Vehicle</a>
	      <ul>
	        <li><a href="AddVehicle">Add Vehicle</a></li>
	        <li><a href="getAllVehicles">View Vehicle</a></li>
	      </ul>
	    </li>
	    <li>
	      <a href="#">Driver</a>
	      <ul>
	        <li><a href="AddDriver">Add Driver</a></li>
	        <li><a href="getAllDrivers">View Driver</a></li>
	      </ul>
	    </li>
	  </ul>
	</div>
	 <h1>${Warning}</h1>
</body>
</html>