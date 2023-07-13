<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt inserimento</title>
</head>
<body>
	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center" class="margintop">
		<form action="inserimento" method="post">
			<input type="text" name="nome_maglia" placeholder="Nome"><br><br>
			<input type="text" name="prezzo" placeholder="Prezzo"><br><br>
			<input type="text" name="quantita" placeholder="Quantità"><br><br>
			<input type="text" name="immagine" placeholder="Immagine"><br><br>
			<input type="text" name="immagine2" placeholder="Immagine2"><br><br>
			<input type="submit" class="button" value="Inserisci">
		</form>
	</div>
</body>
</html>