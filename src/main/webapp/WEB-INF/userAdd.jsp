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
<title>Administrator</title>
</head>
<body>
	<%@ include file="/menu.html" %>
	<div class="container">
		<div class="text-center">
			<h3 class="bg-warning"><c:out value="${message}"/></h3>
		</div>
		<form action="pkg" method="post">
			<div class="input-group">
		      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		      <input id="text" type="text" class="form-control" name="fullName" placeholder="Full Name" required>
		    </div>
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
		    <div class="form-group">
		    	<label for="role">USER ROLES</label>
				<select class="form-control" id="role" name="role" required>
					<option value="admin">Admin</option>
				    <option value="user">User</option>
				</select>
			</div>
			<br><br>
		
		    <div class="input-group">
		    	<input type="submit" value="ADD USER" class="btn btn-primary" required>
		    </div>
	  	</form>
	</div><br><br>
	<%@ include file="/footer.html" %>
</body>
</html>