<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.module.Med" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head> 
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Pharmacy Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath()%>/list  "></a>
       </li>
        </ul>
        </div>
        </div>
        </nav>
        <h1 style="color:red" align="center">Pharmacy Management System</h1>
        <hr></hr><br>
        <br>
        <div class="container">
        <a href="<%= request.getContextPath()%>/addmedicine" class="btn btn-success">Add Medicine </a>
        <br><br>
        <table class="table table-striped">
        <thead>
        <th>ID</th>
        <th>MEDICINE NAME</th>
        <th>MEDICINE TYPE</th>
        <th>QUANTITIY</th>
        <th>PRICE</th>
        <th>EXPIRY DATE</th>
        <th>CURRENT DATE</th>
        <th>ACTIONS</th>
        </thead>
    			<tbody>
    				<a:forEach items="${display }"  var="m">
    				<tr>
    				<td><a:out value="${m.id }"></a:out></td>
    				<td><a:out value="${m.mname }"></a:out></td>
    				<td><a:out value="${m.mtype}"></a:out></td>
    				<td><a:out value="${m.quantity }"></a:out></td>
    				 <td><a:out value="${m.price }"></a:out></td>
    				 <td><a:out value="${m.expiry }"></a:out></td>
    				<td><a:out value="${m.current }"></a:out></td>
    				<td><a href="edit?id=<a:out value="${m.id }"></a:out>">Edit</a>&nbsp;&nbsp;<a href="delete?id=<a:out value="${m.id }"></a:out>">Delete</a>&nbsp;&nbsp;</td>
    				</tr>
    				</a:forEach>
    				 </tbody>
    				 	</table>
         					</div>
        
</body>
</html>