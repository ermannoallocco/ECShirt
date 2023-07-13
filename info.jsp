<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt info account</title>

<link rel="stylesheet" href="Css/info.css">
</head>
<body>

	<div align="center" class="fontlogo">
			<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>

	<div class="margin" align="center">
		<h3>Email:<font color="white"> ${utente.email} </font> ;<br><br>
		Nome: <font color="white"> ${utente.nome} </font> ;<br><br>
		Cognome: <font color="white"> ${utente.cognome} </font> ;<br><br>
		Indirizzo: <font color="white"> ${utente.indirizzo} </font> ;<br></h3>
	</div>
</body>
</html>