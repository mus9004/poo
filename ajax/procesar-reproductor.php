<?php
	switch ($_GET["accion"]) {
		case '1':
			include_once("../class/class-conexion.php");
			$conexion = new Conexion();
			$conexion->establecerConexion();
			$resultadoVideo = $conexion->ejecutarInstruccion("SELECT url_contenido, nombre_contenido, descripcion_contenido FROM tbl_contenidos WHERE codigo_contenido = 1");
			$fila = $conexion->obtenerRegistro($resultadoVideo);
			$resultado = array();
			$resultado["url"] = $fila["url_contenido"];
			echo json_encode($resultado);
			$conexion->cerrarConexion();
			break;
		
		default:
			# code...
			break;
	}
?>