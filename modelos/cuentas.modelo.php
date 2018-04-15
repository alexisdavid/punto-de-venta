<?php

require_once "conexion.php";

class ModeloProveedor{

	/*=============================================
	CREAR PROVEDOR
	=============================================*/

	static public function mdlIngresarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre,email,telefono) VALUES (:nombre, :email, :telefono)");

		$stmt->bindParam(":nombre",$datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":email",$datos["email"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono",$datos["telefono"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}


	/*=============================================
	MOSTRAR CPROVEDOR
	=============================================*/

	static public function mdlMostrarproveedor($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}
	/*=============================================
	EDITAR PROVEEDOR
	=============================================*/

	static public function mdlEditarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, email = :email, telefono = :telefono WHERE id = :id");

		$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":email", $datos["email"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono", $datos["telefono"], PDO::PARAM_STR);
		

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	ELIMINAR PROVEEDOR
	=============================================*/

	static public function mdlEliminarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}
	/*=============================================
	CREAR Factura
	=============================================*/

	static public function mdlIngresarFactura($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(id_proveedor,folio,cantidad,abono,saldo) VALUES (:id_proveedor, :folio, :cantidad, :abono, :saldo)");

		$stmt->bindParam(":id_proveedor",$datos["id_proveedor"], PDO::PARAM_STR);
		$stmt->bindParam(":folio",$datos["folio"], PDO::PARAM_STR);
		$stmt->bindParam(":cantidad",$datos["cantidad"], PDO::PARAM_INT);
		$stmt->bindParam(":abono",$datos["abono"], PDO::PARAM_INT);
		$stmt->bindParam(":saldo",$datos["saldo"], PDO::PARAM_INT);


		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	MOSTRAR FACTURAS
	=============================================*/

	static public function mdlMostrarFacturas($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}
	/*=============================================
	EDITAR ABONO
	=============================================*/

	static public function mdlEditarSaldo($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET folio = :folio, abono = :abono, saldo = :saldo WHERE folio = :folio");

		$stmt -> bindParam(":folio", $datos["folio"], PDO::PARAM_INT);
		$stmt -> bindParam(":abono", $datos["abono"], PDO::PARAM_INT);
		$stmt -> bindParam(":saldo", $datos["saldo"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	ELIMINAR FACTURA
	=============================================*/

	static public function mdlEliminarFactura($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}
}