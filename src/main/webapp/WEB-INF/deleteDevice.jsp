<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/style.css">
<title>Administrator</title>
</head>
<body>
	<%@ include file="/menu.html" %>
		<div class="container">
			<div class="jumbotron">
			  	<div class="container">
			  		<h1>Supprimer un materiel!</h1>
		  	  	</div>
			</div>
			
			<div class="text-center">
				<h3 class="bg-warning"><c:out value="${message}"/></h3>
			</div>
		<section id="formBox">
				<form method="post" action="deviceDelete">
					<br>
				    <div class="input-group">
				      <!-- <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
				      <input id="text" type="text" class="form-control" name="codeProduct" placeholder="Enter Product code" required>
				    </div>
				    <br>
				
				    <div class="input-group">
				    	<input id="btn-signin" type="submit" value="SUPPRIMER" class="btn btn-danger btn-lg">
				    </div>
			  	</form>
			</section>
	</div>
	
	<br><br>
	<%@ include file="/footer.html" %>
</body>
</html>