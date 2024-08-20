<!DOCTYPE html>
<html lang="en">
<?php

/**/
	include('controller/productos.php');

	$productos=BuscarProductos();
	$categoria_prod=BuscarCategoria();
	//$destacados=BuscarDestacado();

?>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<link rel="stylesheet" href="lib/css/bootstrap.css">
		<link rel="stylesheet" href="lib/css/style.css">
		<link rel="stylesheet" href="lib/css/style-slider.css">
		<link rel="stylesheet" href="lib/css/font-awesome.css">


		<script src="lib/js/jquery-3.5.1.min.js"></script>
		<script src="lib/js/tether.min.js"></script>
		<script src="lib/js/bootstrap.js"></script>
		<script src="lib/js/script_code.js"></script>
		<script src="lib/js/funciones.js"></script>
	</head>
	<body>


	<?php
		include('class/menu.php');
		include('class/pag-inicio.php');
		include('class/footer.php');
	?>
	<script type="text/javascript" src="lib/js/wowslider.js"></script>
	<script type="text/javascript" src="lib/js/script.js"></script>
	</body>
</html>