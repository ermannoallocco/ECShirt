<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt homepage</title>

<link rel="stylesheet" href="Css/utente.css">
</head>
<body>

	<div align="center" class="fontlogo">
			<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center">
		<h3>Benvenuto <font color="white">${utente.nome} ${utente.cognome} </font>!</h3>
	</div>
		
	<div class="align">
		<form action="storico" method="get">
			<input type="hidden" value="${utente.email}" name="emailCasella">
			<button class="borderradius pointer" type="submit">Storico</button>
		</form>
		
		<a href="info.jsp">
			<button class="borderradius margin pointer" type="submit">Informazioni</button>
		</a>
	</div>
	
	<div class="align">
		<a href="logout"><font color="white" size="4px">Log Out</font></a>
	</div>
	
</body>
</html>