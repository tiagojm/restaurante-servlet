<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Restaurante</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<!--<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/script.js"></script>-->
</head>
<body>
	<nav id="navigation">
		<!--  <span class="line"></span>-->
		<ul>
			<li><a href="executa?tarefa=Teste">HOME</a></li>
			<li class="helper"><a href="executa?tarefa=ListarPizzas">PIZZAS</a>
				
				<ul class="submenu esconder">
					<li><a href="#">TRADICIONAIS</a></li>
					<li><a href="#">COM MUSSARELA</a></li>
					<li><a href="#">COM CATUPIRY</a></li>
					<li><a href="#">ARTESANAIS</a></li>
					<li><a href="#">DOCES</a></li>
					<li><a href="#">ADICIONAIS</a></li>
				</ul>
			</li>	
			<li class="helper"><a href="executa?tarefa=ListarPasteis">PASTÉIS</a>
				
				<ul class="submenu esconder">
					<li><a href="#">PASTÉIS COMUNS</a></li>
					<li><a href="#">PASTÉIS DOCES</a></li>
				</ul>
			</li>
			<li><a href="executa?tarefa=ListarLanches">LANCHES</a></li>
			<li class="helper"><a href="executa?tarefa=ListarDemaisPratos">DEMAIS PRATOS</a>
			
				<ul class="submenu esconder">
					<li><a href="#">PETISCOS</a></li>
					<li><a href="#">PORÇÕES</a></li>
					<li><a href="#">TÁBUAS DE CARNE</a></li>
				</ul>
			</li>
			<li class="helper"><a href="executa?tarefa=ListarBebidas">BEBIDAS</a>
			
				<ul class="submenu esconder">
					<li><a href="#">ÁGUA</a></li>
					<li><a href="#">SUCOS</a></li>
					<li><a href="#">BATIDAS COM VODKA</a></li>
					<li><a href="#">BEBIDAS QUENTES</a></li>
					<li><a href="#">CAIPIRINHAS</a></li>
					<li><a href="#">VINHOS</a></li>
					<li><a href="#">REFRIGERANTES</a></li>
					<li><a href="#">CERVEJAS</a></li>
				</ul>
			</li>
		</ul>
	</nav>

	<h1>Seja Bem-Vindo ao nosso restaurante</h1>

	<c:if test="${not empty usuarioLogado}">
		Olá ${usuarioLogado.nome} aproveite 3% de desconto em todos as categorias!</br>
		</br>
		<form action="executa" method="POST">
			<input type="hidden" name="tarefa" value="Logout" /> <input
				type="submit" value="Deslogar" />
		</form>
	</c:if>


	<c:if test="${empty usuarioLogado}">
		<form action="login" method="POST">
			Email: <input type="email" name="email" /></br> </br> 
			Senha: <input type="password" name="senha" /> 
			<input type="submit" value="Login" /></br>
		</form>
		Realize Login ou <a href="cadastro">Cadastre-se</a>
	</c:if>
</body>
</html>