<div class="content-wrapper">

 

  <section class="content-header">
    
    <h1>
      
     Facturas por pagar
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active"> Facturas por pagar</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">

        <!-- botones -->
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarFactura">
          
          Agregar Factura

        </button>
          
          <!-- <button class="btn btn-warning pull-right" data-toggle="modal" data-target="#modalAgregarAbono">
          
          Agregar Abono

        </button> -->
      
       
      </div>

      <!-- tabla -->

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablaFacturas" width="100%">
         
        <thead>
         
         <tr>
           
           <!-- <th style="width:10px">#</th> -->
           <th>Proveedor</th>
           <th>Folio</th>
           <th>Cantidad</th>
           <th>Abono</th>
           <th>Saldo</th>
           <th>fecha</th>
           <th>Acciones</th>
           
         </tr> 

        </thead>

       <tbody>

        <!-- agregar en el echo para que muestre el id de la factura<td>'.($key+1).'</td> -->

        <?php

          $item = null;
          $valor = null;

          $facturas = ControladorCuentas::ctrMostrarFacturas($item, $valor);
          // var_dump( $facturas);

          foreach ($facturas as $key => $value) {

            if ($value["saldo"]>0) {

            echo ' <tr>

                   

                    <td class="text-uppercase">'.$value["id_proveedor"].'</td>
                     <td class="text-uppercase">'.$value["folio"].'</td>
                      <td class="text-uppercase">'.$value["cantidad"].'</td>
                       <td class="text-uppercase">'.$value["abono"].'</td>
                        <td class="text-uppercase">'.$value["saldo"].'</td>
                         <td class="text-uppercase">'.$value["fecha"].'</td>

                    <td>

                      <div class="btn-group">

                        <button class="btn btn-success btnAbono" idAbono="'.$value["id"].'" data-toggle="modal" data-target="#modalAbono">abono</button>
                          
                       ';




                     if($_SESSION["perfil"] =="Administrador"){

                       echo' <button class="btn btn-danger btnEliminarFactura" idFactura="'.$value["id"].'"><i class="fa fa-times"></i></button>';
                     }

                     echo' </div>  

                    </td>

                  </tr>';
                }
          }

        ?>

    </tbody>

      

       </table>

      </div>

    </div>

  </section>
</div>


<!--=====================================
MODAL AGREGAR FACTURA
======================================-->

<div id="modalAgregarFactura" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data" class="formularioFactura">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Factura</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">


            <!-- ENTRADA PARA SELECCIONAR PROVEEDOR -->

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <select class="form-control input-lg" id="nuevoProveedorFactura" name="nuevoProveedorFactura" required>
                  
                  <option value="">Selecionar proveedor</option>

                  <?php

                  $item = null;
                  $valor = null;

                  $categorias = ControladorCuentas::ctrMostrarProveedor($item, $valor);
                    // var_dump($categorias);

                  foreach ($categorias as $key => $value) {
                    
                    echo '<option value="'.$value["nombre"].'">'.$value["nombre"].'</option>';
                  }

                  ?>
  
                </select>

              </div>

            </div>

            <!-- ENTRADA PARA EL FOLIO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-code"></i></span> 

                <input type="text" class="form-control input-lg" id="nuevoFolio" name="nuevoFolio" placeholder="Ingresar folio"  required>

              </div>

            </div>

            <!-- ENTRADA PARA LA CANTIDAD -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span> 

                <input type="number" class="form-control input-lg" name="nuevaCantidad" id="nuevaCantidad" placeholder="Ingresar cantidad" required>

              </div>

            </div>

             <!-- ENTRADA PARA ABONO -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span> 

                <input type="number" class="form-control input-lg" name="nuevoAbono" id="nuevoAbono" min="0" placeholder="abono" required>

              </div>

            </div>

             <!-- ENTRADA PARA SALDO -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span> 

                <input type="number" class="form-control input-lg nuevoSaldo" name="nuevoSaldo" id="nuevoSaldo"  placeholder="saldo inicial"  required>

              </div>

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Factura</button>

        </div>

      </form>

     <?php

          $crearFactura = new ControladorCuentas();
          $crearFactura -> ctrCrearFactura();

        ?>   

    </div>

  </div>

</div>

<!--=====================================
MODAL AGREGAR ABONO
======================================-->

<div id="modalAbono" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data" class="formularioFactura">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Abono</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL FOLIO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-code"></i></span> 

                <input type="text" class="form-control input-lg" id="antiguoFolio" name="antiguoFolio" readonly  required>

              </div>

            </div>
             <!-- ENTRADA PARA LA CANTIDAD -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-dollar"></i></span> 

                <input type="text" class="form-control input-lg" id="antiguoSaldo" name="antiguoSaldo" readonly  required>

              </div>

            </div>


             <!-- ENTRADA PARA ABONO -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span> 

                <input type="number" class="form-control input-lg" name="abono" id="abono" min="0" placeholder="abono" required>

              </div>

            </div>

             

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Abono</button>

        </div>

      </form>

     <?php

          $crearAbono = new ControladorCuentas();
          $crearAbono -> ctrAbono();

        ?>   

    </div>

  </div>

</div>



<div class="content-wrapper">

 
<section>

    
    <h1>
      
     Facturas pagadas
    
    </h1>

    

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">

     
       
      </div>

      <!-- tabla -->

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablaFacturas" width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Proveedor</th>
           <th>Folio</th>
           <th>Cantidad</th>
          
           <th>Saldo</th>
           <th>fecha</th>
           <th>Acciones</th>
           
         </tr> 

        </thead>

       <tbody>

        <!-- agregar en el echo para que muestre el id de la factura<td>'.($key+1).'</td> -->

        <?php

          $item = null;
          $valor = null;

          $facturas = ControladorCuentas::ctrMostrarFacturas($item, $valor);
          // var_dump( $facturas);

          foreach ($facturas as $key => $value) {

            if ($value["saldo"] < 1) {

            echo ' <tr>

                   
                    <td>'.($key+1).'</td> 
                    <td class="text-uppercase">'.$value["id_proveedor"].'</td>
                    <td class="text-uppercase">'.$value["folio"].'</td>
                    <td class="text-uppercase">'.$value["cantidad"].'</td>
                       
                    <td class="text-uppercase">'.$value["saldo"].'</td>
                    <td class="text-uppercase">'.$value["fecha"].'</td>

                    <td>

                      <div class="btn-group">';

                     if($_SESSION["perfil"] =="Administrador"){

                       echo' <button class="btn btn-danger btnEliminarFactura" idFactura="'.$value["id"].'"><i class="fa fa-times"></i></button>';
                     }

                     echo' </div>  

                    </td>

                  </tr>';
                }
          }

        ?>

    </tbody>

      

       </table>

      </div>

    </div>
</section>
 
</div>

<?php

  $borrarFactura = new ControladorCuentas();
  $borrarFactura -> ctrBorrarFactura();

?>

