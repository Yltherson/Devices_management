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
		  	<h1>Modifier un materiel!</h1>
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
				    	<input id="btn-signin" type="submit" value="MODIFIER" class="btn btn-primary btn-lg">
				    </div>
			  	</form>
			</section>
		<%
					
			String codeDevice = request.getParameter("codeDevice");
			SearchDev sDev = new SearchDev();
			ResultSet result = sDev.search(codeDevice);
			
			
		%>
	<div class="container-fluid">
		<h1 class="bg-success">Material info</h1>
	<%
		while(result.next()){
			
	%>
		<br>
		<form action="deviceView" method="post">
		<div id="formBox" class="container row">
			<div class="col-sm-12 col-md-6">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Information Technique</h3>
				  </div>
				  <div class="panel-body">
				  	<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="code" placeholder="Device Code" value="<%out.print(result.getString(2));%>" readonly>
		    		</div><br>
				    <div class="input-group">
			     		<input id="text" type="text" class="form-control" name="type" placeholder="Type" value="<%out.print(result.getString(3));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="brand" placeholder="Brand" value="<%out.print(result.getString(4));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="model" placeholder="Model" value="<%out.print(result.getString(5));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="system" placeholder="Operating System" value="<%out.print(result.getString(6));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="storage" placeholder="Storage" value="<%out.print(result.getString(7));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="processor" placeholder="Processor" value="<%out.print(result.getString(8));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="devices" placeholder="Devices" value="<%out.print(result.getString(9));%>">
		    		</div><br>
				  </div>
				</div>
			</div>
	  		
	  		<div class="col-sm-12 col-md-6">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Information Physique</h3>
				  </div>
				  <div class="panel-body">
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="service" placeholder="Service" value="<%out.print(result.getString(10));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="location" placeholder="location" value="<%out.print(result.getString(11));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="user" placeholder="User" value="<%out.print(result.getString(12));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="status" placeholder="Status" value="<%out.print(result.getString(13));%>">
		    		</div>
		    		<br><br>
		    		<div class="input-group">
			     		<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="Edit Device">
		    		</div>
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