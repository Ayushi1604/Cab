<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Booking</title>
</head>
<body bgcolor=CadetBlue>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome <%=session.getAttribute("loginid") %></h1>
	<h1 align="center">Welcome to Suhana Safar Travel Agency </h1>
	</div>
	<%
	VehicleBean vehicleBean = (VehicleBean)request.getAttribute("vehicleDetails");
	SearchBean searchBean = (SearchBean)request.getAttribute("searchDetails");
	ArrayList<Object[]> routeDetails = (ArrayList<Object[]>) request.getAttribute("routedetails");
	String routeId="";
	for (Iterator iterator=routeDetails.iterator(); iterator.hasNext();)
	{
		Object routeDetail=(Object)iterator.next();
		routeId=(String)routeDetail;
	}
	%>
	<table align="center" border="2">
	<tr><td>Source </td><td><%=searchBean.getSource() %></td></tr>
	<tr><td>Destination </td><td><%=searchBean.getDestination() %></td></tr>
	<tr><td>Vehicle Type </td><td><%= vehicleBean.getVehicleType() %></td></tr>
	<tr><td>Vehicle Name </td><td><%=vehicleBean.getVehicleName() %></td></tr>
	<tr><td>Vehicle Number </td><td><%=vehicleBean.getVehicleNumber() %></td></tr>
	</table><br><br>
	<div align="center">
	</div>
</body>
</html>