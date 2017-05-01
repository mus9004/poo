<?php

include_once("class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();
switch ($_GET["accion"]) {
	case '1':
		$peliculas=$conexion->ejecutarInstruccion('SELECT tbl_contenidos.codigo_contenido, tbl_contenidos.nombre_contenido, tbl_imagen.codigo_imagen, tbl_imagen.nombre_imagen, tbl_imagenes_x_contenido.codigo_imagen, tbl_imagenes_x_contenido.codigo_contenido, tbl_categorias.codigo_categoria, tbl_categorias.nombre_categoria, tbl_categorias_x_contenido.codigo_contenido, tbl_categorias_x_contenido.codigo_categoria, tbl_contenidos.calificacion_promedio, tbl_contenidos.duracion_contenido
			FROM tbl_contenidos
			LEFT JOIN tbl_categorias_x_contenido ON tbl_contenidos.codigo_contenido = tbl_categorias_x_contenido.codigo_contenido 
			LEFT JOIN tbl_imagenes_x_contenido ON tbl_contenidos.codigo_contenido = tbl_imagenes_x_contenido.codigo_contenido 
			LEFT JOIN tbl_categorias ON tbl_categorias_x_contenido.codigo_categoria = tbl_categorias.codigo_categoria 
			LEFT JOIN tbl_imagen ON tbl_imagenes_x_contenido.codigo_imagen = tbl_imagen.codigo_imagen ');
		break;
	
	default:
		# code...
		break;
}
?>