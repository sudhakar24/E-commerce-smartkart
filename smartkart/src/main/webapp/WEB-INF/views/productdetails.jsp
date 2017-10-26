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
<title>Product Details</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product Name</td>
	<td>Category</td>
	<td>Supplier</td>
	<td>Price</td>
	<td>Stock</td>
	<td>Photo</td>
	<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productName}</td>
		<td>${product.catId}</td>
		<td>${product.supplierId}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>
		<a href="productDesc/${product.productId}">
		<img src="<c:url value="/resources/${product.productId}.jpg"/>" width=100px;height=100px;/>
		</a>
		</td>
		<td><a href="<c:url value="/deleteProduct/${product.productId}"/>">DELETE</a>
		<a href="<c:url value="/updateProduct/${product.productId}"/>">UPDATE</a>
		</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>