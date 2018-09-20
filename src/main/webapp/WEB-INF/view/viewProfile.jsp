<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile </title>
<link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:if test="${user == null}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
<%@include file="navigation.jsp" %>
<br><br><br>
 
 
 <div class="container"><br><br>
  <table class="table table-striped">  
   <tr>
     <th>Login Id</th><td>${customer.loginid}</td>
   </tr>  
   
     <tr> 
       <th>Email</th><td>${customer.email}</td>
     </tr>
     
       <tr> 
         <th>Name</th><td>${customer.userName}</td>
       </tr>
        
     <tr> 
        <th>User Type</th><td>${customer.userType}</td>
      </tr>
        
     <tr> 
        <th>Contact Number</th><td>${customer.userContactNumber}</td>
     </tr>   
        
     <tr>
       <th>Address</th><td>${customer.userAddress}</td>
    </tr>
    <tr>
      <td><a type="button" class="btn btn-success"href="editProfile?loginid=${customer.loginid}">Edit</a></td><td></td>
    </tr>
    
  </table>
</div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>