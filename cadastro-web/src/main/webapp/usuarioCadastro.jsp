<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title> Cadastro de Usúario </title>
  </head>
<body>

	<%
	String nome = request.getParameter("nome");
	if(nome == null){
		nome = "";
	}

	
	String email = request.getParameter("email");
	if(email == null){
		email = "";
	}
	%>

	<div class="container-fluid">
  		<h1> Cadastro de Usuario</h1>
	
		<form method="post" action="cadastroUsuario">
			<label for="nome">Nome:</label> <br>
        	<input type="text" name="nome" value="${param.nome}" id="nome"> <br>
        
        	<label for="email">E-mail:</label> <br>
        	<input type="text" name="email" value="${para.email}" id="email"> <br>
        
        	<label for="senha1">Senha:</label> <br>
        	<input type="password" name="senha1" id="senha1"> <br>
        
        	<label for="senha2">Confirmar Senha:</label> <br>
        	<input type="password" name="senha2" id="senha2"> <br><br>
        
        	<input type="submit" value="Salvar" class="btn btn-secundary">
        	
        	<a class="btn btn-primary" href="cadastroUsuario" role="button">Listar Usuarios</a>
     		<a class="btn btn-primary" href="index.html" role="button">Voltar</a>
    	</form>
    
    <c:if test="${not empty param.nome}">
    	<hr>
    		<div class="alert alert-danger" role="alert">
  				${param.nome } <span>, As senhas informadas não são iguais</span>
			</div>
    </c:if>
   
	</div>
	
	
</body>
</html>