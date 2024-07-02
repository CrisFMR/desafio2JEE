<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

//Variables
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String email = request.getParameter("email");
String medioPago = request.getParameter("medioPago");
int nDias = Integer.parseInt(request.getParameter("dias"));
String fechaEntrada = request.getParameter("fechaEntrada");
int idHabitacion = Integer.parseInt(request.getParameter("idHabitacion"));

HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

habitacion = habitacionBusiness.getHabitacionbyID(habitacion);
int valorPagar = nDias * habitacion.getPrecio();
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<form method="post" action="procesa.jsp">
		<!-- Section Formulary Data -->
		<section class="py-4 ">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Detalle Solicitud Reserva Habitación: <strong><%=habitacion.getNombre()%></strong>
					</h1>
					<hr>
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
							<td><%=nombre%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellido%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=email%></td>
						</tr>
						<tr>
							<th scope="row">4</th>
							<td>Medio de Pago</td>
							<td><%=medioPago%></td>
						</tr>
						<tr>
							<th scope="row">5</th>
							<td>Dias de Reserva</td>
							<td><%=nDias%></td>
						</tr>
						<tr>
							<th scope="row">6</th>
							<td>Fecha de Entrada</td>
							<td><%=fechaEntrada%></td>
						</tr>
						<tr>
							<th scope="row">7</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- Buttons Nav -->
			<section class="container d-flex justify-content-center">
			<div class="colum pt-4 pb-4 text-center ">
				<div class="col-12">
					<a href="Sucess.jsp" class="btn btn-secondary px-5 py-2">Reservar</a>
					</div>
			<div class="row pt-4 pb-4 text-center">
				<div class="col-12">
					<a href="index.jsp" class="btn btn-secondary px-5 py-2">Volver</a>	
				</div>
		</section>
		<br /> <br />
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>
