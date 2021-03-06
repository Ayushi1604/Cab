<%@ page import="com.example.CabBooking.Cab.Bean.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display All Drivers</title>
    <link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>

<%@include file="navadmin.jsp" %>
      <br><br><br>
<h3 align="center" style="color: red;">${Warning}</h3>

<div class="container">
<table class="table table-striped">
<thead>
<tr>
<th>Driver Name</th>
<th>Vehicle Number</th>
<th>Contact Number</th>
<th></th>
</tr>
</thead>
<tbody>

<c:forEach items="${message}" var = "driver">
<tr>

<td>${driver.driverName}</td>
<td>${driver.vehicleNumber}</td>
<td>${driver.driverContactNumber}</td>
<td><a type=button class="btn btn-success" href="/updateDriver?id=${driver.vehicleNumber}" >Update</a></td>
<td><a type=button class="btn btn-warning" href="/deleteDriver?id=${driver.vehicleNumber}" >Delete</a></td>
</tr>
</c:forEach>
<%

%>
</table>
</div>
<div class = "container">
<a class="button" href="/home">home</a></div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>