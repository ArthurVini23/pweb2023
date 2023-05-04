<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

	<h1> Conversor de moedas </h1>
	
	<%
		String cotacao = request.getParameter("cotacao");
		String reais = request.getParameter("reais");
		
		if(cotacao.isEmpty() || reais.isEmpty()){
	%>
			<div class="alert alert-danger" role="alert">
  				Para que a conversão seja realizada são necessários valores válidos.
			</div>
	<% } else {

		Float vlrCotacao = Float.parseFloat(cotacao);
		Float vlrReais = Float.parseFloat(reais);
		
		Float calcular = vlrCotacao / vlrReais;
		
	
	%>	
		<p> O valor R$ <%=vlrReais %> equivale a $ <%=calcular %> na contação atual do dólar. </p>
	<% } %>
	
	
	<form action="index.jsp">
	
	<input class="btn btn-primary" type="submit" value="voltar">
	</form>
</body>
</html>