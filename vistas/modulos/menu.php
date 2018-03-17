<!-- <aside class="main-sidebar">

	 <section class="sidebar">

		<ul class="sidebar-menu">

			<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Usuarios</span>

				</a>

			</li>

			<li>

				<a href="categorias">

					<i class="fa fa-th"></i>
					<span>Categorías</span>

				</a>

			</li>

			<li>

				<a href="productos">

					<i class="fa fa-product-hunt"></i>
					<span>Productos</span>

				</a>

			</li>

			<li>

				<a href="clientes">

					<i class="fa fa-users"></i>
					<span>Clientes</span>

				</a>

			</li>

			<li class="treeview">

				<a href="#">

					<i class="fa fa-list-ul"></i>
					
					<span>Ventas</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="ventas">
							
							<i class="fa fa-circle-o"></i>
							<span>Administrar ventas</span>

						</a>

					</li>

					<li>

						<a href="crear-venta">
							
							<i class="fa fa-circle-o"></i>
							<span>Crear venta</span>

						</a>

					</li>

					<li>

						<a href="reportes">
							
							<i class="fa fa-circle-o"></i>
							<span>Reporte de ventas</span>

						</a>

					</li>

				</ul>

			</li>

		</ul>

	 </section>

</aside> -->
<aside class="main-sidebar">
    <section class="sidebar">
        <!-- Panel del Usuario -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?=$_SESSION["foto"];?>" class="img-circle">
            </div>
            <div class="pull-left info">
                <p><small><?=$_SESSION["nombre"];?></small></p>
                <a href=""><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- Formulario para Buscar -->
        <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Buscar...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form> -->
        <!-- Menús -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">Menú de Navegación</li>
            <li class="active">
                <a href="inicio"><i class="fa fa-home"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Inicio</span></a>
            </li>
            <li>
                <a href="usuarios"><i class="fa fa-user"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Usuarios</span></a>
            </li>
            <li>
                <a href="categorias"><i class="fa fa-th"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Categorías</span></a>
            </li>
            <li>
                <a href="productos"><i class="fa fa-product-hunt"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Productos</span></a>
            </li>
            <li>
                <a href="clientes"><i class="fa fa-users"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Clientes</span></a>
            </li>

            <li class="treeview">
                <a>
                    <i class="fa fa-list-ul"></i> <span style="background-color: rgba(0, 0, 0, 0.9);">Ventas</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu" style="background-color: rgba(0, 0, 0, 0.9);" ">
                    <li><a href="ventas"><i class="fa fa-circle"></i> Administrar Ventas</a></li>
                    <li><a href="crear-venta"><i class="fa fa-circle"></i> Crear Venta</a></li>
                    <li><a href="reportes"><i class="fa fa-circle"></i> Reporte de Ventas</a></li>
                </ul>
            </li>
        </ul>
    </section>
</aside>
