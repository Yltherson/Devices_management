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
<title>User Module</title>
</head>
<body>
	<%@ include file="/menu2.html" %>
		<div class="jumbotron">
		  <div class="container">
		  	<h1>USER MODULE!</h1>
			  <p></p>
			  <p><a class="btn btn-primary btn-lg" href="deviceAdd" role="button">Ajouter Materiel</a></p>
		  </div>
		</div>
		
		<div class="container">
				<div>
					<div class="list-group">
					  <a href="#" class="list-group-item active">
					    ACTION
					  </a>
					  <a href="allDevice" class="list-group-item"><button class="btn btn-success">Afficher La Liste des Materiels <span class="glyphicon glyphicon-plus"></span></button></a>
					</div>
				</div>
		</div>
		<%@ include file="/footer.html" %>
</body>
</html>