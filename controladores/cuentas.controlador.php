<?php

class ControladorCuentas{

	/*=============================================
	CREAR PROVEEDOR
	=============================================*/

	static public function ctrCrearProveedor(){

		if(isset($_POST["nuevoProveedor"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevoProveedor"])){

				$tabla = "proveedor";

				$datos = array("nombre"=>$_POST["nuevoProveedor"],
								"email"=>$_POST["nuevoEmail"],
								"telefono"=>$_POST["nuevoTelefono"]); 

				$respuesta = ModeloProveedor::mdlIngresarProveedor($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "El contacto ha sido guardado correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "proveedores";

									}
								})

					</script>';

				}



			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡El contacto no puede ir vacía o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "categorias";

							}
						})

			  	</script>';

			}

		}

	}

	/*=============================================
	MOSTRAR PROVEEDOR
	=============================================*/

	static public function ctrMostrarProveedor($item, $valor){

		$tabla = "proveedor";

		$respuesta = ModeloProveedor::mdlMostrarproveedor($tabla, $item, $valor);

		return $respuesta;
	
	}

	/*=============================================
	EDITAR PROVEEDOR
	=============================================*/

	static public function ctrEditarProveedor(){

		if(isset($_POST["editarProveedor"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editarProveedor"]) &&
			    preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["editarEmail"]) && 
			    preg_match('/^[()\-0-9 ]+$/', $_POST["editarTelefono"])){

				$tabla = "proveedor";

				$datos = array("id"=>$_POST["idProveedor"],
					           "nombre"=>$_POST["editarProveedor"],
					           "email"=>$_POST["editarEmail"],
					           "telefono"=>$_POST["editarTelefono"]
							   );

				$respuesta = ModeloProveedor:: mdlEditarProveedor($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "El contacto ha sido cambiada correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "proveedores";

									}
								})

					</script>';

				}


			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡El proveedor no puede ir vacía o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "categorias";

							}
						})

			  	</script>';

			}

		}

	}

	/*=============================================
	ELIMINAR PROVEEDOR
	=============================================*/

	static public function ctrBorrarProveedor(){

		if(isset($_GET["idProveedor"])){

			$tabla ="proveedor";
			$datos = $_GET["idProveedor"];

			$respuesta = ModeloProveedor::mdlEliminarProveedor($tabla, $datos);

			if($respuesta == "ok"){

				echo'<script>

				swal({
					  type: "success",
					  title: "El contacto ha sido borrado correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar",
					  closeOnConfirm: false
					  }).then(function(result){
								if (result.value) {

								window.location = "proveedores";

								}
							})

				</script>';

			}		

		}

	}

	static public function ctrCrearFactura(){

		if(isset($_POST["nuevoProveedorFactura"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevoProveedorFactura"])&&
				preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevoFolio"]) &&
				preg_match('/^[()\-0-9 ]+$/', $_POST["nuevaCantidad"])&&
				preg_match('/^[()\-0-9 ]+$/', $_POST["nuevoAbono"])&&
				preg_match('/^[()\-0-9 ]+$/', $_POST["nuevoSaldo"])){

				$tabla = "facturas";

				$datos = array("id_proveedor"=>$_POST["nuevoProveedorFactura"],
								"folio"=>$_POST["nuevoFolio"],
								"cantidad"=>$_POST["nuevaCantidad"],
							    "abono"=> $_POST["nuevoAbono"],
							    "saldo"=> $_POST["nuevoSaldo"]); 

				$respuesta = ModeloProveedor::mdlIngresarFactura($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "la factura se ha agregado corretamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "facturas";

									}
								})

					</script>';

				}



			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡la factura no puede ir vacía o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "facturas";

							}
						})

			  	</script>';

			}

		}

	}
	/*=============================================
	MOSTRAR FACTURAS
	=============================================*/

	static public function ctrMostrarFacturas($item, $valor){

		$tabla = "facturas";

		$respuesta = ModeloProveedor::mdlMostrarFacturas($tabla, $item, $valor);

		return $respuesta;
	
	}

	static public function ctrAbono(){

		if(isset($_POST["abono"])){

			if(preg_match('/^[()\-0-9 ]+$/', $_POST["abono"])){


				$tabla = "facturas";
				$item="folio";
				$valor = $_POST["antiguoFolio"];

				$antiguoSaldo = ModeloProveedor::mdlMostrarFacturas($tabla, $item, $valor);
				$antiguoSaldo2 =  json_decode($antiguoSaldo["saldo"], true);
				$abonoBd = ModeloProveedor::mdlMostrarFacturas($tabla, $item, $valor);
				$abonoBd2 = json_decode($antiguoSaldo["abono"], true);

				$nuevoAbono=$_POST["abono"];

				$abonoTotal = $abonoBd2 + $nuevoAbono;
				$saldo2 = $antiguoSaldo2 - $nuevoAbono;


				$datos = array("abono"=>$abonoTotal,
								"folio"=>$_POST["antiguoFolio"],
							   "saldo"=>$saldo2);

				$respuesta = ModeloProveedor::mdlEditarSaldo($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "se ha aplicado el abono",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "facturas";

									}
								})

					</script>';

				}


			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡no se ha aplicado el abono!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "facturas";

							}
						})

			  	</script>';

			}

			}

	}
		/*=============================================
	ELIMINAR CLIENTE
	=============================================*/

	static public function ctrBorrarFactura(){

		if(isset($_GET["idFactura"])){

			$tabla ="facturas";
			$datos = $_GET["idFactura"];

			$respuesta = ModeloProveedor::mdlEliminarFactura($tabla, $datos);

			if($respuesta == "ok"){

				echo'<script>

				swal({
					  type: "success",
					  title: "La factura ha sido borradas correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar",
					  closeOnConfirm: false
					  }).then(function(result){
								if (result.value) {

								window.location = "facturas";

								}
							})

				</script>';

			}		

		}

	}



}