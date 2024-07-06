<%@page import="java.util.List"%>
<%@page import="cl.praxis.model.Reserva"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.praxis.business.ReservaBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ReservaBusiness eventob = new ReservaBusiness();

List<Reserva> listaReservas = eventob.getReservas();
%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>

	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="row justify-content-center">
					<h1>
						Habitaciones Disponibles (<%=listaReservas.size()%>)
					</h1>
					<hr/ >
				</div>

				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					<%
					for (int x = 0; x < listaReservas.size(); x++) {
					%>

					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="<%=listaReservas.get(x).getImagen()%>"
								alt="<%=listaReservas.get(x).getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder"><%=listaReservas.get(x).getNombre()%></h5>
									<p><%=listaReservas.get(x).getDescripcion()%></p>
									CL$
									<%=listaReservas.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="html" name="id_reserva"
								value="<%=listaReservas.get(x).getId()%>" checked>  
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center"></div>
							</div>
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
		</section>

		<section>

			<div class="container px-4 px-lg-5 mt-5">

				<h1>Información de Reserva de Habitación</h1>
				<hr />

				<div class="row g-3">
					<div class="col-md-6">
						<label for="inputName4" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							value="Arturo Erasmo">
					</div>
					<div class="col-md-6">
						<label for="inputPassword4" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							value="Vidal Pardo">
					</div>

					<div class="col-md-2">
						<label for="inputEmail" class="form-label">Email</label> <input
							type="text" class="form-control" id="email" name="email"
							value="arturo.vidal@anfp.cl">
					</div>
					
						<div class="col-md-2">
						<label for="inputState" class="form-label">Cantidad de
							Dias</label> <select id="cantidad" name="cantidad" class="form-select">
							<%
							for (int x = 0; x < 30; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> Dia(s)
							</option>
							<%
							}
							%>
						</select>
					</div>
					
					<div class="col-md-3">
						<label for="inputState" class="form-label">Fecha de
							Entrada</label> <select id="fecha_entrada" name="fecha_entrada"
							class="form-select">
							<%
							for (int x = 0; x < 31; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> de Enero de 2023
							</option>
							<%
							}
							%>

						</select>
					</div>

					
					<div class="col-12">
						<hr />
						<button type="submit" class="btn btn-primary">Enviar
							Solicitud de Compra</button>
					</div>
				</div>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

</body>
</html>
