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
	<a id="home" href="home">Home</a>
	<form  action="driverMain" METHOD="POST" >
	<table align="center" cellspacing="5">
	<tr><td>Driver Id</td><td><input type="text" name=driverId ></td></tr>
	<tr><td>Vehicle Number</td><td><input type="text" name=vehicleNumber autofocus></td></tr>
	<tr><td>Driver Name</td><td><input type="text" name=driverName ></td></tr>
	<tr><td>Driver Contact Number</td><td><input type="text" name=driverContactNumber></td></tr>
	
	<tr><td></td><td><input type="submit" value="Add Driver" style="margin: 8%; margin-left: 28%; background-color: #5cb85c; color:#fff; border-color: #4cae4c; padding:3%;"></td></tr>
	</table>
	</form>

</body>
</html>