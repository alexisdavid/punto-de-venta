<?php

$item = null;
$valor = null;
$orden = "id";

$productos = ControladorProductos::ctrMostrarProductos($item, $valor, $orden);

 ?>


<div class="box box-primary">

  <div class="box-header with-border">

    <h3 class="box-title">Productos agregados recientemente</h3>

    <div class="box-tools pull-right">


    </div>

  </div>
  
  <div class="box-body">

    <ul class="products-list product-list-in-box">

    <?php

    for($i = 0; $i < 10; $i++){

      echo '<li class="item">

        <div class="product-img">

          <img src="'.$productos[$i]["imagen"].'" alt="Product Image">

        </div>

        <div class="product-info">

          <a href="" class="product-title">

            '.$productos[$i]["descripcion"].'

            <span class="label label-warning pull-right">$'.$productos[$i]["precio_venta"].'</span>

          </a>
    
       </div>

      </li>';

    }

    ?>

    </ul>

  </div>

  <div class="box-footer text-center">

    <a href="productos" class="uppercase">Ver todos los productos</a>
  
  </div>

</div>
