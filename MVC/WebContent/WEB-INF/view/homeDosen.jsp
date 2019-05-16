<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<title>Home Dosen</title>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
            <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
	<link href="<c:url value="/resources/css/homeMahasiswa.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/ketersediaan.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/homeTheme.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/homeMahasiswa.js" />"></script>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
</head>
<body>
<div class="page-wrapper chiller-theme toggled">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
  <nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">Home</a>
        <div id="close-sidebar">
          
          <i class="fas fa-times"></i>
        </div>
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
            alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-name">
          <c:out value="${user.nama}"/>
          </span>
          <span class="user-role"><c:out value="${user.nip}"/></span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
        </div>
      </div>  
      	<form action="changeKetersediaan" id = "ketersediaan" method="GET" style="display:inline-block">
			<c:choose>
		    <c:when test="${user.status!='ada'}">
		        <button style="margin-left:2.5rem" name="ketersediaan" type="submit" value="${user.nip}@ada" class="btn btn-primary" onclick="$( '#ketersediaan' ).submit();">Ada</button>bu
		    </c:when>    
		    <c:otherwise>
		        <button style="margin-left:2.5rem" name="ketersediaan" type="submit" value="${user.nip}@tidak ada" class="btn btn-primary" onclick="$( '#ketersediaan' ).submit();">Tidak Ada</button>
		    </c:otherwise>
			</c:choose>
		</form>
      <!-- sidebar-header  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>Menu</span>
          </li>
          <li>
            <a href="#">
             <i class="far fa-user"></i>
              <span>Profile</span>
            </a>
          </li>
          <li>
            <a href="/Tugas-MVC/login">
              <i class="fa fa-power-off"></i>
              <span>Sign Out</span>
            </a>
          </li>
          
        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
  </nav>
  <main class="page-content">
    <div class="container-fluid">
			<div class="table-responsive">
			  <table class="table">
			    <thead>
			      <tr>
			      	<th scope="col">NRP</th>
			        <th scope="col">Nama</th>
			        <th scope="col">Pesan</th>
			        <th scope="col">Action</th>
			      </tr>
			    </thead>
			    <tbody>
			 	  <c:forEach var="entry" items="${pesans}">
			 	  <tr>
			 	  		<td><c:out value="${entry[5]}"/></td>
			        	<td><c:out value="${entry[6]}"/></td>
						<td style="width:50%"><c:out value="${entry[1]}"/></td>

				  		<td>
						<form action="changeStats" method="GET" style="display:inline-block">
							<input name="shehe" type="text" class="btn btn-success" value="${entry[0]}@accept@fa-check" hidden="true"/>
							<button type="submit" class="btn btn-success" ><i class="fas fa-check"></i></button>
						</form>
						<form action="changeStats" method="GET" style="display:inline-block">
							<input name="shehe" type="text" class="btn btn-danger" value="${entry[0]}@reject@fa-times" hidden="true"/>
							<button type="submit" class="btn btn-danger" ><i class="fas fa-times"></i></button>
						</form>
						</td>
						
				  </tr>
			      </c:forEach>

			    </tbody>
			  </table>
			</div>
		  </div>
    </div>
</html>