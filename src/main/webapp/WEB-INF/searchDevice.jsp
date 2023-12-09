<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.inventaire.pkg.SearchDev" %>
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
		  	<h1>Rechercher un materiel!</h1>
		  </div>
		</div>
		<section id="formBox">
				<form method="post" action="#">
					<br>
				    <div class="input-group">
				      <!-- <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
				      <input id="text" type="text" class="form-control" name="codeDevice" placeholder="Enter Product code" required>
				    </div>
				    <br>
				
				    <div class="input-group">
				    	<input id="btn-signin" type="submit" value="Rechercher" class="btn btn-primary btn-lg">
				    </div>
			  	</form>
			</section>
		<%
			String codeDev = request.getParameter("codeDevice");
			SearchDev sDev = new SearchDev();
			ResultSet result = sDev.search(codeDev);
		%>
	<div class="container-fluid">
		<h1 class="bg-success">Material info</h1>
		<br>
		<%
			while(result.next()){
		%>
			<form action="deviceSearch" method="post">
			<div id="formBox" class="container row">
				<div class="col-sm-12 col-md-6">
					<div class="panel panel-primary">
					  <div class="panel-heading">
					    <h3 class="panel-title">Information Technique</h3>
					  </div>
					  <div class="panel-body">
					  	<div class="input-group">
					  		<span class="input-group-addon alert-info"><i class="">Code</i></span>
				     		<input id="text" type="text" class="form-control" name="code" value="<%out.print(result.getString(2));%>" readonly>
			    		</div><br>
					    <div class="input-group">
					    	<span class="input-group-addon alert-info"><i class="">Type</i></span>
				     		<input id="text" type="text" class="form-control" name="type" value="<%out.print(result.getString(3));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Brand</i></span>
				     		<input id="text" type="text" class="form-control" name="brand" value="<%out.print(result.getString(4));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Model</i></span>
				     		<input id="text" type="text" class="form-control" name="model" value="<%out.print(result.getString(5));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Operating system</i></span>
				     		<input id="text" type="text" class="form-control" name="system" value="<%out.print(result.getString(6));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Storage</i></span>
				     		<input id="text" type="text" class="form-control" name="storage" value="<%out.print(result.getString(7));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Processor</i></span>
				     		<input id="text" type="text" class="form-control" name="processor" value="<%out.print(result.getString(8));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Devices</i></span>
				     		<input id="text" type="text" class="form-control" name="devices" value="<%out.print(result.getString(9));%>"readonly>
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
			    			<span class="input-group-addon alert-info"><i class="">Service</i></span>
				     		<input id="text" type="text" class="form-control" name="service" value="<%out.print(result.getString(10));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Location</i></span>
				     		<input id="text" type="text" class="form-control" name="location" value="<%out.print(result.getString(11));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">User</i></span>
				     		<input id="text" type="text" class="form-control" name="user" value="<%out.print(result.getString(12));%>" readonly>
			    		</div><br>
			    		<div class="input-group">
			    			<span class="input-group-addon alert-info"><i class="">Status</i></span>
				     		<input id="text" type="text" class="form-control" name="status" value="<%out.print(result.getString(13));%>" readonly>
			    		</div>
			    		<br><br>
					  </div>
					</div>
				</div>
			</div>	
		</form>
	<%
			}
	%>
	</div>
	
	<br><br>
	</div>
	<%@ include file="/footer.html" %>
</body>
</html>