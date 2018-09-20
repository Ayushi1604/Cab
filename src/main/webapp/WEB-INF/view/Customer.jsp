<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer home page</title>

</head>
<body>
   <c:if test="${sessionScope.user == null}">
     <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
   
	<%@include file="navigation.jsp" %>
<br><br><br>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>