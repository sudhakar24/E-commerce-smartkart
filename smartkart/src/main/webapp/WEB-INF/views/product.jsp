<%@ page language="java" contentType="text/html" import="com.model.Product"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE> 
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Smartkart</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="post">
<table align="center" cellsapcing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr> 
		<td>Product ID</td>
		<td><form:input path="productId"/></td> 
	</tr>
	<tr> 
		<td>Product Name</td>
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Description</td>
		<td><form:input path="productDes"/></td>
	</tr>
	<tr>
		<td>Product Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input path="price"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select path="catId">
		<form:option value="0" label="----select----"/>
		<form:options items="${categoryList}"/>
		</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td><form:input path="supplierId"/></td>
		<!--<td><form:select path="supplierId">
		<form:option value="0" label="---select---"/>
		<form:options items="${supplierList}"/>
		</form:select>
		</td>-->
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
	
</table>
</form:form>
</body>
</html>