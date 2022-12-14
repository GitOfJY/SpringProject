<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

       
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SY SoftWare</title>
<tiles:insertAttribute name="asset"/>
<tiles:insertAttribute name="projectchart"/>
	
	<!-- 아이콘 -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<script src="https://kit.fontawesome.com/7a92732d0a.js" crossorigin="anonymous"></script>
	
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<tiles:insertAttribute name="header"/>
	<div class="container-fluid">
		<tiles:insertAttribute name="content"/>
	</div>
	</div>

	<tiles:insertAttribute name="footer"/>

	
</body>

</html>