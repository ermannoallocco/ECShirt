<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="Css/login.css">

<meta charset="ISO-8859-1">
<title>ECShirt Login</title>
</head>

<body>
	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center" class="margintop">
		<form id="form" action="login" method="post">
			<input id="email" type="text" name="email" class="border" placeholder="Email"><br><br>
			<input id="password" type="password" name="password" class="border" placeholder="Password"><br><br>
			<input type="submit" class="button"><br><br>
			
			Non sei registrato? 
			<a href="registrazione.jsp"><font color="white"> Registrati</font></a>
		</form>
	</div>
</body>
</html>