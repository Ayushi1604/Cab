<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.example.CabBooking.Cab.Bean.*" %>
<%@ page import="java.util.*" %>
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
      <br><br><br>

   <div class="container">
     <table class="table table-stripped">
     <thead>
       <tr>
         <th>index</th>
         <th>Date</th>
       </tr>
     </thead>
     <tbody>
     <c:forEach items="${history}" var="temp" varStatus="count">
       <tr>
       <td> ${count.index} </td>
       <td>${temp.date}</td>
      </tr> 
     </c:forEach>
     </tbody>
     </table>
     <a class="btn btn-primary" href="/CustomerHomePage">Home</a>
   </div>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
   </body>
   </html>