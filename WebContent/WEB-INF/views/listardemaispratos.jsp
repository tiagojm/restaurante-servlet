<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demais Pratos</title>
</head>
<body>
	<h1>Demais Pratos</h1>
	<table width="25%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Petiscos</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="prato" items="${pratos }">
			<tr>
				<c:if test="${prato.codCategoria == 'PTS'}">
					<td>${prato.descricao }</td>
					<c:forEach var="preco" items="${prato.precos }">
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
	<table width="25%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Porções</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="prato" items="${pratos }">
			<tr>
				<c:if test="${prato.codCategoria == 'PCS'}">
					<td>${prato.descricao }</td>
					<c:forEach var="preco" items="${prato.precos }">
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
	<table width="25%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Tábuas de Carnes</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="prato" items="${pratos }">
			<tr>
				<c:if test="${prato.codCategoria == 'TBS'}">
					<td>${prato.descricao }</td>
					<c:forEach var="preco" items="${prato.precos }">
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