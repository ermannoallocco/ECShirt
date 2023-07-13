<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Css/index.css">
<link rel="stylesheet" href="Css/navbar.css">
<link rel="stylesheet" href="Css/search.css">
<link rel="stylesheet" href="Css/footer.css">
<link rel="stylesheet" href="Css/dettagliprodotto.css">
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
	
		<div class="fontlogo"><a href="index.jsp"><font color="#39cccc">ECShirt</font></a></div>

		<%if(session.getAttribute("utente") == null) { %>
			<div class="login"><a href="login.jsp"><font color="#39cccc">Log In</font></a></div>
		<% } else { %>
			<div class="login"><a href="utente.jsp"><font color="#39cccc">Account</font></a></div>
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


	<div class="centerdettagli">
	
		<div><img src="${prodotto.immagine}" onmouseout="this.src='${prodotto.immagine}'" onmouseover="this.src='${prodotto.immagine2}'" class="imgdettagli"></div>
			
		<div class="descrizione">
		
			<div class="nome">${prodotto.nome_maglia}</div><br>
			<div class="info">
				Marca: ECShirt;<br> 
				Prezzo: ${prodotto.prezzo}&euro; IVA INCLUSA;<br>
				Quantità: ${prodotto.quantità};<br><br>
				
				<%if(session.getAttribute("utente") != null) { %>
					<form action="carrello">
						Numero maglie da aggiungere: <input type="number" id="quantity" name="quantity" min="1" max="${prodotto.quantità}" value="1">
						<input type="hidden" name="idCasella" value="${prodotto.getId()}">
						<input type="submit" value="Aggiungi al carrello">
					</form>
				<%} else { %>
					Numero maglie da aggiungere: <input type="number" id="quantity" name="quantity" min="1" max="${prodotto.quantità}" value="1">
						<a href="login.jsp"><input type="submit" value="Aggiungi al carrello"></a>
				<%}%>
			</div>
		
		</div>
	
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