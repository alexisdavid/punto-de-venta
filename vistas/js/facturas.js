/*=============================================
CARGAR LA TABLA DINÁMICA
=============================================*/

if($(".perfilUsuario").val() != "Administrador"){

	var botonesTabla = '<div class="btn-group"><button class="btn btn-warning btnEditarProducto" idProducto data-toggle="modal" data-target="#modalEditarProducto"><i class="fa fa-pencil"></i></button>';


}else{

	var botonesTabla = '<div class="btn-group"><button class="btn btn-warning btnEditarProducto" idProducto data-toggle="modal" data-target="#modalEditarProducto"><i class="fa fa-pencil"></i></button><button class="btn btn-danger btnEliminarProducto" idProducto codigo imagen><i class="fa fa-times"></i></button></div>';

}

if(window.matchMedia("(max-width:767px)").matches){

	var table = $('.tablaFacturas').DataTable({


		"language": {

			"sProcessing":     "Procesando...",
			"sLengthMenu":     "Mostrar _MENU_ registros",
			"sZeroRecords":    "No se encontraron resultados",
			"sEmptyTable":     "Ningún dato disponible en esta tabla",
			"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
			"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
			"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			"sInfoPostFix":    "",
			"sSearch":         "Buscar:",
			"sUrl":            "",
			"sInfoThousands":  ",",
			"sLoadingRecords": "Cargando...",
			"oPaginate": {
			"sFirst":    "Primero",
			"sLast":     "Último",
			"sNext":     "Siguiente",
			"sPrevious": "Anterior"
			},
			"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
			}

		}


	})

}else{

	var table = $('.tablaFacturas').DataTable({

		

		"language": {

			"sProcessing":     "Procesando...",
			"sLengthMenu":     "Mostrar _MENU_ registros",
			"sZeroRecords":    "No se encontraron resultados",
			"sEmptyTable":     "Ningún dato disponible en esta tabla",
			"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
			"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
			"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			"sInfoPostFix":    "",
			"sSearch":         "Buscar:",
			"sUrl":            "",
			"sInfoThousands":  ",",
			"sLoadingRecords": "Cargando...",
			"oPaginate": {
			"sFirst":    "Primero",
			"sLast":     "Último",
			"sNext":     "Siguiente",
			"sPrevious": "Anterior"
			},
			"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
			}

		}


	})

}


/*=============================================
AGREGAR ABONO
=============================================*/

$(".tablaFacturas tbody").on("click", "button.btnAbono", function(){

	var idAbono = $(this).attr("idAbono");
	

	
	var datos = new FormData();
	datos.append("idAbono", idAbono);

	$.ajax({

		url:"ajax/facturas.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){
			// console.log("respuesta", respuesta);
			
			$("#idf").val(respuesta["id"]);
			
			$("#antiguoFolio").html(respuesta["folio"]);
			$("#antiguoFolio").val(respuesta["folio"]);
			$("#antiguoSaldo").html(respuesta["saldo"]);
			$("#antiguoSaldo").val(respuesta["saldo"]);

			

			}

	

	});

})

/*=============================================
ELIMINAR FACTURA
=============================================*/
$(".tablaFacturas tbody").on("click", "button.btnEliminarFactura", function(){

	 var idFactura = $(this).attr("idFactura");
	 console.log("idFactura", idFactura);
	
	 swal({
	 	title: '¿Está seguro de borrar la factura?',
	 	text: "¡Si no lo está puede cancelar la acción!",
	 	type: 'warning',
	 	showCancelButton: true,
	 	confirmButtonColor: '#3085d6',
	 	cancelButtonColor: '#d33',
	 	cancelButtonText: 'Cancelar',
	 	confirmButtonText: 'Si, borrar factura!'
	 }).then(function(result){

	 	if(result.value){

	 		window.location = "index.php?ruta=facturas&idFactura="+idFactura;

	 	}

	 })

})

