<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>
	<form method="post" action="procesa.jsp">
		<!-- Section Validation Page -->
		<section class="py-5">
			<div class="container px-4 px-lg-5 my-5 text-center">
				<div class="row justify-content-center">
				<img alt="logo" src="https://cdn.worldvectorlogo.com/logos/sheraton-hotels-1.svg" width="400" height="400">
					<h1>
						Su reserva fue agendada con exito!
					</h1>
					<br>
					<h6>Se ha enviado un correo con los datos de su reservación, se recuerda que los plazos de cancelación son máximo hasta una semana antes de la fecha acordada, para más detalles le invitamos a leer nuestras políticas.</h6>
					<div class="row pt-4 pb-1 text-center d-flex">
				<div class="col-12">
					<a href="index.jsp" class="btn btn-secondary px-5">Volver</a>	
				</div>
				</div>
			</div>
		</section>
	</form>
	<%@include file="assets/html/footer.jsp"%>
</body>
</html>
