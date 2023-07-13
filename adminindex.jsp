<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Css/adminindex.css">

<meta charset="ISO-8859-1">
<title>ECShirt index admin</title>
</head>


<body>

	<div align="center" class="fontlogo">
			<a href="adminindex.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<div align="center">
		<h3>Benvenuto ${admin.nome}!</h3>
	</div>
		
	<div class="align">
		<form action="prodottiadmin" method="get">
			<button class="borderradius" type="submit">Prodotti</button>
		</form>
		
		<form action="utentiadmin" method="get">
			<button class="borderradius margin" type="submit">Utenti</button>
		</form>
		
		<form action="admininserimento.jsp" method="get">
			<button class="borderradius" type="submit">Inserisci</button>
		</form>
	</div>
	
	<div class="align">
		<a href="adminlogout"><font color="white" size="4px">Log Out</font></a>
	</div>

</body>
</html>