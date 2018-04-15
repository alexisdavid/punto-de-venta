<?php

require_once "../controladores/cuentas.controlador.php";
require_once "../modelos/cuentas.modelo.php";

class AjaxAbono{

	/*=============================================
	aplicar abono
	=============================================*/	

	public $idUsuario;

	public function ajaxAplicarAbono(){

		$item = "id";
		$valor = $this->idAbono;

		$respuesta = ControladorCuentas::ctrMostrarFacturas($item, $valor);

		echo json_encode($respuesta);

	}
}

/*=============================================
EDITAR USUARIO
=============================================*/
if(isset($_POST["idAbono"])){

	$editar = new AjaxAbono();
	$editar -> idAbono = $_POST["idAbono"];
	$editar -> ajaxAplicarAbono();

}