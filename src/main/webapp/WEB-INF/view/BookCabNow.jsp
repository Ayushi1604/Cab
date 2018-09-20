<%@ page import="com.example.CabBooking.Cab.Bean.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<title>Book Vehicle Now</title>
</head>
<body>
<c:if test="${user == null}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
<%@include file="navigation.jsp" %>
<br><br><br>



<div class="about-bottom">
		<div class="w3l_about_bottom_right two">
			<h2 class="tittle"><img src="/images/cab.png" alt=""></h2>
			<div class="book-form">
<div class="container">
<form action="search" METHOD=POST>
<%
ArrayList<ArrayList<String>> sourceDestination = (ArrayList<ArrayList<String>>)request.getAttribute("sourceDestination");
ArrayList<String> sources =  sourceDestination.get(0);
ArrayList<String> destinations =  sourceDestination.get(1);
%>
<table align="center">
<tr><td>Source</td>
<td><select name="source">
<%	for (Iterator iterator=sources.iterator(); iterator.hasNext();){
	String temp=(String)iterator.next();
	%>

			<option value=<%=temp %>><%=temp %></option>

<%	}
%></select>
</td>
</tr>
<tr><td>Destination</td>
<td><select name="destination">
	<%	for (Iterator iterator=destinations.iterator(); iterator.hasNext();){
	String temp=(String)iterator.next();
	%>

			<option value=<%=temp %>><%=temp %></option>

<%	}%></select>
</td>
</tr>
<tr><td>Vehicle Name</td><td><input type="text" name=vehicleName></td></tr>
<tr><td>Vehicle Type</td><td><input type="text" name=vehicleType></td></tr>
<tr><td></td><td><input type="submit" value="Search"></td></tr>
</table>
</form>
</div>
</div>
</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>