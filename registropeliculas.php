<?php session_start(); 
	if(isset($_SESSION['codigo_usuario']))
		header("Location: index.html");
?>
<?php
	include_once("class/class-conexion.php");
	$conexion = new Conexion();
	$conexion->establecerConexion();
	$resultadoCategorias = $conexion->ejecutarInstruccion("SELECT codigo_categoria, nombre_categoria FROM tbl_categorias");

	$resultadoSubtitulos = $conexion->ejecutarInstruccion("SELECT codigo_subtitulo, nombre_subtitulo, tbl_idiomas_codigo_idioma FROM tbl_subtitulos");

	$resultadoClasificacion = $conexion->ejecutarInstruccion("SELECT codigo_esrb, codigo_imagen, nombre_esrb FROM tbl_esrb");


	$resultadoTipoContenido = $conexion->ejecutarInstruccion("SELECT codigo_tipo_contenido, nombre_tipo_contenido FROM tbl_tipo_contenido");
?>




<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Netbit</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	 <link rel="icon" type="image/icon" href="images/netbit.ico" />

	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script>
     $(function(){
        $("input[name='file']").on("change", function(){
            var formData = new FormData($("#formulario")[0]);
            var ruta = "ajax-imagen.php";
            $.ajax({
                url: ruta,
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function(datos)
                {
                    $("#respuesta").html(datos);
                }
            });
        });
     });
    </script>

      <script>
     $(function(){
        $("input[name='filev']").on("change", function(){
            var formData = new FormData($("#formulario1")[0]);
            var ruta = "ajax-video.php";
            $.ajax({
                url: ruta,
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function(datos)
                {
                    $("#respuesta").html(datos);
                }
            });
        });
     });
    </script>

