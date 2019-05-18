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
          <img class="img-responsive img-rounded" style="width:100%;height:65px;" src="${pageContext.request.contextPath}/resources/images/${user.nip}.jpg"
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
		        <button style="margin-left:1.3rem" name="ketersediaan" type="submit" value="${user.nip}@ada" class="btn btn-primary" onclick="$( '#ketersediaan' ).submit();">Ada</button>bu
		    </c:when>    
		    <c:otherwise>
		        <button style="margin-left:1.3rem" name="ketersediaan" type="submit" value="${user.nip}@tidak ada" class="btn btn-primary" onclick="$( '#ketersediaan' ).submit();">Tidak Ada</button>
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
          <a href="#"
          class ="openProfileDosen" 
          data-toggle ="modal"
			 	data-target ="#modalProfil"
               data-nama="${user.nama}"
			   data-no = "${user.noTelp}"
			   data-nip = "${user.nip}"
			   data-dosen = "${user}"
			   data-email = "${user.email}"
			   data-img = "${user.foto}">
             <i class="far fa-user"></i>
              <span>Profile</span>
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
			
			<div class="modal fade" id="modalProfil">
			    <div class="modal-dialog modal-xl">
			      <div class="modal-content">
			      
			        <!-- Modal Header -->
			        <div class="modal-header">
			          <h4 class="modal-title" id="tittle">Loading..</h4>
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			        </div>
			        
			        <!-- Modal body -->
			        <div class="modal-body"style="height:80%;">
			        	<div style="text-align:center">
			        	   <img id="foto" style="width:40%;height:170px;" src="${pageContext.request.contextPath}/resources/images/1.jpg"
	            			alt="Foto Dosen">
			        	</div>
			        	<br>
			        	<div style="padding:10px 10px;">
			        		<div style="display:block;">
			        			<p id="nama">Loading..</p>
			        		</div>
							<div style="display:block;">
				        		<p id="NIPorNRP">Loading..</p>
				        	</div>
				        	<div style="display:block;">
				        		<p id="email">Loading..</p>
				        	</div>	
							<div style="display:block;">
				        		<p id="noTelp"></p>
				        	</div>			        	    
			        	</div>        		
			        </div>
			      </div>
			    </div>
			  </div>
		  </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>