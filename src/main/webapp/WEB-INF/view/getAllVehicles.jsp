<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.CabBooking.Cab.Bean.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get All Vehicles</title>

<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
</head>
<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	<%@include file="navadmin.jsp" %>
      <br><br><br><br><br>
	
	<div class = "container">
	
    <table class="table table-striped">
    
   <thead>
   <tr>
      <th>Vehicle name</th>
      <th>Vehicle Number</th>
      <th>Vehicle type</th>
      <th></th><th></th>
   </tr></thead>
   <tbody>
     <c:forEach items="${listOfVehicles}" var = "vehicle">
       <tr>
         <td>${vehicle.vehicleName}</td>
         <td>${vehicle.vehicleNumber}</td>
         <td>${vehicle.vehicleType}</td>
         <td><a type=button class="btn btn-success" href="/updateVehicle?id=${vehicle.vehicleNumber}" >Update</a></td>
         <td><a type=button class="btn btn-warning" href="/deleteVehicle?id=${vehicle.vehicleNumber}" >Delete</a></td>
       </tr>
     </c:forEach>
	</tbody>
	</table>
	</div>
	
	<div class = "container">
       <a class="button" href="/home">home</a></div>
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>