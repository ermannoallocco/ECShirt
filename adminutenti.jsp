<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Utenti</title>
    <link rel="stylesheet" href="Css/adminprodotti.css">
</head>
    <body>
    
	<div align="center" class="fontlogo">
			<a href="adminindex.jsp"><font color="white">ECShirt</font></a>
	</div>
        <div align="center">
            <table>
                <c:forEach items="${lista}" var="lista">
                    <tr>
                        <th>
                            Id
                        </th>
                        <th>
                            Nome
                        </th>
                        <th>
                            Cognome
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Password
                        </th>
                        <th>
                            Indirizzo
                        </th>
                        <th>
                            Elimina utente
                        </th>
                    </tr>
                    <tr>
                        <td>
                            ${lista.id}
                        </td>
                        <td>
                            ${lista.nome}
                        </td>
                        <td>
                            ${lista.cognome}
                        </td>
                        <td>
                            ${lista.email}
                        </td>
                        <td>
                            ${lista.password}
                        </td>
                        <td>
                            ${lista.indirizzo}
                        </td>
                        <td>
                            <form action="rimuoviutente" method="get">
                                <input type="hidden" value="${lista.id}" name="idCasella">
                                <input type="submit" value="elimina">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>