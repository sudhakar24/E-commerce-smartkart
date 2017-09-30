<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<%@ include file="header.jsp" %>
<body>
<div class="container">
<h2><i>Hello World!</i></h2>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
<li data-target="#myCarousel3" data-slide-to="2" class="active"></li>
<li data-target="#myCarousel4" data-slide-to="3" class="active"></li>
</ol>
<div class="carousel-inner">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/carouselimage1.jpg" style="width:100%;height:0.1%">
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/carouselimage2.jpg" style="width:100%;height:0.1%">
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/carouselimage3.jpg" style="width:100%;height:0.1%">
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/carouselimage4.jpg" style="width:100%;height:0.1%">
</div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>
