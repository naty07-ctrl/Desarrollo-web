<?php
	if (isset($_POST['id_prod'])) {
		require('../conexion/conexion.php');
		if ($sql = $conexion->prepare("SELECT prod.ID_PRODUCTO, prod.NOMBRE_PRODUCTO, prod.DESCRIPCION_PRODUCTO, prod.MEDIDA_PRODUCTO, prod.CARACTERISTICA_PRODUCTO, prod.VALOR_PRODUCTO, prod.ESTADO_PRODUCTO, prod.DESTACADO_PRODUCTO, img.NOMBRE_IMAGEN, img.TITULO_IMAGEN, cat.NOMBRE_CATEGORIA, cat.ID_CATEGORIA from productos prod  INNER JOIN imagenes img on prod.ID_PRODUCTO = img.ID_PRODUCTO INNER JOIN categorias cat on prod.ID_CATEGORIA = cat.ID_CATEGORIA where prod.ID_PRODUCTO=".base64_decode($_POST['id_prod'])." ORDER BY prod.ID_PRODUCTO, img.NOMBRE_IMAGEN ASC")) {
		    /* asociar parámetros para marcadores */	    //$sql->bind_param("is", $id,$nombre);
		    /* ejecutar la consulta */
		    $sql->execute();
		    /* asociar variables de resultado */
		    $sql->bind_result($id,$nombre,$descripcion,$medida,$caracteristica,$valor,$estado,$destacado,$imagen,$titulo,$categoria,$id_cat);

		    /* obtener valor */
		    while ($sql->fetch()) {
				$datos['id_cat']=$id_cat;
				$datos['categoria']=$categoria;
				$datos['id']=$id;
				$datos['nombre']=$nombre;
				$datos['descripcion']=$descripcion;
				$datos['medida']=$medida;
				$datos['caracteristica']=$caracteristica;
				$datos['valor']=$valor;
				$datos['estado']=$estado;
				$datos['imagen'][]=$imagen;
				$datos['titulo']=$titulo;
		    }
		    /* cerrar sentencia */
		    $sql->close();
		}
		echo json_encode($datos);
	}else{
		$result['cod']=0;
		$result['desc']='error';
		echo json_encode($result);
	}
?>
