<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="Css/login.css">

<meta charset="ISO-8859-1">
<title>ECShirt Registrazione</title>
</head>

<body>
	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center" class="margintop">
		<form id="form" action="registrazione" method="post">
			<input id="nome" type="text" name="nome" class="border" placeholder="Nome"><br><br>
			<input id="cognome" type="text" name="cognome" class="border" placeholder="Cognome"><br><br>
			<input id="email" type="text" name="email" class="border" placeholder="Email"><br><br>
			<input id="indirizzo" type="text" name="indirizzo" class="border" placeholder="Indirizzo"><br><br>
			<input id="password" type="password" name="password" class="border" placeholder="Password"><br><br>
			<input type="submit" class="button">
		</form>
		<h3 style="color:red">
			<div id="error"></div>
		</h3>
	</div>
	
	<script src="Javascript/checkRegistrationUser.js">
		</script>
</body>
</html>