<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Booking History</title>
</head>
<body>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Hello Admin</h1>
	<h1 align="center">Welcome</h1>
	</div>
	<h1 align="center"> All Booked Ticket Details </h1>
	<%  ArrayList<BookingBean> bookingBean= (ArrayList<BookingBean>)request.getAttribute("bookingBean");
	%>
	<table align="center" bgcolor="white" border="2">
	<tr><td><b>LoginID</b></td><td><b>BookingID</b></td><td><b>Vehicle Number</b></td>
	<td><b>BookingDate</b></td></tr>
	<%
	for (Iterator iterator=bookingBean.iterator(); iterator.hasNext();)
	{
		BookingBean booking=(BookingBean)iterator.next();%>
	<tr><td><%=booking.getLoginid() %></td><td><%=booking.getBookingId() %></td><td><%=booking.getVehicleNumber() %></td>
	<td><%=booking.getBookingDate().toString().substring(0, 11) %></td></tr>
	<% } %>
	</table>
	<a href="home">go to home</a>
</body>
</html>