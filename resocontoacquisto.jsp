<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ECShirt resoconto</title>

<link rel="stylesheet" href="Css/carrello.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $.ajax({
                url     : 'stampatempo',
                method     : 'get',
                success    : function(resultText){
                    $('#dataCart').html(resultText);
                }
            });
        });
</script>

</head>
<body>

	<div align="center" class="fontlogo">
		<a href="index.jsp"><font color="white">ECShirt</font></a>
	</div>

	<div align="center">
		<font color="white"><h3 style="display:inline-block" id="dataCart"></h3></font>
	</div>

</body>
</html>