<?php

require_once "../controladores/cuentas.controlador.php";
require_once "../modelos/cuentas.modelo.php";

class AjaxProveedor{

	/*=============================================
	EDITAR CATEGORÍA
	=============================================*/	

	public $idProveedor;

	public function ajaxEditarProveedor(){

		$item = "id";
		$valor = $this->idProveedor;

		$respuesta = ControladorCuentas::ctrMostrarProveedor($item, $valor);
		

		echo json_encode($respuesta);

	}
}

/*=============================================
EDITAR CATEGORÍA
=============================================*/	
if(isset($_POST["idProveedor"])){

	$proveedor = new AjaxProveedor();
	$proveedor -> idProveedor = $_POST["idProveedor"];
	$proveedor -> ajaxEditarProveedor();
}
