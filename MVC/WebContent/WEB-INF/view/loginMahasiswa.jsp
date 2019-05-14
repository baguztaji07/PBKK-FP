<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
	
		<link href="<c:url value="/resources/css/loginMahasiswa.css"/>" rel="stylesheet">
</head>
<body>
	
    <form:form action="checkMahasiswa" method="POST" id="form-container" modelAttribute="Mahasiswa">
    		<div class="text-center">
    			 <h3>Login</h3>
    			 <h5 style="color:red"><c:out value="${error}"/></h5>
    		</div>
    		<div style="margin-bottom: 10px;">
    			<h5>NRP:</h5><form:input path="nrp" type="text" class="form-control" placeholder="Enter NRP"></form:input>
    		</div>
        	<h5>Password:</h5><form:input path="password" type="password" class="form-control" placeholder="Enter Password"></form:input>
        	<br>
        	<div class="text-center">
        		 <button id="submitvv" type="submit" class="btn btn-primary">Submit</button>
        	</div>

    </form:form>

</body>
</html>