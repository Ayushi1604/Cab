<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
    <%@ page import="java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get All Routes</title>
</head>
<body bgcolor=CadetBlue>

       <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>

	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome</h1>
	<h2 align="center">Details of All Routes Present</h2>
	</div>
	<% List<RouteBean> list=(List<RouteBean>)request.getAttribute("listOfRoutes"); %>
	
	
	<table align="center" bgcolor="white" border="2" style="width:100%">
	<tr><td><b>Route id</b></td><td><b>Source</b></td><td><b>Destination</b></td></tr>
	<%
	for (Iterator iterator=list.iterator(); iterator.hasNext();)
	{
		RouteBean routeBean=(RouteBean)iterator.next();%>
	<tr><td><%=routeBean.getRouteId() %></td><td><%=routeBean.getSource() %></td><td><%=routeBean.getDestination() %></td></tr>
	<% } %>
	</table>
	
	<a href="home">GO to home</a>
</body>
</html>