/*=============================================
EDITAR PROVEEDORES
=============================================*/
$(".tablas").on("click", ".btnEditarProveedor", function(){

	var idProveedor = $(this).attr("idProveedor");

	var datos = new FormData();
	datos.append("idProveedor", idProveedor);

	$.ajax({
		url: "ajax/proveedores.ajax.php",
		method: "POST",
      	data: datos,
      	cache: false,
     	contentType: false,
     	processData: false,
     	dataType:"json",
     	success: function(respuesta){
     		// console.log("respuesta", respuesta);

     		$("#editarProveedor").val(respuesta["nombre"]);
     		$("#idProveedor").val(respuesta["id"]);
     		$("#editarEmail").val(respuesta["email"]);
     		$("#editarTelefono").val(respuesta["telefono"]);

     	}

	})


})

/*=============================================
ELIMINAR PRODUCTO
=============================================*/

$(".tablas tbody").on("click", "button.btnEliminarProveedor", function(){

	var idProveedor = $(this).attr("idProveedor");
	// console.log("idProveedor", idProveedor);

	
	
	swal({

		title: '¿Está seguro de borrar el contcto?',
		text: "¡Si no lo está puede cancelar la accíón!",
		type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar contacto!'
        }).then(function(result){
        if (result.value) {

        	window.location = "index.php?ruta=proveedores&idProveedor="+idProveedor;

        }


	})

})