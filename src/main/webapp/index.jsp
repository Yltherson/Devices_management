<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.eot">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.svg">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.ttf">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.woff">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.woff2">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/style.css">
<title>HOME</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="login">INVENTAIRE</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="login">Home</a></li>
			      <li><a href="#">ABOUT</a></li>
			      <li><a href="#">CONTACT</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			      <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
			      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			    </ul>
			</div>
		</nav>
		<div class="container">
		<img alt="Responsive image" src="asset/ban3.gif" class="img-responsive" >
	</div>
	</header>
	
	<br>
	<!-- signing form -->
	<div class="container">
		<div class="text-center alert alert-info">
			<p>Entrer vos informations de connexion svp !</p><br>
		</div>
		<div class="text-center">
			<h3 class="bg-danger"><c:out value="${message}"/></h3>
		</div>
		<!-- <div class="user text-center"><i class="glyphicon glyphicon-user"></i></div> -->
			<form method="post" action="login">
				<br>
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
			      <input id="email" type="email" class="form-control" name="email" placeholder="Email" required>
			    </div>
			    <br>
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			      <input id="password" type="password" class="form-control" name="password" placeholder="Password" required>
			    </div>
			    <br>
			
			    <div class="input-group">
			    	<input id="btn-signin" type="submit" value="SIGN IN" class="btn btn-primary btn-lg" onclick=myFunction();>
			    </div>
		  	</form>
		  	
		  	<br>
		  	<p id="js">
		  	</p>
	</div>
	<br><br>
	
	<!-- Footer -->
	<section id="footer">
		<div class="container">
			<div class="row text-center text-xs-center text-sm-left text-md-left">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Lien page</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="#"><i class="fa fa-angle-double-right"></i>Home</a></li>
						<li><a href="#"><i class="fa fa-angle-double-right"></i>About</a></li>
						<li><a href="#"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>image</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="#"><i class="fa fa-angle-double-right"></i><img alt="" src="asset/R.png" id="myimg"></a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<h5>Lien page</h5>
					<ul class="list-unstyled quick-links">
						<li><a href="index.html"><i class="fa fa-angle-double-right"></i>Login</a></li>
						<li><a href="index.html"><i class="fa fa-angle-double-right"></i>Disconnect</a></li>
						<li><a href="#" title="Design and developed by"><i class="fa fa-angle-double-right"></i>D@rkCode</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				<hr>
			</div>	
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p><a href="#">ITX-SOLUTION </a>Une societé de technologie qui est la pour vous servir</p>
					<p class="h6">© All right Reversed.<a class="text-green ml-2" href="https://www.sunlimetech.com" target="_blank">Yltherson</a></p>
				</div>
				<hr>
			</div>	
		</div>
	</section>
	<!-- ./Footer -->
	<script type="text/javascript" src="JavaScript/script.js"></script>
	
</body>
</html>