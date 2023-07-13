<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt modifica prodotto</title>
<link rel="stylesheet" href="Css/adminprodotti.css">
</head>
<body>

		<div align="center" class="fontlogo">
			<a href="adminindex.jsp"><font color="white">ECShirt</font></a>
		</div>
		
        <div align="center">
		<form action="modificaprodotto" method="post">
            <table cellpadding="10">
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
                    </tr> 
                    <tr>
                    	<td>
                            <input type="hidden" name="id" value="${prodotto.id}"> ${prodotto.id}
                        </td>
                        <td>
                            <input type="text" name="nome_maglia" value="${prodotto.nome_maglia}">
                        </td>
                        <td>
                           <input type="text" name="prezzo" value="${prodotto.prezzo}">
                        </td>
                        <td>
                            <input type="text" name="immagine" value="${prodotto.immagine}">
                        </td>
                        <td>
                           <input type="text" name="immagine2" value="${prodotto.immagine2}">
                        </td>
                        <td>
                            <input type="text" name="quantita" value="${prodotto.quantità}">
                        </td>
                    </tr>
            </table>
        	<input type="submit" value="Modifica"><br><br>
        	</form>
        </div>
        
</body>
</html>