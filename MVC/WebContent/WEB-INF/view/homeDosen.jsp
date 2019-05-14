<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
	<script src="<c:url value="/resources/js/homeMahasiswa.js" />"></script>
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
            <a href="/Tugas-MVC/">
              <i class="fas fa-inbox"></i>
              <span>Inbox</span>
            </a>
          </li>
          <li>
            <a href="/Tugas-MVC/">
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
			        <th scope="col">Nama</th>
			        <th scope="col">Pesan</th>
			        <th scope="col">Action</th>
			      </tr>
			    </thead>
			    <tbody>
			 	  <c:forEach var="entry" items="${pesans}">
			 	  <tr>
			        	<td><c:out value="${entry.id}"/></td>
				        <td><c:out value="${entry.pesan}"/></td>
						<td id="action">
							<button type="button" class="btn btn-primary" id="dosenProfil"><i class="far fa-user"></i></button>
						</td>		        
				  </tr>
			      </c:forEach>

			    </tbody>
			  </table>
			</div>
		  </div>
    </div>
</html>