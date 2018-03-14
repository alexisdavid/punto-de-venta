<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Catalogo de Productos
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar Producto</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarProducto">
          
          Agregar Producto

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablaProductos">
         
        <thead>
         
         <tr>
           
          <th style="width:10px">#</th>
           <th>Imagen</th>
           <th>Codigo</th>
           <th>Descripcion</th>
            <th>Categoria</th>
           <th>Existencias</th>
           <th>Codigo proveedor</th>
           <th>Precio compra</th>
           <th>Precio Venta</th>
           <th>Fecha</th>
           <th>Acciones</th>

         </tr> 

        </thead>

       </table>

      </div>

    </div>

  </section>

</div>

<!--=====================================
MODAL AGREGAR producto
======================================-->

<div id="modalAgregarProducto" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Producto</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL CODIGO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-code"></i></span> 

                <input type="text" class="form-control input-lg" name="nuevoCodigo" placeholder="Ingresar Codigo" required>

              </div>

            </div>

            <!-- ENTRADA PARA LA DESCRIPCION-->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-product-hunt"></i></span> 

                <input type="text" class="form-control input-lg" name="nuevaDescripcion" placeholder="Ingresar Descripcion" required>

              </div>

            </div>


            <!-- ENTRADA PARA SELECCIONAR CATEGORIA -->

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <select class="form-control input-lg" name="nuevaCategoria">
                  
                  <option value="">Selecionar categoria</option>

                  <option value="silenciadores">silenciadores</option>

                  <option value="catalizadores">catalizadores</option>

                  <option value="flexibles">flexibles</option>

                </select>

              </div>

            </div>
             <!-- ENTRADA PARA STOCK-->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-check"></i></span> 

                <input type="number" class="form-control input-lg" name="nuevoStock" min="0" placeholder="piezas" required>

              </div>

            </div>
            <!-- ENTRADA PARA CODIGO PROVEEDOR-->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-code"></i></span> 

                <input type="text" class="form-control input-lg" name="nuevoCodigoPr"  placeholder="codigo proveedor" required>

              </div>

            </div>
            <!-- ENTRADA PARA PRECIO COMPRA-->

            <div class="form-group row">
              <div class="col-xs-6">
              
                <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-arrow-up"></i></span> 

                <input type="number" class="form-control input-lg" name="nuevoPrecioCompra" min="0" placeholder="precio de compra">
              </div>
              <br>
              
             </div>
            
             <!-- ENTRADA PARA PRECIO VENTA-->
             <div class="col-xs-6" style="padding: 0">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span> 

                <input type="number" class="form-control input-lg" name="nuevoPrecioVenta" min="0" placeholder="precio de venta">
              </div>
              <br>
              <!-- checkbox para porcentaje -->
              <div class="col-xs-6" >
                <div class="form-group">
                  <label>
                    <input type="checkbox" class="minimal flat-red porcentaje" checked>
                    utilizar porcentaje
                  </label>
                </div>
              </div>
              <!-- entrada para porcenje -->


              <div class="col-xs-6">
                <div class="input-group">
                  
                  <input type="number" class="form-control input-lg nuevoPorcentaje" min="0" value="40" required>
                  <span class="input-group-addon"><i class="fa fa-percent"></i></span>
                </div>
              </div>

              </div>

            </div>

             

            <!-- ENTRADA PARA SUBIR FOTO -->

             <div class="form-group">
              
              <div class="panel">SUBIR IMAGEN</div>

              <input type="file" id="nuevaImagen" name="nuevaImagen">

              <p class="help-block">Peso máximo de la foto 2 MB</p>

              <img src="vistas/img/productos/default/anonymous.png" class="img-thumbnail" width="100px">

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Producto</button>

        </div>

      </form>

    </div>

  </div>

</div>


