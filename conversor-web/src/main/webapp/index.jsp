<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	 <h1> Coversor de moedas </h1> <br>

	<form action="calcular.jsp">
        <label for="dolar">Cotação do dolar: </label>
        <input type="text" name="cotacao" id="cotacao"> <br> <br>
        <label for="reais">Valor em reias: </label>
        <input type="text" name="reais"  id="reais"> <br> <br>
        
		<input class="btn btn-primary" type="submit" value="Calcular">
    	
    </form>
</body>
</html>