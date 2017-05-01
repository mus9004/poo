<?php
	switch ($_GET["accion"]) {
		case '1':
			include_once("../class/class-conexion.php");
			$conexion = new Conexion();
			$conexion->establecerConexion();
			$resultadoVideo = $conexion->ejecutarInstruccion("SELECT url_contenido, nombre_contenido, descripcion_contenido FROM tbl_contenidos WHERE codigo_contenido =" . $_POST["codigo_video"]);
			$fila = $conexion->obtenerRegistro($resultadoVideo);
			echo json_encode($fila);
			break;
		
		default:
			# code...
			break;
	}
?>