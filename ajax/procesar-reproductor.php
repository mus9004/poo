<?php
	switch ($_GET["accion"]) {
		case '1':
			include_once("../class/class-conexion.php");
			$conexion = new Conexion();
			$conexion->establecerConexion();
			$resultadoVideo = $conexion->ejecutarInstruccion("SELECT url_contenido,
				nombre_contenido,
				descripcion_contenido,
				b.codigo_imagen,
				c.nombre_imagen
				FROM tbl_contenidos a
				LEFT JOIN tbl_imagenes_x_contenido b
				ON (a.codigo_contenido = b.codigo_contenido)
				LEFT JOIN tbl_imagen c
				ON (b.codigo_imagen = c.codigo_imagen)
				WHERE a.codigo_contenido =" . $_POST["codigo_video"]);
			$fila = $conexion->obtenerRegistro($resultadoVideo);
			$resultado = array();
			$resultado["url_contenido"] = utf8_encode($fila["url_contenido"]);
			$resultado["nombre_contenido"] = utf8_encode($fila["nombre_contenido"]);
			$resultado["descripcion_contenido"] = utf8_encode($fila["descripcion_contenido"]);
			$resultado["nombre_imagen"] = utf8_encode($fila["nombre_imagen"]);
			echo json_encode($resultado);
			break;
		
		default:
			# code...
			break;
	}
?>