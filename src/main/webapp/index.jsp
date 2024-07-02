<%@page import="java.util.List"%>
<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
HabitacionBusiness habitacionBusiness = new HabitacionBusiness();
List<Habitacion> listaHabitacion = habitacionBusiness.getHabitaciones();
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<form method="post" action="procesa.jsp">
		<!--Availability & Cards-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center">
					<h1>
						Habitaciones Disponibles (<%=listaHabitacion.size()%>)
					</h1>
					<hr>
				</div>
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<%
					for (int x = 0; x < listaHabitacion.size(); x++) {
					%>
					<div class="col mb-5">
						<div class="card h-100 pb-4">
							<img class="card-img-top"
								src="<%=listaHabitacion.get(x).getImagen()%>"
								alt="<%=listaHabitacion.get(x).getNombre()%>"/>
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder"><%=listaHabitacion.get(x).getNombre()%></h5>

									<p><%=listaHabitacion.get(x).getDescripcion()%></p>
									CL$
									<%=listaHabitacion.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="html" name="idHabitacion"
								value="<%=listaHabitacion.get(x).getId()%>" checked>
							<input type="hidden" name="cantidadHabitaciones" value="<%=listaHabitacion.get(x).getHabitaciones()%>">
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>
		<!-- Form & Buttons-->
		<section>
			<div class="container px-4 px-lg-5 mt-5">
				<h1>Información de Reserva</h1>
				<hr />
				<!--First Name -->
				<div class="row g-3 justify-content-center">
					<div class="col-md-6">
						<label for="inputFirstName" class="formlabel">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							value="" placeholder="Nelson Alexis" autocomplete="off">
					</div>
					<!-- Last Name -->
					<div class="col-md-6">
						<label for="inputLastName" class="formlabel">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							value="" placeholder="Soto Suarez" autocomplete="off">
					</div>
					<!-- Email -->
					<div class="col-md-6">
						<label for="inputEmail" class="formlabel">Email</label> <input
							type="text" class="form-control" id="email" name="email"
							value="" placeholder="Example@example.com" autocomplete="off">
					</div>
					<!-- Payment Type -->
					<div class="col-md-2">
						<label for="inputPayment" class="formlabel">Medio de Pago</label> <select
							name="medioPago" id="medioPago" class=form-select>
							<option value="null">Elija una opción</option>
							<option value="PayPal">PayPal</option>
							<option value="WebPay">WebPay</option>
							<option value="Credito">Crédito</option>
							<option value="Debito">Débito</option>
							<option value="Efectivo">Efectivo</option>
						</select>
					</div>
					<!-- Reserved Days -->
					<div class="col-md-4">
						<label for="inputDays" class="formlabel">Días</label> <select
							id="dias" name="dias" class="form-select">
							<%
							for (int x = 0; x < 20; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> Día(s)
							</option>
							<%
							}
							%>
						</select>
					</div>
					<!-- Enter Day -->
					<div class="col-md-2">
						<label for="inputEnterDay" class="formlabel">Fecha de
							entrada</label> <select id="fechaEntrada" name="fechaEntrada" class="form-select">
							<option value="">Seleccione una fecha</option>
							<%
							
							String[] fechas = { "2024-07-15", "2024-07-16", "2024-07-17", "2024-07-18", "2024-07-19", "2024-07-20", 
									"2024-07-21", "2024-07-22", "2024-07-23", "2024-07-24", "2024-07-25", "2024-07-26", "2024-07-27",									
									"2024-07-28", "2024-07-29", "2024-07-30", "2024-08-01", "2024-08-02", "2024-08-03", "2024-08-04", 
									"2024-08-05", "2024-08-06", "2024-08-07", "2024-08-08", "2024-08-09", "2024-08-10", "2024-08-11", 
									"2024-08-12", "2024-08-13", "2024-08-14", "2024-08-15"};
							for (String fecha : fechas) {
							%>
							<option value="<%=fecha%>"><%=fecha%></option>
							<%
							}
							%>
						</select>
					</div>
					
					<div class="col-12 d-flex justify-content-center">
						<hr>
						<!-- Send Button -->
						<button type="submit" class="btn btn-secondary px-2 py-3">Enviar
							Solicitud de Reserva</button>
					</div>
				</div>
			</div>
		</section>
		<br /> <br />
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>