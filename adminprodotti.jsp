<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%if(request.getAttribute("lista") == null){
	response.sendRedirect("prodottiadmin");
	}%>

<html>
<head>
    <title>ECShirt admin prodotti</title>
    <link rel="stylesheet" href="Css/adminprodotti.css">
</head>
    <body>
    	<div align="center" class="fontlogo">
			<a href="adminindex.jsp"><font color="white">ECShirt</font></a>
		</div>
        <div align="center">
            <table cellpadding="10">
				<c:forEach items="${lista}" var="lista">
					<tr>
                    	<th>
                            Id
                        </th>
                        <th>
                            Nome
                        </th>
                        <th>
                            Prezzo
                        </th>
                        <th>
                            Immagine
                        </th>
                        <th>
                           Immagine2
                        </th>
                        <th>
                            Quantità
                        </th>
                        <th>
                            Modifica
                        </th>
                        
                    </tr>
                    
                    <tr>
                    	<td>
                            ${lista.id}
                        </td>
                        <td>
                            ${lista.nome_maglia}
                        </td>
                        <td>
                           ${lista.prezzo}
                        </td>
                        <td>
                            ${lista.immagine}
                        </td>
                        <td>
                           ${lista.immagine2}
                        </td>
                        <td>
                            ${lista.quantità}
                        </td>
                        <td>
                        	<form action="mostraprodotto" method="get">
                                <input type="hidden" value="${lista.id}" name="id">
                                <input type="submit" value="Modifica">
                            </form>
                       </td>
                    </tr>
               </c:forEach>
            </table>
        </div>
    </body>
</html>