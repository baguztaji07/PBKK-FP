<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<title>Home</title>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
            <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
	<link href="<c:url value="/resources/css/homeMahasiswa.css"/>" rel="stylesheet">
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
          <img class="img-responsive img-rounded" style="width:100%;height:65px;"   src="${pageContext.request.contextPath}/resources/images/${user.nrp}.jpg" alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-name">
          	<c:out value="${user.nama}"/>
          </span>
          <span class="user-role"><c:out value="${user.nrp}"/></span>
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
            <a href="#"
               class ="openUserProfile" 
               data-toggle ="modal" 
               data-target ="#modalProfil"
               data-nama="${user.nama}"
			   data-nrp = "${user.nrp}"
			   data-email = "${user.email}"
			   data-img = "${user.foto }"
			   data-toggle ="modal"
			   data-target ="#modalProfil">
             <i class="far fa-user"></i>
              <span>Profile</span>
            </a>
          </li>
          <li>
            <a href="inboxMahasiswa">
              <i class="fas fa-inbox"></i>
              <span>Inbox</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fas fa-th-list"></i>
              <span>List Dosen</span>
            </a>
          </li>
          <li>
            <a href="/Tugas-MVC/signOut">
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
							<button 
								type="button" 
								class="btn btn-primary openProfileDosen"
							 	id="dosenProfil"
							 	data-nama="${entry.nama}"
							 	data-no = "${entry.noTelp}"
							 	data-nip = "${entry.nip}"
							 	data-dosen = "${entry}"
							 	data-email = "${entry.email}"
							 	data-img = "${entry.foto}"
							 	data-toggle ="modal"
							 	data-target ="#modalProfil"
							 	><i class="far fa-user"></i></button>
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
					    <form:input path="keterangan" class="form-control" id="nrpInput" placeholder="Masukan Keterangan" value="fa-hourglass-half"></form:input>
					  </div>		
					  <div class="form-group" hidden>
					    <label for="pesanInput">NRP</label>
					    <form:input path="mahasiswa" class="form-control" id="nrpInput" placeholder="Masukan NRP" value="${user}"></form:input>
					  </div>						
					  <div class="form-group">
					    <label>Nama</label>
					    <input type="text" class="form-control" id="namaInput" placeholder="Masukan Nama" disabled/>
					  </div>
					  <div class="form-group">
					    <form:label path="dosen">NIP</form:label>
					    <form:input path="dosen" type="text" class="form-control" id="dosenInput"  placeholder="Masukan NIP" hidden="true"/>
					    <input type="text" class="form-control" id="NIPInput"  placeholder="Masukan NIP" disabled/>					    
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
			  <!-- The Modal -->
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