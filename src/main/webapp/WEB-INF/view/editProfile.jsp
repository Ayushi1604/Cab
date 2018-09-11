<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Edit Profile</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

   <c:if test="${sessionScope.user == null}">
     <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>

   <form:form method="post" modelAttribute="loginBean" class="form-signin">
     <form:hidden path="loginid"/>
     <form:hidden path="email"/>
     <form:hidden path="password"/>
     <h2 class="form-signin-heading">Edit your account</h2>
     <spring:bind path="userName">
	    <div class="form-group">
	      <form:input path="userName" type="text" class="form-control" placeholder="Name"/>
	      <form:errors path="userName" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userAddress">
	    <div class="form-group">
	      <form:input path="userAddress" type="text" class="form-control" placeholder="Address" />
	      <form:errors path="userAddress" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userContactNumber">
	    <div class="form-group">
	      <form:input path="userContactNumber" type="text" class="form-control" placeholder="Phone Number" />
	      <form:errors path="userContactNumber" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userType">
	    <div class="form-group">
	    <form:input path="userType" type="text" class="form-control" placeholder="abc" />
	    <form:errors path="userType" cssClass="text-warning"></form:errors>
	   </div>
	  </spring:bind> 
	  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
   </form:form>
</body>
</html>