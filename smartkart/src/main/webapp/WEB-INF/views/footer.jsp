<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
footer {
   
    margin-top: 40px;
  	background-color:#BDBDBD;
 
    border-top-width: 1px;
}
.footer-links {
    padding: 0;
   color:black;
    width: 20%;
    float: left;
    vertical-align: top;
}
.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: 1px;
    margin-left: auto;
    
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-family: inherit;
    font-weight: 500;
    line-height: 1.1;
    color: black;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
a{
	color:black;
}

</style>
</head>

<body>
<footer>
<section class="container">

<div class="footer-links">
<h5>SmartKart</h5>

<li><a href="${pageContext.request.contextPath}/"/>Contact us</li>
<li><a href="${pageContext.request.contextPath}/"/>About us</li>
<li><a href="${pageContext.request.contextPath}/"/>Careers</li>

</div>
<div class="footer-links">
<h5>Keep in Touch</h5>

<li><a href="${pageContext.request.contextPath}/"/>facebook</li>
<li><a href="${pageContext.request.contextPath}/"/>twitter</li>
<li><a href="${pageContext.request.contextPath}/"/>Instagram</li>
<li><a href="${pageContext.request.contextPath}/"/> Email</li>

</div>
<div class="footer-links">
<h5>Help</h5>

<li><a href="${pageContext.request.contextPath}/"/>Payment</li>
<li><a href="${pageContext.request.contextPath}/"/>Shipping</li>
<li><a href="${pageContext.request.contextPath}/"/>Cancellation</li>
<li><a href="${pageContext.request.contextPath}/"/>FAQ</li>
</div>
</section>
</div>
</footer>
</body>
</html>