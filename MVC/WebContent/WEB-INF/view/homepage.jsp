<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1">
   
    <title>Login Page</title>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
            <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
            <link href="<c:url value="/resources/css/homepage.css"/>" rel="stylesheet">
            <link href="<c:url value="/resources/css/homeMahasiswa.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/ketersediaan.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/homeTheme.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/homeMahasiswa.js" />"></script>
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
          </div>

          <div class="inner cover">
            <h1 class="cover-heading">Sistem Ketersediaan Dosen</h1>
            <p class="lead">
              <a href="/Tugas-MVC/login" class="btn btn-lg btn-secondary">Login Dosen</a>
            </p>
            <p class="lead">
              <a href="/Tugas-MVC/loginMhs" class="btn btn-lg btn-secondary">Login Mahasiswa</a>
            </p>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>by <a href="https://github.com/baguztaji07/PBKK-FP">Kok Kurangg</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    </body>
</html>
