<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt storico</title>

<link rel="stylesheet" href="Css/carrello.css">
</head>
<body>

<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
		
	<c:forEach items="${lista}" var="lista">
		<div align="center">
		<img src="${lista.immagine}" onmouseout="this.src='${lista.immagine}'" onmouseover="this.src='${lista.immagine2}'"class="img2"><br>		
			<font size="5px">${lista.nome}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
			<font size="5px">${lista.prezzo}&euro;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
			<font size="5px">Quantità: ${lista.quantita};</font><br><br>
		</div>
	</c:forEach>

</body>
</html>