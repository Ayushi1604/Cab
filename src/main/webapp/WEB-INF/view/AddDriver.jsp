<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Driver</title>
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
   
</head>
<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	   <%@include file="navadmin.jsp" %>
      <br><br><br>
	<div class="container">
	 <div class="col-md-4" >
	<h2 >Add Driver</h2>
	<form  action="driverMain" METHOD="POST" >
	<div class="form-group"><input type="text" name=driverId class="form-control" placeholder="Driver Id"></div>
	<div class="form-group"><input type="text" name=vehicleNumber class="form-control" placeholder="Vehicle Number" autofocus></div>
	<div class="form-group"><input type="text" name=driverName class="form-control " Placeholder="Driver Name" ></div>
	<div class="form-group"><input type="text" name=driverContactNumber class="form-control" placeholder="Phone Number"></div>
	
	<div class="form-group"><input type="submit" value="Add Driver" class="btn btn-primary "></div>
	</form>
	</div>
	</div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>