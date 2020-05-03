<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Sistema de Mensajeria</title>
</head>
<body>
	<jsp:useBean id="mDao" class="dao.MensajeDao" scope="request" />
	<table class="table table-dark">
		<thead>
			<tr>
				<th scope="col">Nombre</th>
				<th scope="col">Email</th>
				<th scope="col">WebSite</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="mensaje" items="${ mDao.list() }">
			<tr>
				<td><c:out value="${ mensaje.name }" /></td>
				<td><c:out value="${ mensaje.email }" /></td>
				<td><c:out value="${ mensaje.website }" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>