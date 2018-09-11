<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Book Now</title>
  <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
  </head>
  <body>
   <c:if test="${user == null}">
       <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
   <div style="text-align:center; padding:5px;background-color: Teal;">
   <h1 align="center">Welcome</h1>
   <h2 align="center">All Vehicles details</h2>
   </div>
   <br>
   <div class="container">
     <table class="table table-striped">
     <caption>Choose from the List</caption>
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
</body>