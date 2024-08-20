<div class="principal">
	<div class="slider">
		<div id="wowslider-container1">
			<div class="ws_images">
				<ul>
					<li><img src="img/slider/f0.jpg" class="img-fluid" title="Manos Libres" /></li>
					<li><img src="img/slider/f1.jpg" class="img-fluid" title="Cargadores" /></li>
					<li><img src="img/slider/f2.jpg" class="img-fluid" title="Audifonos" /></li>
					<li><img src="img/slider/f11.jpg" class="img-fluid" title="Parlantes" /></li>
				</ul>
			</div>
			<!-- miniaturas -->
			<div class="ws_bullets">
				<div>
					<a href="#" title="Set-Eevee"><img src="img/slider/mini1.jpg" /> </a>
					<a href="#" title="Dragon-Ball"><img src="img/slider/mini2.jpg" /> </a>
					<a href="#" title="Pikachu-Charizard"><img src="img/slider/mini3.jpg" /> </a>
					<a href="#" title="Pikachu-Charizard1"><img src="img/slider/mini4.jpg" /> </a>
				</div>
			</div>
			<!-- Fin miniaturas -->
		</div>
	</div>


	<div class="disponibles">
		<!--<div class="informacion container" id="informacion" >
			<div class="row">
				<div class="col-3 oferta nombre ">
					<a href="pokemon-info?x=oferta"><i class="fas fa-gifts"></i><span>Ofertas</span></a>
				</div>
				<div class="col-3 envio nombre">
					<a href="pokemon-info?x=envio"><i class='fas fa-shipping-fast'></i><span>Envios</span></a>
				</div>
				<div class="col-3 pago nombre">
					<a href="pokemon-info?x=pago"><i class="fas fa-dollar-sign"></i><span>Pagos</span></a>
				</div>
				<div class="col-3 cliente nombre">
					<a href="pokemon-info?x=cliente"><i class="fas fa-users"></i><span>Clientes</span></a>
				</div>
			</div>
			</div>-->
		</div>

<!--Destacados-->
	<div id="destacado"></div>

	<div class="destacado container" >
		<div class="mb-3 titulo"><center><h1>Destacados</h1></center></div>
		<div class="row destacatado-img" >
			<?php 	foreach ($productos['destacados'] as $value) { ?>
				<div class="col-6 col-sm-4 col-md-4 col-lg-2 pics animation mb-4 all 3 img-prod">
					<img id="<?=base64_encode($value['id']) ?>"  data-toggle="modal" data-target="#info-prod" class="img-fluid img-thumbnail buscar-info"  src="img/destacados/<?= $value['imagen']['0'];?>" >
					<div class="prod-dest">
						<span><?= $value['nombre'].' '.$value['medida'] ;?></span>
						<span><?='$'. number_format($value['valor'],0, ',', '.');?></span>
					</div>
				<div class="i-carrito">
					<div class="input-group input-group-xs carrito">
						<input type="number" class="form-control" min="1" value="1">
						<span class="input-group-btn">
						<button id="show_password" class="btn btn-success btn-carrito" type="submit"><i class="fas fa-shopping-cart"></i></button>
						</span>
					</div>
				</div>
				</div>
			<?php 	} ?>
		</div>
	</div>
<!--Fin Destacados-->


<!--Productos-->
<div id="productos"></div>
	<div class="productos container" >
		<div class="mb-3 titulo"><center><h1>Productos</h1></center></div>
		<div class="row productos-menu">
			<div class="col-md-12 d-flex flex-wrap justify-content-around mb-2">
				<?php 	foreach ($categoria_prod as $value) {		?>
						<button type="button" class="filtro-prod btn btn-outline-black waves-effect filter btn-<?= $value['tipo_categoria'] ?>" data-rel="<?= $value['data_rel'] ?>"><?= $value['nombre_cat'] ?></button>
				<?php 	} ?>
			</div>
		</div>
		<div class="row gallery" id="gallery">
			<?php 	foreach ($productos['productos'] as $value) { ?>
			<div class="col-6  col-sm-4 col-lg-3 pics animation mb-4 all <?= $value['id_cat'];?>">
				<img id="<?=base64_encode($value['id']) ?>"  data-toggle="modal" data-target="#info-prod" class="img-fluid img-thumbnail buscar-info"  src="img/prod/<?= $value['imagen']['0'];?>" >
				<container class="valor-prod">
					<span><?= $value['nombre'].' '.$value['medida'] ;?></span>
					<span><?='$ '. number_format($value['valor'],0, ',', '.');?></span>
				</container>
				<span class="i-carrito">
					<span class="input-group input-group-xs carrito">
						<input type="number" class="form-control" min="1" value="1">
						<span class="input-group-btn">
						<button id="show_password" class="btn btn-success btn-carrito" type="submit"><i class="fas fa-shopping-cart"></i></button>
						</span>
					</span>
				</span>
			</div>

			<?php 	} ?>

		</div>		<!-- fin GALLERY-->
	</div>
<!--Fin Productos-->


</div>

<div class="modal fade" id="info-prod" tabindex="-1" aria-labelledby="info-prodLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title info-modal" id="info-modal">Detalle</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <b><label for="message-text" class="col-form-label nombre-prod-modal">Mega Charizard X</label></b>
            <img class="img-fluid img-thumbnail img-modal" src="img/destacados/mega_charizard_x1.png" >
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label"><b>Descripción:</b></label>
            <span class="descripcion-prod-modal">descripcion......</span>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label"><b>Valor:</b></label>
            <span class="valor-prod-modal">$13.000</span>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success">Agregar al Carrito</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>