<?php

class ControladorProductos{
	/*=========================================
	=            mostrar productos            =
	=========================================*/
	static public function ctrMostrarProductos($item,$valor){
		$tabla = "productos";
		
		$respuesta = ModeloProductos::mdlMostrarProductos($tabla,$item,$valor);

		return $respuesta;

		
	}

	static public function ctrCrearProducto(){

		if(isset($_POST["nuevaDescripcion"])){
			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevaDescripcion"]) &&
			   preg_match('/^[0-9]+$/', $_POST["nuevoStock"]) &&	
			   preg_match('/^[0-9]+$/', $_POST["nuevoPrecioCompra"]) &&
			   preg_match('/^[0-9]+$/', $_POST["nuevoCodigoPr"]) &&
			   preg_match('/^[0-9]+$/', $_POST["nuevoPrecioVenta"])){

			   	$tabla = "productos";
			   	$ruta = "vistas/img/productos/default/anonymous.png";

				$datos = array("id_categoria" => $_POST["nuevaCategoria"],
							   "codigo" => $_POST["nuevoCodigo"],
							   "descripcion" => $_POST["nuevaDescripcion"],
							   "stock" => $_POST["nuevoStock"],
							   "precio_compra" => $_POST["nuevoPrecioCompra"],
							   "codigo_proveedor" => $_POST["nuevoCodigoPr"],
							   "precio_venta" => $_POST["nuevoPrecioVenta"],
							   "imagen" => $ruta);

				$respuesta = ModeloProductos::mdlIngresarProducto($tabla, $datos);

				
				if($respuesta == "ok"){

					echo'<script>

						swal({
							  type: "success",
							  title: "El producto ha sido guardado correctamente",
							  showConfirmButton: true,
							  confirmButtonText: "Cerrar"
							  }).then(function(result){
										if (result.value) {

										window.location = "productos";

										}
									})

						</script>';

				}






			}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡El producto no puede ir con los campos vacíos o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "productos";

							}
						})

			  	</script>';
			}

		}

	}	
	
}
