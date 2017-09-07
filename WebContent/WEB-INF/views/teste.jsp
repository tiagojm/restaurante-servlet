<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todas as Pizzas</title>
</head>
<body>
	<h1>Essa página é um teste do relacionamento N+1 com Tabelas Associativas</h1>
	<h2>Pizzas Tradicionais</h2>
		<c:forEach var="pizza" items="${pizzas }">
			<ul>
				<c:if test="${pizza.codCategoria == 'PZT'}">
					<td>Pizza: ${pizza.descricao }</td>
					<c:forEach var="ingrediente" items="${pizza.ingredientes }">
					<li>${ingrediente.descricao }</li>
					</c:forEach>
				</c:if>
			</ul>
		</c:forEach>
</body>
</html>