<?php
	include_once("../class/class-conexion.php");
		$conexion = new Conexion();
		$conexion->establecerConexion();

	switch ($_GET["accion"]) {
		case '1':
			/*echo 	$_POST["txt-nombre"].", ".
					$_POST["txt-descripcion"].", ".
					$_POST["dt-fecha"].", ".
					$_POST["txt-duracion"].", ".
					$_POST["txt-calificacion"].", ".
					$_POST["rbt-tipo-contenido"].", ".
					$_POST["rbt-clasificacion"].", ".
					$_POST["txt-url"];
					echo $_POST["txt-imagen"];
			exit;*/

			$array=explode(",", $_POST["chk-categorias"]);
			$Subtitulos=explode(",", $_POST["chk-sub-titulos"]);
			$id="";

			$sql = sprintf(
				"INSERT INTO tbl_contenidos (
					codigo_tipo_contenido, 
					codigo_esrb, 
					nombre_contenido, 
					descripcion_contenido, 
					fecha_lanzamiento, 
					duracion_contenido, 
					calificacion_promedio, 
					url_contenido
				) VALUES (
						'%s','%s','%s','%s','%s','%s','%s','%s'
					)",
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["rbt-tipo-contenido"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["rbt-clasificacion"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-nombre"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-descripcion"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["dt-fecha"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-duracion"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-calificacion"] )),
					$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-url"]))
			);


			$resultadoInsert= $conexion->ejecutarInstruccion($sql);
			if ($resultadoInsert === TRUE) {
				$query= $conexion->ejecutarInstruccion("SELECT @@identity AS id");
					 if ($row = mysqli_fetch_row($query)) 
					 {
					   $id = trim($row[0]);
					 }
			}
			
			for($i=0; $i<count($array); $i++){ 
				$sql = sprintf(
					"INSERT INTO tbl_categorias_x_contenido (
						codigo_contenido, 
						codigo_categoria
						) VALUES (
							'%s','%s'
						)",
						$conexion->getEnlace()->real_escape_string(stripslashes( $id )),
						$conexion->getEnlace()->real_escape_string(stripslashes( $array [$i]))
				);
				$conexion->ejecutarInstruccion($sql);
			} 

			for($i=0; $i<count($Subtitulos); $i++){ 
				$sql = sprintf(
					"INSERT INTO tbl_subtitulos_x_contenido (
						codigo_contenido, 
						codigo_subtitulo
						) VALUES (
							'%s','%s'
						)",
						$conexion->getEnlace()->real_escape_string(stripslashes( $id )),
						$conexion->getEnlace()->real_escape_string(stripslashes( $Subtitulos [$i]))
				);
				$conexion->ejecutarInstruccion($sql);
			} 


			$idImg="";
			$sql1 = sprintf(
				"INSERT INTO tbl_imagen ( 
					nombre_imagen, 
					ancho_imagen, 
					alto_imagen
				) VALUES (
						'%s','%s','%s'
				)",
				$conexion->getEnlace()->real_escape_string(stripslashes( $_POST["txt-imagen"] )),
				$conexion->getEnlace()->real_escape_string(stripslashes( 512 )),
				$conexion->getEnlace()->real_escape_string(stripslashes( 512))
			);

			$insertImagen= $conexion->ejecutarInstruccion($sql1);
			if ($insertImagen === TRUE) {
				$query2= $conexion->ejecutarInstruccion("SELECT @@identity AS id");
					 if ($row2 = mysqli_fetch_row($query2)) 
					 {
					   $idImg = trim($row2[0]);
					 }
			}

			$sql2 = sprintf(
					"INSERT INTO tbl_imagenes_x_contenido (
						codigo_imagen,
						codigo_contenido
						) VALUES (
							'%s','%s'
						)",
						$conexion->getEnlace()->real_escape_string(stripslashes( $idImg )),
						$conexion->getEnlace()->real_escape_string(stripslashes( $id))
				);
				$conexion->ejecutarInstruccion($sql2);

			/*$resultado=array();
			if ($resultadoInsert === TRUE) {
				$resultado["codigo"]=1;
				$resultado["mensaje"]="Exito, el  registro fue almacenado";
			} else {
				$resultado["codigo"]=0;
				$resultado["mensaje"]="Error: " . $sql . "<br>" . $conexion->getEnlace()->error;
			}
			echo json_encode($resultado);*/
			break;
		default:
			break;
	}
	
?>