</head>
<body>
	<div style="background-color: #000000; border: 1px;size: 150px;border-style: solid;border-color: #6E6E6E; padding: 5px">
	      <div class="navbar-header">
	       <a href="index.html" style="text-decoration: none"><h1 class=" signupBasicHeader" style="color: #E50914;font-weight: 900;font-size: 370%;font-style: oblique;margin-bottom: 0px;border-top-width:10px;padding-top: 19px;margin-top: 0px;padding-left: 15px;">NETBIT</h1></a>
	   </div> 
	    <!--<div class="navbar-collapse collapse">
	      <input type="button" name="btn-inicioSesion" class="btn btn-warning" >
	     </div>-->
	    <div id="navbar" class="navbar-collapse collapse" style="padding-top: 20px">
	          <form class="navbar-form navbar-right">
	          	<a href="cerrar_sesion.php" class="btn btn-success">Cerrar Sesión</a>  
	            <button type="button" id="btn-administrar-usuarios" class="btn btn-success">Ver Usuarios</button>
	          </form>
	        </div>
	  </div>
	<div style="margin-left: 100px;margin-right: 100px;margin-top: 80px;">
	<h1><strong>Registro de Archivos</strong> </h1>
		<h4>
		<div class="col-md-6  col-lg-6">
			<table class="table ">
				<tr>
					<td>
						Nombre Archivo:
					</td>
					<td><input type="text" id="txt-nombre" name="txt-nombre" required class="form-control"></td>
				</tr>
				<tr>
					<td>
						Descripcion:
					</td> 
					<td><input type="text" id="txt-descripcion" required class="form-control"></td>
				</tr>
				<tr>
					<td>
						Fecha de lanzamiento:
					</td> 
					<td><input type="date" id="dt-fecha"  class="form-control"></td>
				</tr>
				<tr>
					<td>
						Duracion Del archivo:
					</td> 
					<td><input type="text" id="txt-duracion" required class="form-control"></td>
				</tr>
				<tr>
					<td>
						Calificacion:
					</td> 
					<td><input type="text" id="txt-calificacion" required class="form-control"></td>
				</tr>
				<tr>
					<td>
						Tipo de contenido:
					</td>
					<td>
					<?php
						while($fila=$conexion->obtenerRegistro($resultadoTipoContenido)){
							echo '<label><input type="radio" class="check" name="rbt-tipo-contenido" id="rbt-tipo-contenido" 
								value="'.$fila["codigo_tipo_contenido"].'">'.$fila["nombre_tipo_contenido"].'</label><br>';
						}
					?>
					</td>
				</tr>
				<tr>
					<td>
						Clasificacion:
					</td>
					<td>
					<?php
						while($fila=$conexion->obtenerRegistro($resultadoClasificacion)){
							echo '<label><input type="radio" class="check" name="rbt-clasificacion" id="rbt-clasificacion" 
								value="'.$fila["codigo_esrb"].'">'.$fila["nombre_esrb"].'</label><br>';
						}
					?>
					</td>
				</tr>
				<tr>
					<td>
						Url:
					</td>
					<td><input type="text" id="txt-url" name="txt-url" class="form-control"></td>
				</tr>
				<tr>
					<td colspan="2">
					<button id="btn-guardar" class="btn btn-danger">
						Guardar
					</button>
					<!--<button id="btn-limpiar" class="btn btn-success">
						Limpiar
					</button>-->
					</td>
					</tr>

			</table>
		</div>
		<div class="col-md-6 col-lg-6">
			<table class="table">
				<tr>	
				<td>Categoria:</td>
					<td>
					<?php
						while($fila=$conexion->obtenerRegistro($resultadoCategorias)){
							echo '<label><input type="checkbox" class="check" name="chk-categorias[]" id="chk-categorias[]" 
								value="'.$fila["codigo_categoria"].'">'.utf8_encode($fila["nombre_categoria"]).'</label><br>';
						}
					?>
					</td>
				</tr>
				<tr>	
				<td width="30%" >Subtitulos:</td>
					<td>
					<?php
						while($fila=$conexion->obtenerRegistro($resultadoSubtitulos)){
							echo '<label><input type="checkbox"  class="check" name="chk-sub-titulos[]" id="chk-sub-titulos[]" 
								value="'.$fila["codigo_subtitulo"].'">'.utf8_encode($fila["nombre_subtitulo"]).'</label><br>';
						}
					?>
					</td>
				</tr>
				<tr>
					<td >
						Nombre de la <br> Imagen:
					</td>
					<td><input type="text" id="txt-imagen" name="txt-imagen" placeholder="img/img/001.jpg" required class="form-control"></td>
				</tr>

				<tr>
					<td colspan="2">
					 <form method="post" id="formulario" enctype="multipart/form-data">
					    Subir imagen: <input type="file" name="file">
					 </form>
					  <div id="respuesta"></div>
					</td>
				</tr>

				<tr>
					<td colspan="2">
					 <form method="post" id="formulario1" enctype="multipart/form-data">
					    Subir Video: <input type="file" name="fileV">
					 </form>
					  <div id="respuesta"></div>
					</td>
				</tr>
			</table><br><br><br><br><br>
		</div>  
		</h4>
		<div id="guardar">
			
		</div>


	</div>
	<br><br><br><br>
	  <div class="col-md-12 col-lg-12" > 
       <div style=" margin-left: 100px; margin-right: 100px; margin-right: 100px">
             <div class="footer-top" style="margin: 30px auto 0;width: 1050px;">
                  <div class="site-footer">
                       <p class="footer-top">¿Tienes problemas? llama al &nbsp;<a  style="text-decoration: none" class="footer-top-a" href=" +(504) 9206-0911 (HND)"> +(504) 9206-0911 (HND)</a>
                         </p>
                 
                           <table class="site-footer" style="border-color: #999797; border: 0px; width: 1100px;">
                            <tr >
                              <td style="color: #999797"><a href="PreguntasFrecuentes.html" style="text-decoration: none">Preguntas frecuentes</a></td>
                              <td style="color: #999797"><a href="Ayuda.html" style="text-decoration: none">Centro de ayuda</a></td>
                              <td style="color: #999797"><a href="Cuenta.php"  style="text-decoration: none">Cuenta</td>
                              <td style="color: #999797"><a href="#"  style="text-decoration: none">Prensa</a></td>
                            </tr>

                            <tr>
                              <td style="color: #999797"><a href="#"  style="text-decoration: none">Relaciones con inversionistas</a></td>
                              <td style="color: #999797"><a href="#"  style="text-decoration: none">Empleo</a></td>
                              <td style="color: #999797"><a href="#"  style="text-decoration: none">Formas de ver</a></td>
                              <td style="color: #999797"><a href="TerminosdeUso.html"  style="text-decoration: none">Términos de uso</a></td>
                            </tr>
                            <tr>
                              <td style="color: #999797"><a href="Privacidad.html"  style="text-decoration: none">Privacidad</a></td>
                              <td style="color: #999797"><a href="Preferenciasdecookies.html"  style="text-decoration: none">Preferencias de cookies</a></td>
                              <td style="color: #999797"><a href="Velocidad.html"  style="text-decoration: none">Prueba de velocidad</a></td>
                              <td style="color: #999797"><a href="originales.html"  style="text-decoration: none">Originales de NetBit</a></td>
                            </tr>         
                           </table><br><br>
                  <div>
                      <div class="glyphicon icon-globe"> 
                      </div>
                      <div>
                           <select class="form-control" style="padding-right: 0px; width: 134px;">
                               <option value="1">ESPAÑOL</option>
                               <option value="2">INGLES</option>
                           </select>
                      </div>
                 </div>
                <p style="margin-top: 20px; color: #999797; padding-top: 20px;">Netbit Honduras</p>
         </div>
      </div>
    </div>
  </div>

	 <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
   <script src="js/controlador-peliculas.js"></script>
   
  <script type="text/javascript">
    $("#btn-administrar-usuarios").click(function(){
      location.href ="quienEstaViendo.html";
    });

  </script>

</body>
</html>