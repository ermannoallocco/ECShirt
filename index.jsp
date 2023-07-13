<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet" href="Css/index.css">
	<link rel="stylesheet" href="Css/navbar.css">
	<link rel="stylesheet" href="Css/search.css">
	<link rel="stylesheet" href="Css/footer.css">
<title>ECShirt Homepage</title>

<!--CDN PER INSERIRE LE ICONE DI FONTAWESOME-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>


<body>
		<!--Inserimento navbar-->
		<div class="navbar">
		
		<!-- Barra di ricerca + img lente d'ingrandimento -->
			<div align=center class="container">
				<form action="ricerca" class="search-bar">
					<input type="text" id="search" name="searchCasella" placeholder="Cerca">
						<button type="submit"><img src="img/search.png"></button>
				</form>
			</div>

		<!--  Logo ECShirt -->
			<div class="fontlogo">
				<a href="index.jsp"><font color="#39cccc">ECShirt</font></a>
			</div>

		<!-- Carrello -->
		<%if(session.getAttribute("utente") != null) { %>
		<div class="carrello">
			<a href="carrello.jsp"><font color="#39cccc">Carrello</font></a>
		</div>
		<% } else { %>
			<div class="invisibile">
				<a href="login.jsp"><font color="#39cccc">Carrello</font></a>
			</div>
		<% } %>
	
		<!-- Scritta "Login/Account" -->
		<%if(session.getAttribute("utente") == null) { %>
			<div class="login">
					<a href="login.jsp"><font color="#39cccc">Log In</font></a>
			</div>
		<% } else { %>
			<div class="login">
					<a href="utente.jsp"><font color="#39cccc">Account</font></a>
			</div>
		<% } %>
			
			
		</div>
		
		
	<div>
		<div class="categorieposizione3">
		
			<div class="padding">
				<form action="dettagliprodotto" method="get">
				<input type="hidden" value="1" name="idCasella">
				<div><input class="imgLink img2" type="image" src="https://statics.pampling.com/imagenes/galerias/imagen_40704.jpg?1662128139" onmouseout="this.src='https://statics.pampling.com/imagenes/galerias/imagen_40704.jpg?1662128139'" onmouseover="this.src='https://statics.pampling.com/imagenes/galerias/imagen_40705.jpg?1662128139'" class="img2"></div>
				</form>
				<div class="center">
					<div align=left><font color="black">M01:</font> 10&euro;;</div>
				</div>
			</div>
			
			<div class="padding">
				<form action="dettagliprodotto" method="get">
				<input type="hidden" value="2" name="idCasella">
				<div><input class="imgLink img2" type="image" src="https://statics.pampling.com/imagenes/galerias/imagen_42882.jpg?1662128169" onmouseout="this.src='https://statics.pampling.com/imagenes/galerias/imagen_42882.jpg?1662128169'" onmouseover="this.src='https://statics.pampling.com/imagenes/galerias/imagen_42883.jpg?1662128169'" class="img2"></div>
				</form>
				<div class="center">
					<div align=left><font color="black">M02:</font> 20&euro;;</div>
				</div>
			</div>
			
			<div class="padding">
				<form action="dettagliprodotto" method="get">
				<input type="hidden" value="3" name="idCasella">
				<div><input class="imgLink img2" type="image" src="https://statics.pampling.com/imagenes/galerias/imagen_42892.jpg?1662128356" onmouseout="this.src='https://statics.pampling.com/imagenes/galerias/imagen_42892.jpg?1662128356'" onmouseover="this.src='https://statics.pampling.com/imagenes/galerias/imagen_42893.jpg?1662128356'" class="img2"></div>
				</form>
				<div class="center">
					<div align=left><font color="black">M03:</font> 14&euro;;</div>
				</div>
			</div>
			
		</div>
	</div>
	
		
	<!-- Prima fila di categorie -->
	<div  class="height">
		<div class="categorieposizione">
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=M"><img src="img/magliette.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=CN"><img src="img/canottiere.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=F"><img src="img/felpe.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=CP"><img src="img/cappellini.jpg" class="img zoom"></a></div>
			</div>
		</div>
		
	<!-- Seconda fila di categorie -->
		<div class="categorieposizione2">
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=CL"><img src="img/calze.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=S"><img src="img/scarpe.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=O"><img src="img/occhiali da sole.jpg" class="img zoom"></a></div>
			</div>
			
			<div class="padding">
				<div class="categorie"><a href="ricerca?searchCasella=Z"><img src="img/zaini.jpg" class="img zoom"></a></div>
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