<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<hl> Customer Sign Up Form</hl>
<div class="col-lg-12">
<div class="row">
<spr:form modelAttribute="user" action="saveRegister" method="post">
<div class="col-lg-12">

<div class="form-group">
<label>Email</label>
<spr:input path="email" placeholder="Enter the email Id" class="form-control"/>
</div>

<div class="form-group">
<label>Name</label>
<spr:input path="name" placeholder="Enter the name" class="form-control"/>
</div>

<div class="form-group">
<label>Address</label>
<spr:input path="address" placeholder="Enter the Address" class="form-control"/>
</div>

<div class="form-group">
<label>Phone</label>
<spr:input path="phone" placeholder="Enter the phone number" class="form-control"/>
</div>
<div class="form-group">
<label>Password</label>
<spr:input type="password" path="password" placeholder="Enter the password" class="form-control"/>
</div>
<div class="form-group">
<label>Country</label>
<spr:input path="country" placeholder="Enter the country" class="form-control"/>
</div>

<button type="submit" class="btn btn-lg btn-info">Submit</button>
<button type="reset" class="btn btn-lg btn-info">Reset</button>
</div>

</spr:form>
</div>
</div>
</div>
</body>
</html>