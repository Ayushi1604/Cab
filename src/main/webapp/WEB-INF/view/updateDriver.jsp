<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Driver</title>
<style type="text/css">
	#main{
		color:#fff;
	}
	body{
		margin:0,0,0;
	}
	#home{
		text-decoration:none;
		font-weight:500;
		font-size:50px;
		margin:2.5%;
		margin-bottom:4%;
	}
	table{
 		padding-top: 2%;
	}
	td{
	color: #fff
	}
</style>
</head>
<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	<div id="main" style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome</h1>
	<h2 align="center">Please enter the details of driver</h2>
	</div>
	<h3 align="center" style="color: red;">${warning}</h3>
	<a id="home" href="home">Update Details</a>
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


</body>
</html>