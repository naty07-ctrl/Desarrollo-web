<div class="descripcion container">
	<div class="row">
		<div class="col-12 col-sm-6 col-md-5 col-lg-6">
			<div class="container-fluid img-desc">
				<img class="img-fluid rounded-circle" id="img-principal" src="img/prod/<?= $descripcion['imagen'][0];?>">
			</div>			
			<div class="centrar">
				<?php 
					foreach ($descripcion['imagen'] as $key => $value) {
						echo '<img class="miniatura rounded-circle" src="img/prod/'.$value.'">';
					}
				 ?>

			</div>
		</div>

		<div class="col-12 col-sm-6 col-md-7 col-lg-6">
			<h2><?= $descripcion['nombre'];?> <span class="valor"><?='$ '. number_format($descripcion['valor'],0, ',', '.');?></span></h2>
			<p><span class="desc"><?= $descripcion['descripcion'];?></span></p>
			<p><span class="desc">Descripción:</span>
				<ul>
					<li>Medidas: <?= $descripcion['medida'];?> Aprox</li>
					<li>Material: <?= $descripcion['caracteristica'];?></li>
					<li>Estado: <?= $descripcion['estado'];?></li>
					<li>Valor: <?='$ '. number_format($descripcion['valor'],0, ',', '.');?></li>
				</ul>
			</p>


			<div class="i-carrito">
				<div class="input-group input-group-xs carrito-desc">
					<input type="number" class="form-control" min="1" value="1">
					<span class="input-group-btn">
					<button id="show_password" class="btn btn-success btn-carrito" type="submit"><i class="fas fa-shopping-cart"></i></button>
					</span>
				</div>
			</div>

		</div>
	</div>
</div>


