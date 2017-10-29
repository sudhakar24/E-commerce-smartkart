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
<form:form action="../UpdateCategory" modelAttribute="category" method="post">
<table align="center" cellsapcing="2">
	<tr>
		<td colspan="2">Category Module</td>
	</tr>
	<tr>
		<td>Category ID</td>
		<td><form:input path="catId"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
		<td>Category Description</td>
		<td><form:input path="catDesc"/></td>
	</tr>
		<td colspan="2">
			<center><input type="submit" value="Update Category"/></center>
			<center><button type="reset">Erase</button>
		</td>
	</tr>

</table>
</form:form>
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
	</tr>

</c:forEach>
</table>
 <div  style=width:100%;height:2px;margin-top:400px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>