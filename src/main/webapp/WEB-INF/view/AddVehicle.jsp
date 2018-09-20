<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
   
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
		<%@include file="navadmin.jsp" %>
<br><br><br><br><br>

	<div class="container">
	 <div class="col-md-4" >
	 <h2 >Add Vehicle</h2>
	<form:form  action="vehicleMain" METHOD="POST" modelAttribute="vehicleBean">
    <div class="form-group"><form:input type="text" path="vehicleNumber" class="form-control"  placeholder="Vehicle Number" /></div>
	<div class="form-group"><form:input type="text" path="vehicleName" class="form-control" placeholder="Vehicle Name" /></div>
	<div class="form-group"><form:radiobutton path="vehicleType" value="AC"/>AC
	                       <form:radiobutton path="vehicleType" value="Non-AC"/>Non-AC</div>
	<div class="form-group"><input type = "submit" value = "submit" class = "btn btn-primary" /></div>

	</form:form>
	</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>