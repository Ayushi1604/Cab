<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<title>Add Vehicle</title>
<style type="text/css">
	#main{
		color: #fff;
	}
	body{
		margin-left: 0px;
		margin-right: 0px;
		margin-top: 0px;
	}
	#home{
		text-decoration : none;
		font-weight: 500;
		font-size: 20px;
		margin: 2.5%;
		margin-bottom: 4%;
	}
	table{
		padding-top: 2%;
	}
	td{
		color: #fff;
	}
</style>
</head>

<body bgcolor=CadetBlue>
     <c:if test="${user != 'admin@123'}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
     </c:if>
	<div id="main" style="text-align:center; padding:5px;background-color: Teal;">
	<h1 align="center">Welcome</h1>
	<h2 align="center">Please enter the Vehicle Details</h2>
	</div>
	<h3 align="center" style="color: red;">${Warning}</h3>
	<a id="home" href="home">Home</a>
	<div class="container">
	<form  action="vehicleMain" METHOD="POST" >
	<table class = "table table-striped"  >
    <tr><td style="color:green" >Vehicle Number:<input type="text" name="vehicleNumber" ></td></tr>
	<tr><td style="color:green" >Vehicle Name  :<input type="text" name="vehicleName" ></td></tr>
	<tr><td style="color:green" >Vehicle Type  :<input type="radio" name="vehicleType" value="AC">AC
	                       <input type="radio" name="vehicleType" value="Non-AC">Non-AC</td></tr>
	<tr><td><input type = "submit" value = "submit" class = "btn btn-success" ></td></tr>
	</table>

	</form>
	</div>
	 <script type="text/javascript">
	
       </script>

</body>
</html>