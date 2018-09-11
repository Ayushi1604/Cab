<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Book</title>
</head>
<body>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Hello <%=session.getAttribute("loginid") %></h1>
	<h1 align="center">Welcome </h1>
	</div>
	<%
	VehicleBean vehicleBean = (VehicleBean)request.getAttribute("vehicledetails");
	SearchBean searchBean = (SearchBean)request.getAttribute("searchdetails");
	ArrayList<Object[]> routedetails = (ArrayList<Object[]>) request.getAttribute("routedetails");
	float distance=0;
	String routeId="";
	for (Iterator iterator=routedetails.iterator(); iterator.hasNext();)
	{
		Object[] routedetail=(Object[])iterator.next();
		distance=Float.parseFloat(routedetail[0].toString());
		routeId=(String)routedetail[1];
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
	<a href="FinalBook?vehicleNumber=<%=vehicleBean.getVehicleNumber() %>&&routeId=<%=routeId %>">Confirm Booking</a>
	</div>
</body>
</html>