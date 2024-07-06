<%@page import="cl.praxis.model.Reserva"%>
<%@page import="cl.praxis.business.ReservaBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

String nombreComprador = request.getParameter("nombre");
String apellidoComprador = request.getParameter("apellido");
String emailComprador = request.getParameter("email");
int cantidadDias = Integer.parseInt(request.getParameter("cantidad"));
int fechaEntrada = Integer.parseInt(request.getParameter("fecha_entrada"));
int idReserva = Integer.parseInt(request.getParameter("id_reserva"));

ReservaBusiness reservab = new ReservaBusiness();

Reserva reserva = new Reserva();
reserva.setId(idReserva);

reserva = reservab.getReservabyID(reserva);

int valorPagar = reservab.calculaValorCompra(reserva.getPrecio(), cantidadDias);
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
						Detalle Solictud Habitación: <strong><%=reserva.getNombre()%></strong>
					</h1>
					<hr/ >
				</div>
			</div>

			<div class="container px-4 px-lg-5 mt-5">

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombreComprador%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellidoComprador%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Dirección</td>
							<td><%=emailComprador%></td>
						</tr>

						<tr>
							<th scope="row">4</th>
							<td>Fecha de Entrada</td>
							<td><%=fechaEntrada%> de Enero de 2023</td>
						</tr>

						<tr>
							<th scope="row">5</th>
							<td>Cantidad Dias</td>
							<td><%=cantidadDias%></td>
						</tr>

						<tr>
							<th scope="row">6</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>

					</tbody>
				</table>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

</body>
</html>