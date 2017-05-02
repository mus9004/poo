<?php

include_once("class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();
switch ($_GET["accion"]) {
	case '1':
		$at="1";			
		$categorias=$conexion->ejecutarInstruccion('SELECT codigo_categoria, nombre_categoria FROM tbl_categorias');	
		while ( $cate=$conexion->obtenerRegistro($categorias)) {
			echo '<h3 style="color: #fff" id="romance">Películas '.$cate["nombre_categoria"].'</h3>';
			echo '<div class="slider'.$at.'" >';
			$peliculas=$conexion->ejecutarInstruccion('SELECT tbl_contenidos.codigo_contenido, tbl_contenidos.nombre_contenido, tbl_imagen.codigo_imagen, tbl_imagen.nombre_imagen, tbl_imagenes_x_contenido.codigo_imagen, tbl_imagenes_x_contenido.codigo_contenido, tbl_categorias.codigo_categoria, tbl_categorias.nombre_categoria, tbl_categorias_x_contenido.codigo_contenido, tbl_categorias_x_contenido.codigo_categoria, tbl_contenidos.calificacion_promedio, tbl_contenidos.duracion_contenido FROM tbl_contenidos LEFT JOIN tbl_categorias_x_contenido ON tbl_contenidos.codigo_contenido = tbl_categorias_x_contenido.codigo_contenido LEFT JOIN tbl_imagenes_x_contenido ON tbl_contenidos.codigo_contenido = tbl_imagenes_x_contenido.codigo_contenido LEFT JOIN tbl_categorias ON tbl_categorias_x_contenido.codigo_categoria = tbl_categorias.codigo_categoria LEFT JOIN tbl_imagen ON tbl_imagenes_x_contenido.codigo_imagen = tbl_imagen.codigo_imagen WHERE tbl_categorias.codigo_categoria='.$cate["codigo_categoria"]);
			while ($fila = $conexion->obtenerRegistro($peliculas)) {
			
		  		echo '<div class="slide" data-toggle="modal">';
		      	 	echo '<img src="'.$fila["nombre_imagen"].'" onclick="ventanaModal('.$fila["codigo_contenido"].')">';
		 		echo '</div>';  
			
			}
			echo '</div>';
			$at++;
			
		}
		
		break;
	case '2':
		$nlineas=$conexion->ejecutarInstruccion('SELECT codigo_categoria, nombre_categoria FROM tbl_categorias');
			echo $nlineas->num_rows;
		break;

	case '3':
		$pelicul=$conexion->ejecutarInstruccion('SELECT tbl_contenidos.codigo_contenido, tbl_contenidos.codigo_esrb, tbl_contenidos.nombre_contenido, tbl_contenidos.fecha_lanzamiento, tbl_contenidos.descripcion_contenido, tbl_contenidos.duracion_contenido, tbl_contenidos.calificacion_promedio, tbl_contenidos.url_contenido, tbl_categorias.codigo_categoria, tbl_categorias.nombre_categoria, tbl_imagen.codigo_imagen, tbl_imagen.nombre_imagen, tbl_imagenes_x_contenido.codigo_imagen, tbl_imagenes_x_contenido.codigo_contenido, tbl_categorias_x_contenido.codigo_contenido, tbl_categorias_x_contenido.codigo_categoria, tbl_esrb.codigo_esrb, tbl_esrb.codigo_imagen, tbl_esrb.nombre_esrb
				FROM tbl_contenidos
				LEFT JOIN tbl_esrb ON tbl_contenidos.codigo_esrb = tbl_esrb.codigo_esrb 
				LEFT JOIN tbl_categorias_x_contenido ON tbl_contenidos.codigo_contenido = tbl_categorias_x_contenido.codigo_contenido 
				LEFT JOIN tbl_imagenes_x_contenido ON tbl_contenidos.codigo_contenido = tbl_imagenes_x_contenido.codigo_contenido 
				LEFT JOIN tbl_categorias ON tbl_categorias_x_contenido.codigo_categoria = tbl_categorias.codigo_categoria 
				LEFT JOIN tbl_imagen a ON tbl_esrb.codigo_imagen = a.codigo_imagen 
				LEFT JOIN tbl_imagen ON tbl_imagenes_x_contenido.codigo_imagen = tbl_imagen.codigo_imagen
					WHERE tbl_contenidos.codigo_contenido='.$_POST["id-pelicula"]);
		$pel= $conexion->obtenerRegistro($pelicul);
						//echo  utf8_encode($pel["descripcion_contenido"]);
		   					
		                  	echo '<div class="modal-header">';
				                 echo ' <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="glyphicon glyphicon-remove-circle" ></span></button>';
				           	echo '</div>';
					        echo '<table class="table table-striped table-hover">';
					        	echo '<tr>';
					        		echo '<td style="padding-right: 8px;width: 463px;">';
							        	echo '<div style="width: 455px;height: 656px;">';
							        	    echo '<img class="hook hidden-xs hidden-sm bordeimg2" src="'.$pel["nombre_imagen"].'" width="370px" height="550px">';
							        	echo '</div>';
					        		echo '</td>';
					        		echo '<td style="padding-left: 8px;">';
					        		   echo ' <div>';
					        		    	echo '<div class="modal-body">';
				                         		echo '<h1 class="modal-title" id="myModalLabel" style="text-align: center">'.utf8_encode($pel["nombre_contenido"]).'</h1><br>';
				                       		echo '</div>';
						                	echo '<div class="modal-body" id="tabla-usuarios">';
								              echo '<table class="table table-striped table-hover">';
								                  echo '<tr>';
								                    echo '<td><h4>Sinopsis:</h4>';
								                    echo '</td>';
								                    echo '<td> <h5>'.utf8_encode($pel["descripcion_contenido"]).'</h5></td>';
								                    
								                  echo '</tr>';
								                  echo ' <tr>';
								                   echo ' <td><h4>Fecha de lanzamiento: </h4>';
								                    echo '</td>';
								                   echo ' <td><br><h5>'.$pel["fecha_lanzamiento"] .'</h5></td>';
								                  echo '</tr>';
								                  echo '<tr>';
								                    echo '<td><h4>Clasificación:</h4>';
								                    echo '</td>';
								                    echo '<td> <h5>'.$pel["nombre_esrb"] .'</h5></td>';
								                  echo '</tr>';
								                   echo '<tr>';
								                    echo '<td><h4>Duracion:</h4>';
								                    echo '</td>';
								                    echo '<td> <h5>'.$pel["duracion_contenido"] .'Minutos </h5></td>';
								                  echo '</tr>';
								                 
								                  echo '<tr>';
								                    echo '<td><h4>Calificacion Promedio:</h4>';
								                    echo '</td>';
								                   echo ' <td> <h5>'.$pel["calificacion_promedio"].'</h5></td>';
								                  echo '</tr>';
								              echo '</table>';
								          	echo '</div>';
								           	echo '<div class="modal-footer">';
								            	echo '<button type="button" class=" btn btn-success submit" data-dismiss="modal">Cerrar</span></button>';
								            	 echo '<button type="button" class="btn btn-danger" id="btn-reproducir" data-loading-text="Abriendo..." >Ver Película</button>';
								          	echo '</div>		';
					        			echo '</div>   ';
					                echo '</td>';
					        	echo '</tr> ';
					        echo '</table>';
			
				
		

		break;

	default:
		# code...
		break;
}
?>