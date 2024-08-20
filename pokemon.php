<!DOCTYPE html>
<html lang="en">


<?php 
	include('controller/productos.php');

	$descripcion=descripcionProductos(base64_decode($_GET['q']),$_GET['pokemon']);

	if ($descripcion==0) {
		header("Location: http://localhost:8080/anime");
	}

?>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<link rel="stylesheet" href="lib/css/bootstrap.css">
		<link rel="stylesheet" href="lib/css/style.css">
		<link rel="stylesheet" href="lib/css/font-awesome.css">


		<script src="lib/js/jquery-3.5.1.min.js"></script>
		<script src="lib/js/tether.min.js"></script>
		<script src="lib/js/bootstrap.js"></script>
		<script src="lib/js/script_code.js"></script>
		
	</head>
	<body>

	<?php 
		include('class/menu2.php');
		include('class/descripcion-pokemon.php');
	?>
	<div class="pag">
		<?php include('class/footer.php'); ?>
	</div>



	</body>
</html>


