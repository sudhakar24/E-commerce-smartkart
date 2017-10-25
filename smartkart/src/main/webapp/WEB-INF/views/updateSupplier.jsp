<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE> 
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>


<body>
<jsp:include page="header.jsp"></jsp:include>
<form:form action="../UpdateSupplier" modelAttribute="supplier" method="post">
<table align="center" cellsapcing="2">
	<tr>
		<td colspan="2">Supplier Module</td>
	</tr>
	<tr>
		<td>Supplier ID</td>
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><form:input path="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Description</td>
		<td><form:input path="supplierDes"/></td>
	</tr>
	<tr>
		<td>Supplier Email</td>
		<td><form:input path="supplierEmail"/></td>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Update Supplier"/></center>
			<center><button type="reset">Erase</button>
		</td>
	</tr>

</table>
</form:form>
<table align="center">
<tr bgcolor="lightblue">
	<td>Supplier Id</td>
	<td>Supplier Name</td>
	<td>Supplier Description</td>
	<td>Supplier Email</td>
	
</tr> 
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="cyan">
	<td>${supplier.supplierId}</td>
	<td>${supplier.supplierName}</td>
	<td>${supplier.supplierDes}</td>
	<td>${supplier.supplierEmail}</td>
	</tr>

</c:forEach>
</table>
 
  
</body>
</html>