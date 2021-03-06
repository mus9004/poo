<?php
  include_once("class/class-conexion.php");
  $conexion = new Conexion();
  $conexion->establecerConexion();
  $resultadoUsuarios = $conexion->ejecutarInstruccion("SELECT codigo_persona, codigo_genero,
    i.codigo_imagen,
    codigo_tipo_usuario,
    nombre_persona,
    apellido_persona,
    fecha_nacimiento,
    nombre_usuario,
    contrasena,
    i.nombre_imagen
    FROM tbl_personas p 
    LEFT JOIN tbl_imagen i
    ON p.codigo_imagen = i.codigo_imagen");

?>

<!DOCTYPE html>
<html>
<head>
	<title>Netflix</title>
	<meta charset="utf-8">
	<title>Netbit</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/icon" href="images/netbit.ico" />
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/jquery.min.js" ></script>
     <script type="text/javascript">
      $.ajax({      
      url:"acceso.php",
      success:function(respuesta){
        if (respuesta==1) {
          location.href = "index.html";
        } 
      }
    });
   </script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* 
    these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
     
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
            <button type="button" id="btn-sesion" class="btn btn-danger submit">Cerrar Sesion</button>
          </form>
        </div>
  </div>

   <div class="container">
      <div class="diseno" style="margin-left: 350px">
              <h1>Usuarios Registrados</h1>
            </div>
          <table class="table">
          <tr>
            <td style="align-content: center;">
              <Strong><h3>Informacion del Usuario</h3></Strong>
            </td>
            <td style="align-content: center;">
             <Strong><h3>Imagen</h3></Strong>
            </td>
          </tr>
          <?php 

          while($fila=$conexion->obtenerRegistro($resultadoUsuarios)){
              echo '<tr><td>'.$fila["nombre_persona"].' '.$fila["apellido_persona"].' <br>'.$fila["nombre_usuario"].'</td><td><a href="http://memeschistosos.net/wp-content/uploads/2016/07/memes-de-ingenieros-leonidas.jpg"><img src="'.$fila["nombre_imagen"].'" style="width: 100px;height: 100px"></a></td></tr>';
            }
          ?>
        </table><br>
    </div>
        
 <div class="container">
       <button type="button" id="btn-admin-perfiles" class="btn btn-primary btn-lg btn-block texto disenoBoton" style="margin-left: 300px">Administrar Perfiles</button>  <br><br><br><br>
 </div>

<div > 
       <div style=" margin-left: 100px; margin-right: 100px; margin-right: 100px">
             <div class="footer-top" style="margin: 30px auto 0;width: 1050px;">
                  <div class="site-footer">
                       <p class="footer-top">¿Tienes problemas? llama al &nbsp;<a  style="text-decoration: none" class="footer-top-a" href=" +(504) 9206-0911 (HND)"> +(504) 9206-0911 (HND)</a>
                         </p>
                 
                           <table class="site-footer" style="border-color: #999797; border: 0px; width: 980px;">
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



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
     <script>
      $("#logo").click(function(){
          location.href="index.html";
      });
    </script>


 <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
   
  <script type="text/javascript">
    $("#btn-sesion").click(function(){
      location.href ="cerrar_sesion.php";
    });
    $("#btn-admin-perfiles").click(function(){
      location.href ="Cuenta.php";
    });

  </script>
    
</body>
</html>