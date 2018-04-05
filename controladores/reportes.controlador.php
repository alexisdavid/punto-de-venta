<?php

class ControladorReportes{

	static public function ctrMostrarReportes($item, $valor,$orden){

		$tabla = "productos";

		$respuesta = ModeloReportes::mdlMostrarReportes($tabla, $item, $valor,$orden);

		return $respuesta;

	}








}