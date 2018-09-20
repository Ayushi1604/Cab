<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<title>Login Page</title>
</head>
<body >
	
	<div class="container">
	<form action="login" METHOD="POST" class="form-signin">
	  <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
	      <h2 class="form-heading">Log in</h2><input type="text" name="email" class="form-control" placeholder="Email"
                   autofocus="true"/>
	      <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
	      <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${contextPath}/register">Create an account</a></h4>
	
	</div>
	</form>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>