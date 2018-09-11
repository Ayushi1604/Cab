<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile </title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
   <c:if test="${sessionScope.user == null}">
     <c:redirect url="http://localhost:8200/"></c:redirect>
   </c:if>
  <div style="text-align:center; padding:5px;background-color: Teal;">
   <h1 align="center">Welcome</h1>
   <h2 align="center">Your Profile details are</h2>
 </div>
 
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

</body>