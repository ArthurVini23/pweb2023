<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1> Lista de Usuario </h1>
	
	<table border="1">
		<c:forEach var="Usuario" items="${lstUsuarios}" varStatus="id">
			<tr>
				<td>${Usuario.id}</td>
				<td>${Usuario.nome}</td>
				<td>${Usuario.email}</td>
			</tr>
		</c:forEach>
	</table>
	
	<a class="btn btn-primary" href="usuarioCadastro.jsp" role="button">Voltar</a>

</body>
</html>