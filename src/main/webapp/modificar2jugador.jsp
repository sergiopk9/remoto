<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="fifa.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/main.css" />
<title>Modificar Jugador</title>
<style>
</style>
</head>
<body class="is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<div id="header">
			<!-- Logo -->
			<h1>
				<a href="index.jsp" id="logo">FIFA23</a>
			</h1>
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.jsp">Inicio</a></li>
					<li><a href="#">Listados</a>
						<ul>
							<li><a href="ligas.jsp">FIFA 23 Ligas</a></li>
							<li><a href="equipos.jsp">FIFA 23 Equipos</a></li>
							<li><a href="jugadores.jsp">FIFA 23 Jugadores</a></li>
						</ul></li>
					<li><a href="#">Operaciones</a>
						<ul>
							<li><a href="#">Jugadores</a>
								<ul>
									<li><a href="altajugador.jsp">Alta Jugador</a></li>
									<li><a href="bajajugador.jsp">Baja Jugador</a></li>
									<li><a href="modificarjugador.jsp">Modificar Jugador</a></li>
								</ul></li>
							<li><a href="#">Equipos</a>
								<ul>
									<li><a href="#">Alta Equipo</a></li>
									<li><a href="#">Baja Equipo</a></li>
									<li><a href="#">Modificar Equipo</a></li>
								</ul></li>
							<li><a href="#">Ligas</a>
								<ul>
									<li><a href="#">Alta Liga</a></li>
									<li><a href="#">Baja Liga</a></li>
									<li><a href="#">Modificar Liga</a></li>
								</ul></li>
							<li><a href="#">Cartas</a>
								<ul>
									<li><a href="#">Alta Carta</a></li>
									<li><a href="#">Baja Carta</a></li>
									<li><a href="#">Modificar Carta</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#">Simulador</a>
						<ul>
							<li><a href="#">Construye tu Equipo</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
		<!-- Main -->
		<section class="wrapper style1" style="height: 500px;">
			<div class="container">
				<h1>Modificar Jugador</h1>
				<%
				BDController controladorBD = new BDController();
				String mensaje = "";
				if (request.getParameter("mensaje") != null) {
					mensaje = request.getParameter("mensaje");
				}
				// Obtener el código del jugador a modificar
				int codJugador = Integer.parseInt(request.getParameter("CodModificarJugador"));
				// Obtener el jugador a partir de su código
				Jugador jugador = controladorBD.dameJugador(codJugador);
				%>
				<form action="operaciones.jsp?tipo=modificarJugador" method="post">
					<input type="hidden" name="cod_jugador"
						value="<%=jugador.getCod_jugador()%>"> <label for="nombre">Nombre:</label>
					<input type="text" name="nombre" id="nombre"
						value="<%=jugador.getNombre()%>"> <label for="pierna">Pierna
						buena:</label> <input type="text" name="pierna" id="pierna"
						value="<%=jugador.getPierna()%>"> <label for="altura">Altura:</label>
					<input type="text" name="altura" id="altura"
						value="<%=jugador.getAltura()%>"> <label for="pais">País:</label>
					<input type="text" name="pais" id="pais"
						value="<%=jugador.getPais()%>"> <label for="cod_equipo">Código
						de equipo:</label> <input type="text" name="cod_equipo" id="cod_equipo"
						value="<%=jugador.getCod_equipo()%>">
					<!-- Aquí podrías agregar un campo para la imagen del jugador -->
					<input type="submit" value="Actualizar">
				</form>
				<%=mensaje%>
			</div>

		</section>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br>
		<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<section class="col-3 col-6-narrower col-12-mobilep">
						<h3>Listados</h3>
						<ul class="links">
							<li><a href="jugadores.asp">Listado de Jugadores</a></li>
							<li><a href="equipos.asp">Listado de Equipos</a></li>
							<li><a href="ligas.asp">Listado de Ligas</a></li>
						</ul>
					</section>
					<section class="col-3 col-6-narrower col-12-mobilep">
						<h3>Más Opciones</h3>
						<ul class="links">
							<li><a href="altaJugador.jsp">Alta Jugador</a></li>
							<li><a href="altaEquipo.jsp">Alta Equipo</a></li>
							<li><a href="altaLiga.jsp">Alta Liga</a></li>
							<li><a href="altaCarta.jsp">Alta Carta</a></li>
							<li><a href="modifiJugador.jsp">Modificar Jugador</a></li>
							<li><a href="modifiEquipo.jsp">Modificar Equipo</a></li>
							<li><a href="modifiLiga.jsp">Modificar Liga</a></li>
							<li><a href="modifiCarta.jsp">Modificar Carta</a></li>
						</ul>
					</section>
					<section class="col-6 col-12-narrower">
						<h3>Solicita Información</h3>
						<form>
							<div class="row gtr-50">
								<div class="col-6 col-12-mobilep">
									<input type="text" name="name" id="name" placeholder="Name" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="email" name="email" id="email" placeholder="Email" />
								</div>
								<div class="col-12">
									<textarea name="message" id="message" placeholder="Message"
										rows="5"></textarea>
								</div>
								<div class="col-12">
									<ul class="actions">
										<li><input type="submit" class="button alt"
											value="Enviar Email" /></li>
									</ul>
								</div>
							</div>
						</form>
					</section>
				</div>
			</div>
			<!-- Icons -->
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
				<li><a href="#" class="icon fa-linkedin"><span
						class="label">LinkedIn</span></a></li>
				<li><a href="#" class="icon fa-google-plus"><span
						class="label">Google+</span></a></li>
			</ul>
			<!-- Copyright -->
			<div class="copyright">
				<ul class="menu">
					<li>&copy; FIFA 23. Todos los derechos reservados</li>
					<li>Design: <a href="https://www.centronelson.org">Centro
							Nelson</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/index.js"></script>
	<script src="assets/js/dropdown.js"></script>
</body>
</html>
