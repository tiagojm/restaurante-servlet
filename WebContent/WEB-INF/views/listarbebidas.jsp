<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todas as Bebidas</title>
</head>
<body>
	<h1>Todas as Bebidas</h1>
	<table width="20%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Águas</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'AGU'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
			<td style='font-weight:bold; font-size:110%;'>Sucos</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Água)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Leite)</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'SUC'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
	<table width="20%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Batidas com Vodka</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'BCV'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
	<table width="20%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Bebidas Quentes</td>
			<td style='font-weight:bold; font-size:110%;'>Preço</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'BDQ'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
			<td style='font-weight:bold; font-size:110%;'>Caipirinhas</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Pinga)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Vodka)</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'CPR'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
			<td style='font-weight:bold; font-size:110%;'>Vinhos</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Taça)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Garrafa)</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'VIN'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
	<table width="60%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Refrigerantes</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Lata)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (600ml)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (2 litros)</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'RFG'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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
	<table width="50%">
		<tr>
			<td style='font-weight:bold; font-size:110%;'>Cervejas</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Lata)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Long Neck)</td>
			<td style='font-weight:bold; font-size:110%;'>Preço (Garrafa)</td>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<c:if test="${bebida.codCategoria == 'CVJ'}">
					<td>${bebida.descricao }</td>
					<c:forEach var="preco" items="${bebida.precos }">
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