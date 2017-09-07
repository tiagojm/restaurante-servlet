<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todos os Pastéis</title>
</head>
<body>
	<h1>Todos os Pastéis</h1>
	<table width="25%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Pastéis Comuns</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="pastel" items="${pasteis }">
			<tr>
				<c:if test="${pastel.codCategoria == 'PAS'}">
					<td>${pastel.descricao }</td>
					<c:forEach var="preco" items="${pastel.precos }">
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
			<td style='font-weight:bold; font-size:110%;'>Pastéis Doces</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="pastel" items="${pasteis }">
			<tr>
				<c:if test="${pastel.codCategoria == 'PSD'}">
					<td>${pastel.descricao }</td>
					<c:forEach var="preco" items="${pastel.precos }">
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