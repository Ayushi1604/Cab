<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create an account</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>
	<div class="container " ><br>
	<form:form action="registerPage" METHOD="POST" modelAttribute="loginBean" class="form-signin">
	<form:hidden path="loginid"/>
	  <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="email">
	    <div class="form-group">
	    <form:input path="email" type="email" class="form-control" placeholder="abc@gmail.com" required="required"/>
	    <form:errors path="email" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="password">
	   <div class="form-group">
	      <form:password path="password" class="form-control" placeholder="password"/>
	      <form:errors path="password" cssClass="text-warning"/>
	    </div>
	   </spring:bind>
	  
	  
	  <spring:bind path="userName">
	    <div class="form-group">
	      <form:input path="userName" type="text" class="form-control" placeholder="abc" required="required"/>
	      <form:errors path="userName" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userAddress">
	    <div class="form-group">
	      <form:input path="userAddress" type="text" class="form-control" placeholder="abc colony" required="required"/>
	      <form:errors path="userAddress" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userContactNumber">
	    <div class="form-group">
	      <form:input path="userContactNumber" type="text" class="form-control" placeholder="1234567890" required="required"/>
	      <form:errors path="userContactNumber" cssClass="text-warning"></form:errors>
	    </div>
	  </spring:bind>
	  
	  <spring:bind path="userType">
	    <div class="form-group">
	    <form:input path="userType" type="text" class="form-control" placeholder="abc" required="required"/>
	    <form:errors path="userType" cssClass="text-warning"></form:errors>
	   </div>
	  </spring:bind> 
	  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
	</form:form>
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>