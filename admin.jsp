<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="Css/login.css">

<meta charset="ISO-8859-1">
<title>ECShirt Admin</title>
</head>

<body>
	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center" class="margintop">
		<form id="form" action="admin" method="post">
			<input id="pin" type="password" name="pin" class="border" placeholder="Pin"><br><br>
			<input type="submit" class="button"><br><br>
		</form>
		
		<h3 style="color:red">
			<div id="error"></div>
		</h3>
		
	</div>
	
	<script src="Javascript/checkRegistrationAdmin.js">
		</script>
</body>
</html>