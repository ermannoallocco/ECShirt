<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Css/index.css">
<link rel="stylesheet" href="Css/navbar.css">
<link rel="stylesheet" href="Css/search.css">
<link rel="stylesheet" href="Css/footer.css">
<meta charset="ISO-8859-1">

<title>ECShirt prodotti</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>


<body>
	<div class="navbar">
	
	<div align=center class="container">
				<form action="ricerca" class="search-bar">
					<input type="text" id="search" name="searchCasella" placeholder="Cerca">
						<button type="submit"><img src="img/search.png"></button>
				</form>
			</div>
	
	<div class="fontlogo">
				<a href="index.jsp"><font color="#39cccc">ECShirt</font></a>
			</div>

		
		<%if(session.getAttribute("utente") == null) { %>
			<div class="login">
					<a href="login.jsp"><font color="#39cccc">Log In</font></a>
			</div>
		<% } else { %>
			<div class="login">
					<a href="utente.jsp"><font color="#39cccc">Account</font></a>
			</div>
		<% } %>
		
		<%if(session.getAttribute("utente") != null) { %>
		<div class="carrello">
			<a href="carrello.jsp"><font color="#39cccc">Carrello</font></a>
		</div>
		<% } else { %>
			<div class="invisibile">
				<a href="login.jsp"><font color="#39cccc">Carrello</font></a>
			</div>
		<% } %>
	</div>


	<div class="categorieposizione4">
		<c:forEach items="${lista}" var="lista">
			<div class="padding">
				<form action="dettagliprodotto" method="get">
				<input type="hidden" value="${lista.id}" name="idCasella">
					<div><input class="imgLink img2" type="image" src="${lista.immagine}" onmouseout="this.src='${lista.immagine}'" onmouseover="this.src='${lista.immagine2}'"></div>
				</form>
				<div class="center">
					<div align=left><font color="black"> ${lista.nome_maglia}:</font> ${lista.prezzo}&euro;;</div>
				</div>
			</div>
		</c:forEach>
	</div>


	<div class="footer footerTextSize">
            ECShirt<br>
            Copyright © 2022 ECShirt, Inc.<br>
            <a style="color: black"><i class="fa-brands fa-instagram"></i></a>
            <a style="color: black"><i class="fa-regular fa-envelope"></i></a>
            <a style="color: black"><i class="fa-brands fa-facebook"></i></a>
    </div>

</body>
</html>