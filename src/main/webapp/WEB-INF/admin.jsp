<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.inventaire.pkg.ConnexionBD" %>
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
<title>Management</title>
</head>
<body>
	<%
		ConnexionBD con = new ConnexionBD();
		Connection connex = con.api();
					
		ResultSet result =  connex.createStatement().executeQuery("select * from products");
		ResultSet result2 = connex.createStatement().executeQuery("select COUNT(*) from products");
	%>
	
	<%@ include file="/menu.html" %>
	<div class="container">
		<div class="jumbotron">
		  <div class="container">
		  	<h2>ADMINISTRATION MODULE!</h2>
			<a class="btn btn-primary btn-lg" href="pkg" role="button">Ajouter Utilisateur <span class="glyphicon glyphicon-user"></span></a>
		  </div>
		</div>
		
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-xs-12">
					<ul class="list-group">
					  <li class="list-group-item">
					    <span class="badge">
					    <% 
					    	while(result2.next()){
					    		out.print(result2.getInt(1)); 
					    	}
					   	%>
					    </span>
					    TOTAL MATERIAL
					  </li>
					</ul>
				</div>
				<div class="col-md-6 col-xs-12">
					<div class="list-group">
					  <a href="#" class="list-group-item active">
					    ACTION
					  </a>
					  <a href="deviceView" class="list-group-item"><button class="btn btn-warning">Modifier Materiel <span class="glyphicon glyphicon-pencil"></span></button></a>
					  <a href="deviceDelete" class="list-group-item"><button class="btn btn-danger">Supprimer Materiel <span class="glyphicon glyphicon-trash"></span></button></a>
					  <a href="deviceSearch" class="list-group-item"><button class="btn btn-info">Rechercher Materiel <span class="glyphicon glyphicon-search"></span></button></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<h1 class="bg-success">MATERIALS LIST</h1>
		</div>
		<div class="table-responsive">
			<table id="customers" class="table table-hover">
			  <tr class="row">
			  	<th>code</th>
			    <th>type</th>
			    <th>brand</th>
			    <th>model</th>
			    <th>system</th>
			    <th>storage</th>
			    <th>processor</th>
			    <th>device</th>
			    <th>service</th>
			    <th>location</th>
			    <th>user</th>
			    <th>status</th>
			  </tr>
		<%
			while(result.next()){
				
		%>
			<tr class="row">
				<td><%out.print(result.getString(2));%></td>
				<td><%out.print(result.getString(3));%></td>
				<td><%out.print(result.getString(4));%></td>
				<td><%out.print(result.getString(5));%></td>
				<td><%out.print(result.getString(6));%></td>
				<td><%out.print(result.getString(7));%></td>
				<td><%out.print(result.getString(8));%></td>
				<td><%out.print(result.getString(9));%></td>
				<td><%out.print(result.getString(10));%></td>
				<td><%out.print(result.getString(11));%></td>
				<td><%out.print(result.getString(12));%></td>
				<td><%out.print(result.getString(13));%></td>
			</tr>
		<%
			}
		%>
			</table>
		</div>
	</div><br><br>
	<%@ include file="/footer.html" %>
</body>
</html>