<!DOCTYPE html>
<html lang="es" id="pagina">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/icon" href="images/netbit.ico" />

	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos_reproductor.css">
	<script src="codoPlayer/CodoPlayer.js"></script>
    
	<link rel="stylesheet" href="flowplayer/skin/skin.css">
	<script src="flowplayer/jquery-1.11.2.min.js"></script>
	<script src="flowplayer/flowplayer.min.js"></script>

	<script src="https://content.jwplatform.com/libraries/x9XVJGsW.js" ></script>

	<link href="video-js/video-js.css" rel="stylesheet" type="text/css">
	<link href="video-js/skin.css" rel="stylesheet" type="text/css">
  	<script src="video-js/video.js"></script>
  	<script src="video-js/lang/es.js"></script>
  	<script src="videojs-playlist/dist/videojs-playlist.js"></script>
     <link href="css/normalize-card.min.css" type="text/css" rel="stylesheet">
  	<script>
  		var title = "METRO (Cortometraje)";
  		var link = "videos/METRO.mp4";
		var poster = "img/poster/metro.png";
  	</script>
	<title>Reproductor</title>
</head>
<body style="background-color: rgb(0,0,0)">
 <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: #000000">
        <div class="container-fluid">
            <div class="navbar-header">
               <div class="container" >
                  <div class="row">
                     <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6">
                         <a href="index.html" style="text-decoration: none"><h1 class=" signupBasicHeader" style="color: #E50914;font-weight: 900;font-size: 250%;font-style: oblique;margin-bottom: 0px;border-top-width:10px;padding-top: 20px;">NETBIT</h1></a>
                    </div>
                <!-- icono de netbit -->
                       <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6"> 
                            <a href="index.html" style="text-decoration: none; color: #E50914;" class="authLinks signupBasicHeader" >Cerrar sesión</a>
                      </div>
                 </div>
               </div>
            </div>
        </div>
    </nav><br><br>
	<div class="margen">
		<div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center; margin-top:35px">
				<button type="button"  id="btn-codoPlayer" class="btn simplicity btn-submit btn-large" style="padding-left: 10px; width:137px ">Codo Player</button>
				<button type="button" class="btn simplicity btn-submit btn-large" style="padding-left: 10px; width:137px " id="btn-flowPlayer">&nbsp;Flowplayer</button>
				<button type="button" class="btn simplicity btn-submit btn-large" style="padding-left: 10px; width:137px " id="btn-JWPlayer">&nbsp;&nbsp;JW Player</button>
				<button type="button" class="btn simplicity btn-submit btn-large" style="padding-left: 10px; width:137px " id="btn-videoJs">&nbsp;&nbsp;&nbsp;Video JS</button>
			</div>
			<input type="hidden" id = "obtenerVideo" value="<?php echo $_GET["accion"];?>">
			<div id="resultado"></div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="reproductor">
				<div id="codoPlayer" class="separar-arriba">
					<div id="my-play"></div>
				</div>
				<div id="flowPlayer" class="separar-arriba">
					<div id="player" class="fp-full fp-edgy fp-outlined"></div>
				</div>
				<div id="JWPlayer" class="separar-arriba">
				<div id="reproduce"></div>
				</div>
				<div id="videoJs" class="separar-arriba">
				<video id="my-player" class="video-js vjs-default-skin" ></video>
				</div>
            </div>
         </div>
    </div>
    <br>
    <br>
    <div>
    </div><br><br><br>
         <div class="footer-top" >
                  <div class="site-footer"><br><br><br>
                       <p class="footer-top" style="color: white">¿Tienes problemas? llama al &nbsp;<a  style="text-decoration: none" class="footer-top-a" href=" +(504) 9206-0911 (HND)"> +(504) 9206-0911 (HND)</a>
                         </p>
                 
                           <table class="site-footer" style="border-color: #999797;">
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
						<div class="lang-selection-container">
						     <div class="ui-select-wrapper">
						         <label class="ui-label no-display">
						             <span class="ui-label-text"></span>
						           </label>
						           <div class="select-arrow medium prefix globe">          
						               <select class="ui-select medium"> 
						                   <option>Español</option>
						                   <option>English</option>
						               </select>
						           </div>
						      </div>
						 </div>
                 </div>
                <p style="margin-top: 20px; color: #999797; padding-top: 20px;">Netbit Honduras</p>
         </div>
      </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/control-reproductor.js"></script>
</body>
</html>