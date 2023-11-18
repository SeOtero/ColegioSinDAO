<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<%@ include file="/jsp/head.jsp" %>
</head>
<body onload="startTime()">


	<div class="container-lg bg-primary-subtle">
		<%@ include file="/jsp/menu.jsp" %>
		
		<h1 class="text-center text-primary bg-secondary-subtle p-1 m-1">Mantenimiento de Alumnos</h1>
		<form>
			<div class="m-2 p-2">

				<!-- control Nombre  -->
				<div class="mb-3 row">
					<label for="nombre" class="col-sm-2 col-form-label text-primary">Nombre</label>
					<div class="col-sm-10">
						<input type="text" class="form-control text-primary" name="nombre"
							id="nombre" value="" required minlength="3" maxlength="20">
					</div>
				</div>

				<!-- control Apellido  -->
				<div class="mb-3 row">
					<label for="apellido" class="col-sm-2 col-form-label text-primary">Apellido</label>
					<div class="col-sm-10">
						<input type="text" class="form-control text-primary"
							name="apellido" id="apellido" value="" required minlength="3"
							maxlength="20">
					</div>
				</div>
				
				<!-- control Edad  -->
				<div class="mb-3 row">
					<label for="edad" class="col-sm-2 col-form-label text-primary">Edad</label>
					<div class="col-sm-10">
						<input type="text" class="form-control text-primary"
							name="edad" id="edad" value="" required minlength="2" 
							maxlength="20">
					</div>
				</div>
				
				<!-- control select curso  -->
				<div class="mb-3 row">
					<label for="idCurso" class="col-sm-2 col-form-label text-primary">IdCurso</label>
					<div class="col-sm-10">
						<select class="form-select text-primary"
							aria-label="Default select example" name="idCurso" id="idCurso" value="">
							<option value="0" selected>Seleccione el curso</option>
							<%@ include file="/jsp/idSelector.jsp" %>'>
							
						</select>
					</div>
				</div>
				
				<!-- botones -->
				<div class="mb-3 row">
					<button type="reset" class="btn btn-danger col-sm-4 m-2">Borrar</button>
					<button type="submit" class="btn btn-success col-sm-4 m-2">Guardar</button>
				</div>

				<!-- control información  -->
				<div class="mb-3 row">
					<label for="informacion"
						class="col-sm-2 col-form-label text-primary">Información</label>
					<div class="col-sm-10">
						<input type="text" readonly class="form-control text-primary"
							id="informacion"
							value='<%@ include file="/jsp/alumnosInsert.jsp" %>'>
					</div>
				</div>

			</div>
		</form>

		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Nombre</th>
						<th scope="col">Apellido</th>
						<th scope="col">Edad</th>
						<th scope="col">IdCurso</th>
					</tr>
				</thead>
				<tbody>
					<%@ include file="/jsp/alumnosTable.jsp" %>
				</tbody>
			</table>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>