<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todas as Pizzas</title>
</head>
<body>
	<h1>Todas as pizzas:</h1>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Tradicionais</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZT'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
	</br>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Com Mussarela</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZM'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
	</br>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Com Catupiry</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZC'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
	</br>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Artesanais</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZA'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
	</br>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Doces</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZD'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
	</br>
	<table width="40%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pizzas Adicionais</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Média</td>
			<td style='font-weight:bold; font-size:110%;'>Preço Grande</td>
		</tr>
		<c:forEach var="pizza" items="${pizzas }">
			<tr>
				<c:if test="${pizza.codCategoria == 'PZS'}">
					<td>${pizza.descricao }</td>
					<c:forEach var="preco" items="${pizza.precos }">
						<c:choose>
							<c:when test="${preco == 0 }">
								<td>--</td>
							</c:when>
							<c:otherwise>
								<c:if test="${not empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
								</c:if>
								<c:if test="${empty usuarioLogado}">
									<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
</body>
</html>