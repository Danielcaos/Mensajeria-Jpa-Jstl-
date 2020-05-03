<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Sistema de Mensajeria</title>
</head>
<body>
	<h1>QUE DESEA HACER</h1>
	<br>
	<table>
	<thead>
	<tr>
	<th>
	<button id="l1" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('listar').style.display = 'block'; document.getElementById('l1').style.display = 'none'; document.getElementById('l2').style.display = 'block';">Listar Mensajes</button>
	<button id="l2" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('listar').style.display = 'none'; document.getElementById('l2').style.display = 'none'; document.getElementById('l1').style.display = 'block';" style="display: none;">Listar Mensajes</button>
	</th>
	<th>
	<button id="i1" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('insertar').style.display = 'block'; document.getElementById('i1').style.display = 'none'; document.getElementById('i2').style.display = 'block';">Insertar Mensajes</button>
	<button id="i2" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('insertar').style.display = 'none'; document.getElementById('i2').style.display = 'none'; document.getElementById('i1').style.display = 'block';" style="display: none;">Insertar Mensajes</button>
	</th>
	<th>
	<button id="e1" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('eliminar').style.display = 'block'; document.getElementById('e1').style.display = 'none'; document.getElementById('e2').style.display = 'block';">Eliminar Mensajes</button>
	<button id="e2" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('eliminar').style.display = 'none'; document.getElementById('e2').style.display = 'none'; document.getElementById('e1').style.display = 'block';" style="display: none;">Eliminar Mensajes</button>
	</th>
	<th>
	<button id="a1" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('actualizar').style.display = 'block'; document.getElementById('a1').style.display = 'none'; document.getElementById('a2').style.display = 'block';">Actualizar Mensajes</button>
	<button id="a2" type="button" class="btn btn-primary btn-lg"
		onclick="document.getElementById('actualizar').style.display = 'none'; document.getElementById('a2').style.display = 'none'; document.getElementById('a1').style.display = 'block';" style="display: none;">Actualizar Mensajes</button>
	</th>
	</tr>
	</thead>
	</table>
	<br>
	<div id="listar" style="display: none;">
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
	</div>
	<div id="insertar" style="display: none;">
		<form class="contact_form" method="POST" action="MensajeController"
			runat="server">
			<div class="form-group">
				<ul class="list-group">
					<li class="list-group-item">
						<h2>Insertar Mensaje</h2> <span class="requiered_notification">*
							Datos requeridos</span>
					<li class="list-group-item"><label for="name">Nombre:</label>
						<input class="form-control" type="text" name="name" required /></li>
					<li class="list-group-item"><label for="email">Email:</label>
						<input class="form-control" type="text" name="email" required /></li>
					<li class="list-group-item"><label for="website">Web Site:</label>
						<input class="form-control" type="text" name="website" required /></li>
					<li class="list-group-item"><label for="message">Mensaje:</label>
						<input class="form-control" type="text" name="message" required /></li>
					<li class="list-group-item"><label for="usuario">Usuario:</label>
						<input class="form-control-plaintext" type="text" name="usuario" value="aa" readonly="readonly"/></li>
					<br>
				</ul>
				<button type="submit" class="btn btn-primary btn-lg"
					style="width: 150px" name="act" value="update">Insertar</button>
			</div>
		</form>
	</div>
	<div id="eliminar" style="display: none;">
		<form class="contact_form" method="POST" action="MensajeController"
			runat="server">
			<div class="form-group">
				<ul class="list-group">
					<li class="list-group-item">
						<h2>Actualizar Mensaje</h2> <span class="requiered_notification">Nombre del mensaje a eliminar</span>
					<li class="list-group-item"><label for="name2">Nombre:</label>
						<input class="form-control" type="text" name="name2" required /></li>
				</ul>
				<button id="s1" type="submit" class="btn btn-primary btn-lg"
					style="width: 150px;" name="act" value="delete">Eliminar</button>
			</div>
		</form>
	</div>
	<div id="actualizar" style="display: none;">
		<form class="contact_form" method="POST" action="MensajeController"
			runat="server">
			<div class="form-group">
				<ul class="list-group">
					<li class="list-group-item">
						<h2>Actualizar Mensaje</h2> <span class="requiered_notification">El nombre no puede cambiar</span>
					<li class="list-group-item"><label for="name1">Nombre:</label>
						<input class="form-control" type="text" name="name1" required /></li>
					<li class="list-group-item"><label for="email1">Email:</label>
						<input class="form-control" type="text" name="email1" required /></li>
					<li class="list-group-item"><label for="website1">Web Site:</label>
						<input class="form-control" type="text" name="website1" required /></li>
					<li class="list-group-item"><label for="message1">Mensaje:</label>
						<input class="form-control" type="text" name="message1" required /></li>
					<li class="list-group-item"><label for="usuario1">Usuario:</label>
						<input class="form-control-plaintext" type="text" name="usuario1" value="aa" readonly="readonly"/></li>
					<br>
				</ul>
				<button id="s1" type="submit" class="btn btn-primary btn-lg"
					style="width: 150px;" name="act" value="actualizar">Actualizar</button>
			</div>
		</form>
	</div>
</body>
</html>