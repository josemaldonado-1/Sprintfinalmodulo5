<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="cl.AsesoriasPrevencionRiesgos.modelo.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="icon" type="image/x-icon" href="./assets/img/favicon.png" />
	<link rel="stylesheet" href="./assets/css/styles.css">
<title>Editar Cliente</title>
      
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">APR</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Inicio">Inicio</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="CrearUsuario">Crear Usuario</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="ListarUsuarios">Listar Usuarios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CrearCapacitacion">Crear Capacitacion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ListarCapacitaciones">Listar Capacitacion</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contacto">Contacto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CerrarSesion">Cerrar Sesion</a>
                </li>
            </ul>
        </div>
    </nav>

	<br>
	<br>
	
    <div class="container">
        <h1>Editar Cliente</h1>
        <% Usuario usuario = (Usuario) request.getAttribute("usuario"); %>
        <form action="ActualizarUsuario" method="POST">
            <input type="hidden" name="id" value="<%= usuario.getId() %>">
            <input type="hidden" name="tipoUsuario" value="<%= usuario.getTipoUsuario() %>">
            <div class="form-group">
                <label for="nombres">Nombres:</label>
                <input type="text" class="form-control" name="nombres" value="<%= usuario.getNombres() %>">
            </div>
            <div class="form-group">
                <label for="apellidos">Apellidos:</label>
                <input type="text" class="form-control" name="apellidos" value="<%= usuario.getApellidos() %>">
            </div>
            <div class="form-group">
                <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                <input type="date" class="form-control" name="fechaNacimiento" value="<%= usuario.getFechaNacimiento() %>">
            </div>
            <div class="form-group">
                <label for="rut">Rut:</label>
                <input type="number" class="form-control" name="rut" value="<%= usuario.getRut() %>">
            </div>
            <div class="form-group">
                <label for="telefono">Telefono:</label>
                <input type="text" class="form-control" name="telefono" value="<%= usuario.getTelefono() %>">
            </div>
                        <div class="form-group">
                <label for="afp">Afp:</label>
                <input type="text" class="form-control" name="afp" value="<%= usuario.getAfp() %>">
            </div>
                        <div class="form-group">
                <label for="sistemaSalud">Sistema de Salud:</label>
                <input type="text" class="form-control" name="sistemaSalud" value="<%= usuario.getSistemaSalud() %>">
            </div>
                        <div class="form-group">
                <label for="direccion">Direccion:</label>
                <input type="text" class="form-control" name="direccion" value="<%= usuario.getDireccion() %>">
            </div>
                        <div class="form-group">
                <label for="comuna">Comuna:</label>
                <input type="text" class="form-control" name="comuna" value="<%= usuario.getComuna() %>">
            </div>
            
            <button type="submit" class="btn btn-primary">Actualizar</button>
        </form>
    </div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>