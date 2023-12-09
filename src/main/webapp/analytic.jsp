<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.stat.pkg.Data" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DashBoard</title>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.eot">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.svg">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.ttf">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.woff">
<link rel="stylesheet" href="fonts/glyphicons-halflings-regular.woff2">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%@ include file="/menu.html" %>
	
	<%
		Data data = new Data();
		int done = data.status();
	%>
	
	<p id="data"><%out.print(done);%></p><br>
	
	<div id="myPlot" style="width:100%;max-width:700px"></div>
	<script>
		var dt = document.getElementById('data');
		alert(dt);
		//var dtt = ParseInt(dt);
		const xArray = ["En service", "en preparation", "defectuer"];
		const yArray = [2, 9, 4];
		
		const data = [{
		  x:xArray,
		  y:yArray,
		  type:"bar",
		  orientation:"v",
		  marker: {color:"rgba(0,0,255,0.6)"}
		}];
		
		const layout = {title:"World Wide Wine Production"};
		
		Plotly.newPlot("myPlot", data, layout);
	</script>
	<br>
	<br>
	<%@ include file="/footer.html" %>
</body>
</html>