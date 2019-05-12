<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<title>Home Mahasiswa</title>
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
          <span class="user-name">Muhammad
            <strong>Taufiqulsa`di</strong>
          </span>
          <span class="user-role">5116100053</span>
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
  <!-- sidebar-wrapper  -->
  <main class="page-content">
    <div class="container-fluid">
			<div class="table-responsive">
			  <table class="table">
			    <thead>
			      <tr>
			        <th scope="col">NIP</th>
			        <th scope="col">Nama</th>
			        <th scope="col">Status</th>
			        <th scope="col">Action</th>
			      </tr>
			    </thead>
			    <tbody>
			 	  <c:forEach var="entry" items="${dosens}">
			 	  <tr>
			        	<td><c:out value="${entry.nip}"/></td>
				        <td><c:out value="${entry.nama}"/></td>
				        <td><c:out value="${entry.status}"/></td>
						<td id="action">
							<button type="button" class="btn btn-primary" id="dosenProfil"><i class="far fa-user"></i></button>
							<button type="button" class="btn btn-info sendMessage" data-nip="${entry.nip}" data-nama="${entry.nama}" data-toggle="modal" data-target="#modalMessage"><i class="fas fa-envelope"></i></button>
						</td>		        
				  </tr>
			      </c:forEach>

			    </tbody>
			  </table>
			</div>
			
			  <!-- The Modal -->
		  <div class="modal fade" id="modalMessage">
		    <div class="modal-dialog modal-xl">
		      <div class="modal-content">
		      
		        <!-- Modal Header -->
		        <div class="modal-header">
		          <h4 class="modal-title">Kirim Pesan</h4>
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		        </div>
		        
		        <!-- Modal body -->
		        <div class="modal-body" >
					<form:form action="messageSend" id="formMessage" method="POST" modelAttribute="Pesan">
					  <div class="form-group" hidden>
					    <label for="pesanInput">status</label>
					    <form:input path="keterangan" class="form-control" id="nrpInput" placeholder="Masukan Keterangan" value="0"></form:input>
					  </div>		
					  <div class="form-group" hidden>
					    <label for="pesanInput">NRP</label>
					    <form:input path="nrp" class="form-control" id="nrpInput" placeholder="Masukan NRP" value="05111640000116"></form:input>
					  </div>						
					  <div class="form-group">
					    <label>Nama</label>
					    <input type="text" class="form-control" id="namaInput" placeholder="Masukan Nama"/>
					  </div>
					  <div class="form-group">
					    <form:label path="nip">NIP</form:label>
					    <form:input path="nip" type="text" class="form-control" id="NIPInput"  placeholder="Masukan NIP"/>
					  </div>
					  <div class="form-group">
					    <form:label path="pesan" for="pesanInput">Pesan</form:label>
					    <form:textarea path="pesan" class="form-control" id="pesanInput" rows="3"></form:textarea>
					  </div>
					</form:form>
		        </div>
		        
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="submit" class="btn btn-primary" onclick="$( '#formMessage' ).submit();">Submit</button>
		        </div>
		        
		      </div>
		    </div>
		  </div>
    </div>

  </main>
  <!-- page-content" -->
</div>
<!-- page-wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    
</body>
</html>