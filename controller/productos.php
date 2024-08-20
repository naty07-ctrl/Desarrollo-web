<?php

function BuscarProductos(){
	require('conexion/conexion.php');

	if ($sql = $conexion->prepare("SELECT prod.ID_PRODUCTO, prod.NOMBRE_PRODUCTO, prod.DESCRIPCION_PRODUCTO, prod.MEDIDA_PRODUCTO, prod.CARACTERISTICA_PRODUCTO, prod.VALOR_PRODUCTO, prod.ESTADO_PRODUCTO, prod.DESTACADO_PRODUCTO, img.NOMBRE_IMAGEN, img.TITULO_IMAGEN, cat.NOMBRE_CATEGORIA, cat.ID_CATEGORIA from productos prod INNER JOIN imagenes img on prod.ID_PRODUCTO = img.ID_PRODUCTO INNER JOIN categorias cat on prod.ID_CATEGORIA = cat.ID_CATEGORIA ORDER BY prod.ID_PRODUCTO, img.NOMBRE_IMAGEN ASC")) {
	    /* asociar parámetros para marcadores */	    //$sql->bind_param("is", $id,$nombre);
	    /* ejecutar la consulta */
	    $sql->execute();
	    /* asociar variables de resultado */
	    $sql->bind_result($id,$nombre,$descripcion,$medida,$caracteristica,$valor,$estado,$destacado,$imagen,$titulo,$categoria,$id_cat);

	    /* obtener valor */
	    while ($sql->fetch()) {
			if ($destacado==1) {
				$datos['destacados'][$id]['categoria']=$categoria;
				$datos['destacados'][$id]['id']=$id;
				$datos['destacados'][$id]['nombre']=$nombre;
				$datos['destacados'][$id]['descripcion']=$descripcion;
				$datos['destacados'][$id]['medida']=$medida;
				$datos['destacados'][$id]['caracteristica']=$caracteristica;
				$datos['destacados'][$id]['valor']=$valor;
				$datos['destacados'][$id]['estado']=$estado;
				$datos['destacados'][$id]['imagen'][]=$imagen;
				$datos['destacados'][$id]['titulo']=$titulo;
			}
			$datos['productos'][$id]['id_cat']=$id_cat;
			$datos['productos'][$id]['categoria']=$categoria;
			$datos['productos'][$id]['id']=$id;
			$datos['productos'][$id]['nombre']=$nombre;
			$datos['productos'][$id]['descripcion']=$descripcion;
			$datos['productos'][$id]['medida']=$medida;
			$datos['productos'][$id]['caracteristica']=$caracteristica;
			$datos['productos'][$id]['valor']=$valor;
			$datos['productos'][$id]['estado']=$estado;
			$datos['productos'][$id]['imagen'][]=$imagen;
			$datos['productos'][$id]['titulo']=$titulo;
	    }
	    /* cerrar sentencia */
	    $sql->close();
	}

	return $datos;

}


function BuscarCategoria(){
	require('conexion/conexion.php');

	if ($sql = $conexion->prepare("SELECT ID_CATEGORIA, NOMBRE_CATEGORIA, data_rel,TIPO_CATEGORIA from categorias ")) {
	    /* asociar parámetros para marcadores */	    //$sql->bind_param("is", $id,$nombre);
	    /* ejecutar la consulta */
	    $sql->execute();
	    /* asociar variables de resultado */
	    $sql->bind_result($id,$nombre_cat,$data_rel,$tipo_categoria);

	    /* obtener valor */
	    while ($sql->fetch()) {

			$datos[$id]['nombre_cat']=$nombre_cat;
			$datos[$id]['data_rel']=$data_rel;
			$datos[$id]['tipo_categoria']=$tipo_categoria;
	    }
	    /* cerrar sentencia */
	    $sql->close();
	}

	return $datos;

}


function descripcionProductos($id,$nombre){
	require('conexion/conexion.php');

	if ($sql = $conexion->prepare("SELECT prod.ID_PRODUCTO, prod.NOMBRE_PRODUCTO, prod.DESCRIPCION_PRODUCTO, prod.MEDIDA_PRODUCTO, prod.CARACTERISTICA_PRODUCTO, prod.VALOR_PRODUCTO, prod.ESTADO_PRODUCTO, img.NOMBRE_IMAGEN, img.TITULO_IMAGEN from productos prod INNER JOIN imagenes img on prod.ID_PRODUCTO = img.ID_PRODUCTO where prod.ID_PRODUCTO=? and prod.NOMBRE_PRODUCTO=?")) {
	    /* asociar parámetros para marcadores */
	    $sql->bind_param("is", $id,$nombre);
	    /* ejecutar la consulta */
	    $sql->execute();
	    /* asociar variables de resultado */
	    $sql->bind_result($id,$nombre,$descripcion,$medida,$caracteristica,$valor,$estado,$imagen,$titulo);

	    /* obtener valor */
	    while ($sql->fetch()) {
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

	if (isset($datos)) {
		return $datos;
	}else{
		return 0;
	}

}





 ?>