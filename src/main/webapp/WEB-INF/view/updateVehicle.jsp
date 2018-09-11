
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	<div style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome</h1>
	<h2 align="center">Please enter the vehicle number</h2>
	</div>
	<div align="center">
	<h3 align="center" style="color: red;">${warning}</h3>
	
	<form:form  action="updateVehicle" METHOD="post" modelAttribute="vehicle">
	<form:hidden path="vehicleNumber"/>
	            <fieldset class="form-group">
						<form:label path="VehicleName">Vehicle Name</form:label><br>
						<form:input type="text" path="vehicleName"
							class="form-control" required="required" />
							<form:errors path="vehicleName" cssClass="text-warning"></form:errors>
				</fieldset>
				
				<fieldset class="form-group">
						<form:label path="vehicleType">vehicle Type</form:label><br>
						<form:input type="text" path="vehicleType"
							class="form-control" required="required" />
							<form:errors path="vehicleType" cssClass="text-warning"></form:errors>
					</fieldset>
	
	               
	            <button type=submit class="btn btn-success">
						Add
					</button>
  </form:form>
	
</body>
</html>