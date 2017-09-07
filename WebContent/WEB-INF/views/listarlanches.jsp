<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todos os Lanches</title>
</head>
<body>
	<h1>Todos os Lanches</h1>
	<table width="25%">
		<tr>
			<td style='font-weight: bold; font-size: 110%;'>Lanches</td>
			<td style='font-weight: bold; font-size: 110%;'>Preço</td>
		</tr>
		<c:forEach var="lanche" items="${lanches }">
			<tr>
				<td>${lanche.descricao }</td>
				<c:forEach var="preco" items="${lanche.precos }">
					<c:if test="${not empty usuarioLogado}">
						<td><f:formatNumber type="currency" value="${preco - preco*0.03 }" minFractionDigits="2"/></td>
					</c:if>
					<c:if test="${empty usuarioLogado}">
						<td><f:formatNumber type="currency" value="${preco }" minFractionDigits="2"/></td>
					</c:if>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
	<hr style="height:1px; border:none; color:black; background-color:#9e9e9e; margin-top: 0px; margin-bottom: 0px;">
</body>
</html>