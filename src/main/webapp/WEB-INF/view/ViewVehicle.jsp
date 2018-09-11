<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Cabs</title>
</head>
<body>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome </h1>
	<h2 align="center">Please update vehicle details</h2>
	</div>
	<h3 align="center" style="color: red;">${Warning}</h3>
	<form  action="VehicleFinalupdate" METHOD=POST>
	<% VehicleBean vehicleBean=(VehicleBean)request.getAttribute("vehicle");
	  boolean b;
	  if(vehicleBean.getVehicleType().equals("AC"))
		  b=true;
	  else
		  b=false;
	%>
	<table align="center">
	<tr><td> Vehicle Number</td><td><input type="text" name=vehicleNumber value=<%=vehicleBean.getVehicleNumber() %> readonly="readonly"></td></tr>
	<tr><td>Vehicle Name</td><td><input type="text" name=vehicleName value=<%=vehicleBean.getVehicleName() %>></td></tr>
	<tr><td>Vehicle Type</td><td><input type="radio" name="vehicleType" checked=<%=b %> value="AC">AC<br>
	                       <input type="radio" name="vehicleType" checked=<%=b %> value="Non-AC">Non-AC</td></tr>

	<tr><td></td><td><input type="submit" value="Update Vehicle"></td></tr>
	</table>
	</form>
	<a href="home">GO to home</a>
</body>
</html>