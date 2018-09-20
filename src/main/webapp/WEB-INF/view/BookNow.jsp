<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Book Now</title>
    <link href="${contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
  <c:if test="${user == null}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
    <%@include file="navigation.jsp" %>
    <br><br><br><br>
 
   <div class="container">
     <table class="table table-striped">
     <thead>
        <tr>
          <th> Name</th>
          <th> Type </th>
          <th></th>
        </tr>
        </thead>
        <tbody>
          <c:forEach items="${vehicles}" var = "vehicle">
             <tr>
               <td>${vehicle.vehicleName}</td>
               <td>${vehicle.vehicleType}</td>
               <td> <a class="btn btn-primary" href="/confirmBooking">Available</a> </td>
              </tr>
          </c:forEach>
        </tbody>
     </table>
   </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</body>