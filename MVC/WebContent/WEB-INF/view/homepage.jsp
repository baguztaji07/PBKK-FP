<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Spring MVC Home</title>
	
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/font_rametto.css" />" rel="stylesheet">
</head>
<body>
	<div class="center-items">
		<h1>My Homepage</h1>
		<br><br>
		<a href="<c:url value="/login" />">Dosen</a>
		<a href="<c:url value="/loginMhs" />">Mahasiswa</a>
	</div>
</body>
</html>