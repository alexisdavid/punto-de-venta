/*=============================================
CARGAR LA TABLA DINÁMICA
=============================================*/

var table = $('.tablaProductos').DataTable({

	"ajax":"ajax/datatable-productos.ajax.php",
	"columnDefs": [

		{
			"targets": -10,
			 "data": null,
			
			 "defaultContent": '<img src="" class="img-thumbnail imgTabla" width="40px">'

		},

		{
			"targets": -1,
			 "data": null,
			 "defaultContent": '<div class="btn-group"><button class="btn btn-warning btnEditarProducto" idProducto data-toggle="modal" data-target="#modalEditarProducto"><i class="fa fa-pencil"></i></button><button class="btn btn-danger btnEliminarProducto" idProducto codigo imagen><i class="fa fa-times"></i></button></div>'

		}

	],

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
/*=============================================
ACTIVAR LOS BOTONES CON LOS ID CORRESPONDIENTES
=============================================*/

$('.tablaProductos tbody').on( 'click', 'button', function () {
	
	if(window.matchMedia("(min-width:1200px)").matches){

		var data = table.row( $(this).parents('tbody tr') ).data();

	}else{

		var data = table.row( $(this).parents('tbody tr ul li') ).data();		

	}
	
	$(this).attr("idProducto", data[9])	
	$(this).attr("codigo", data[2])	
	$(this).attr("imagen", data[1])	

} );
/*=============================================
FUNCIÓN PARA CARGAR LAS IMÁGENES
=============================================*/

function cargarImagenes(){

	var imgTabla = $(".imgTabla");

	for(var i = 0; i < imgTabla.length; i ++){

		var data = table.row( $(imgTabla[i]).parents("tr")).data();	
		console.log("data",data);

		$(imgTabla[i]).attr("src", data[1]);

	}

}
/*=============================================
CARGAMOS LAS IMÁGENES CUANDO ENTRAMOS A LA PÁGINA POR PRIMERA VEZ
=============================================*/

setTimeout(function(){

	cargarImagenes();

},300)

/*=============================================
CARGAMOS LAS IMÁGENES CUANDO INTERACTUAMOS CON EL PAGINADOR
=============================================*/

$(".dataTables_paginate").click(function(){

	cargarImagenes();

})

/*=============================================
CARGAMOS LAS IMÁGENES CUANDO INTERACTUAMOS CON EL BUSCADOR
=============================================*/
$("input[aria-controls='DataTables_Table_0']").focus(function(){

	$(document).keyup(function(event){

		event.preventDefault();

		cargarImagenes();

	})


})

/*=============================================
CARGAMOS LAS IMÁGENES CUANDO INTERACTUAMOS CON EL FILTRO DE CANTIDAD
=============================================*/

$("select[name='DataTables_Table_0_length']").change(function(){

	cargarImagenes();

})

/*=============================================
CARGAMOS LAS IMÁGENES CUANDO INTERACTUAMOS CON EL FILTRO DE ORDENAR
=============================================*/

$(".sorting").click(function(){

	cargarImagenes();

})