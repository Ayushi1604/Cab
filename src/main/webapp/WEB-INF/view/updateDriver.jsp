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
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Update Driver</title>

</head>
<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
     		<%@include file="navadmin.jsp" %>
     <br><br><br><br><br>
	<div class="container">
	<div class="col-md-4" >
	<h2>Update Driver detail</h2><br>
	<form:form  action="updateDriver" METHOD="post" modelAttribute="driver">
	<form:hidden path="vehicleNumber"/>
	<form:hidden path="driverId"/>
	            <fieldset class="form-group">
						<form:label path="driverName">Name</form:label><br>
						<form:input type="text" path="driverName"
							class="form-control" required="required" />
							<form:errors path="driverName" cssClass="text-warning"></form:errors>
				</fieldset>
				
				<fieldset class="form-group">
						<form:label path="driverContactNumber">Contact Number</form:label><br>
						<form:input type="text" path="driverContactNumber"
							class="form-control" required="required" />
							<form:errors path="driverContactNumber" cssClass="text-warning"></form:errors>
					</fieldset>
	
	               
	            <button type=submit class="btn btn-success">
						Add
					</button>
  </form:form>
  </div>
  </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>