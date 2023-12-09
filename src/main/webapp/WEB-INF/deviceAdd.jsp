<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/style.css">
<title>Add Device</title>
</head>
<body>
	<%@ include file="/menu2.html" %>
	<div class="container jumbotron">
		  <div class="container">
		  	<h1>Ajouter un materiel</h1>
		  </div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3 class="bg-warning"><c:out value="${message}"/></h3>
		</div>
		<form action="deviceAdd" method="post">
			<div class="container row">
				<div class="col-sm-12 col-md-6">
					<div class="panel panel-primary">
					  <div class="panel-heading">
					    <h3 class="panel-title">Information Technique</h3>
					  </div>
					  <div class="panel-body">
					  	<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="code" placeholder="Device Code" required>
			    		</div><br>
					    <div class="input-group">
				     		<input id="text" type="text" class="form-control" name="type" placeholder="Type" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="brand" placeholder="Brand" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="model" placeholder="Model" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="system" placeholder="Operating System" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="storage" placeholder="Storage" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="processor" placeholder="Processor" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="devices" placeholder="Devices" required>
			    		</div><br>
					  </div>
					</div>
				</div>
		  		
		  		<div class="col-sm-12 col-md-6">
					<div class="panel panel-primary">
					  <div class="panel-heading">
					    <h3 class="panel-title">Information Physique</h3>
					  </div>
					  <div class="panel-body">
					    <div class="input-group">
				     		<input id="text" type="text" class="form-control" name="service" placeholder="Service" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="location" placeholder="Location" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="user" placeholder="User" required>
			    		</div><br>
			    		<div class="input-group">
				     		<input id="text" type="text" class="form-control" name="status" placeholder="Status" required>
			    		</div>
			    		<br><br>
			    		<div class="input-group">
				     		<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="Add Device" required>
			    		</div>
					  </div>
					</div>
				</div>
			</div>	
		</form>
	</div>
		
	
	<%@ include file="/footer.html" %>
</body>
</html>