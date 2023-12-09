<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.inventaire.pkg.ConnexionBD" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/style.css">
<title>Devices list</title>
</head>
<body>

	<%@ include file="/menu2.html" %>
		<%
			ConnexionBD con = new ConnexionBD();
			Connection connex = con.api();
					
			ResultSet result =  connex.createStatement().executeQuery("select * from products");
		%>
	<div class="container">
		<h1 class="bg-success">MATERIALS LIST</h1>
	</div>
	<div class="container table-responsive">
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
		</tr>
	<%
		}
	%>
		</table>
	</div>
	
	<br><br>
	
	<%@ include file="/footer.html" %>
</body>
</html>