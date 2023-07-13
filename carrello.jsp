<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Css/carrello.css">

<meta charset="ISO-8859-1">
<title>ECShirt carrello</title>
</head>
<body>
	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>
	
	<c:forEach items="${cart}" var="cart">
            <div align="center">
                <form action="dettagliprodotto" method="get">
                    <input type="hidden" value="${cart.id}" name="idCasella">
                    <input type="image" src="${cart.immagine}" onmouseout="this.src='${cart.immagine}'" onmouseover="this.src='${cart.immagine2}'"class="img2">
                </form>
                    
                    <div>
                        <font size="5px">${cart.nome_maglia}:</font>
                        <font size="5px">${cart.prezzo}&euro;</font>
                        <form action="modificaquantita">
                        	<font size="5px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantità: <input type="number" id="quantity" name="quantity" min="0" value="${cart.quantità}" class="q"></font>
                    		<input type="hidden" value="${cart.id}" name="idCasella">
                    		<input type="submit" value="Conferma">
                    	</form>
                    </div>
            </div>
        </c:forEach>
        
         <% if(session.getAttribute("cart") != null){%>
			            <c:forEach var="prodotto" items="${cart}">
			                <c:set var="totale" value="${prodotto.getPrezzo() * prodotto.getQuantità() + totale} "/>
			            </c:forEach>
			
			            <div  class="subinfo" align="center">
			                <h2 style="color: white">Totale: ${totale}&euro;</h2>
			            </div>
			
			            <div align="center">
			            	<form action="acquisto" method="get">
				                <input type="hidden" value="${utente}" name="utenteCasella">
				                <input type="hidden" value="${cart}" name="cartCasella">
				                <input type="hidden" value="${totale}" name="totale"> 
				                <button class="" type="submit">Acquista</button>
			            	</form>
			            </div>
        <% } %>
</body>
</html>