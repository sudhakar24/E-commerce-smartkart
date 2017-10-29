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
<jsp:include page="header.jsp"></jsp:include>
<body>

<div id="container" style=width:100%;float:left;margin-top:50px;margin-bottom:50px; align="center" >

<form action="AddCategory" method="post">
<table>
	
	<tr>
		<h1 align="center">Category Module</h1>
	</tr>
	
	<tr>
		<td>Category ID</td>
		<td><input name="catId"/></td>
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
		<td>
			<button type="submit" class="submitbtn">Insert</button>
			<button type="reset" class="erasebtn">Erase</button>
	</td>
	</tr>

</table>

</form>
</div>
<div id="container" style=width:100%;float:left;margin-top:100px;margin-bottom:100px; align="center" >
<table>
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
	
	<a href="<c:url value="/deleteCategory/${category.catId}"/>">DELETE</a>
	<a href="<c:url value="/updateCategory/${category.catId}"/>">UPDATE</a>
	</td>
	</tr>

</c:forEach>
</table>
 </div>
 
  <div  style=width:100%;height:2px;margin-top:800px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>
 
</html>