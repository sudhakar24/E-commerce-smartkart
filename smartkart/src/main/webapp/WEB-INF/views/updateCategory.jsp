<%@ page language="java" contentType="text/html" import="com.model.Category"%>
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
<form action="UpdateCategory" methed="post">
<table align="center" cellsapcing="2">
	<tr>
		<td colspan="2">Category Module</td>
	</tr>
	<tr>
		<td>Category ID</td>
		<td><input type="text" name="catId"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName"/></td>
	</tr>
	<tr>
		<td>Category Description</td>
		<td><input type="text" name="catDesc"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Update Category"/></center>
			<center><button type="reset">Erase</button>
		</td>
	</tr>

</table>
</form>
<table align="center">
<tr bgcolor="lightblue">
	<td>Category Id</td>
	<td>Category Name</td>
	<td>Category Description</td>
	<td>operation</td>
</tr> 
<c:forEach items="${categoryList}" var="category">
	<tr bgcolor="cyan">
	<td>${category.catId}</td>
	<td>${category.catName}</td>
	<td>${category.catDesc}</td>
	<td>
	
	</td>
	</tr>

</c:forEach>
</table>
 
  
</body>
</html>