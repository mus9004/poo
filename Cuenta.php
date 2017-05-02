<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Netbit</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	 <link rel="icon" type="image/icon" href="images/netbit.ico" />
	 <link rel="stylesheet" type="text/css" href="css/signin.css">

	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/jquery.min.js" ></script>

</head>
<body>
	<div style="background-color: #070707; border: 1px;size: 150px;border-style: solid;border-color: #6E6E6E; padding: 5px">
        <div class="container" >
	         <div class="row">
	            <div class="col-xs-6 col-md-6 col-sm-6 col-lg-6">
	            	  <a href="index.html" style="text-decoration: none"><h1 class=" signupBasicHeader" style="color: #E50914;font-weight: 900;font-size: 320%;font-style: oblique;margin-bottom: 0px;border-top-width:10px;padding-top: 19px;margin-top: 0px;padding-left: 15px;">NETBIT</h1></a></div>
	              <!-- icono de netbit -->
	            <div id="navbar" class="col-xs-6 col-md-6 col-sm-6 col-lg-6 " style="padding-top: 20px; padding-right: 0px;">
                    <form class="navbar-form navbar-right" style="padding-right: 0px">  
                       <a type="button" class="btn btn-danger submit" href="index.html">Cerrar Sesion</a>
                    </form>
                </div>
	         </div>
           </div>
        

		<!--<div class="navbar-header">
		<h1 style="color: #B40431;font-weight: 900; font-size: 450%;font-style: oblique; ">NETBIT</h1></div> 
         <div class="navbar-collapse collapse">
			<input type="button" name="btn-inicioSesion" class="btn btn-warning" >
		 </div>-->
		
	</div><br><br>
	<div style="margin-left: 100px;margin-right: 100px;">
	<h1>Mi cuenta</h1>
	<table style="border-collapse: collapse;width: 100%;">
		<tr style="border-bottom: 3px solid #ddd;">
		
			<td><div style="float: left;"><h3>Membresia</h3></div> </td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div>
				 <div id ="resultado"></div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div> 
				<div class="col-md-7 col-lg-7">Correo@yahoo.com</div> 
				<div class="col-md-1 col-lg-1"><span style="color: #4286f4"><label id="Ccorreo"><a>cambiar</a></label> </span></div>
				<div class="col-md-3 col-lg-3"><input type="email" name="txt-email" id="txt-email" class="form-control"  style="size: 20%"></div>
			</td>
			
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div> 
				<div class="col-md-7 col-lg-7">Contraseña ********</div> 
				<div class="col-md-1 col-lg-1  "><span style="color: #4286f4"><label id="contrasena"><a>cambiar</a></label> </span></div>
				<div class="col-md-3 col-lg-3"><input type="password" name="txt-password" id="txt-password" class="form-control"  style="size: 20%"></div>
			</td>
		</tr>
		
		<tr style="border-bottom: 3px solid #ddd;">
			<td><div style="float: left;"><h3>Planes</h3></div> </td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div> 
				<div class="col-md-7  col-lg-7"><h4>Ultra HD</h4> </div> 
				<div lass="col-md-1  col-lg-1"><span style="color: #4286f4"><label id="plan"><a>cambiar</a></label> </span></div>
				<div class="col-md-3 col-lg-3">
					<label id="hd"><input type="radio" name="txt-plan" id="txt-hd"   style="size: 20%">HD</label>
					<label id="dvd"><input type="radio" name="txt-plan" id="txt-dvd"   style="size: 20%">DVD</label>
					<label id="ultra"><input type="radio" name="txt-plan" id="txt-ultra"  style="size: 20%">ultra HD</label>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div> 
				<div class="col-md-7  col-lg-7"><h4></h4>. </div> 
				<div lass="col-md-1  col-lg-1"><span style="color: #4286f4"><label  id="Agregar"><a>cambiar</a> </label> </span></div>
				<div class="col-md-3 col-lg-3">
					<label id="hd1"><input type="radio" name="txt-plan" id="txt-hd1"   style="size: 20%">HD</label>
					<label id="dvd1"><input type="radio" name="txt-plan" id="txt-dvd1"   style="size: 20%">DVD</label>
					<label id="ultra1"><input type="radio" name="txt-plan" id="txt-ultra1"  style="size: 20%">ultra HD</label>
				</div>
				
			</td>
		</tr>
		<tr style="border-bottom: 3px solid #ddd;">
			<td><div style="float: left;"><h3>Configuracion</h3></div> </td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div> 
				<div class="col-md-7 col-lg-7">	<a id="control"> Control Parental</a></div> 
				<div class="col-md-1 col-lg-1">	<a id="activar"> Activar</a></div> 
				
			</td>
		</tr>
	</table>
		<br><br><br>
		<input type="button" name="btn-continuar" id="btn-continuar" class="btn btn-success" value="Continuar" style="font-size: 140%">
		
	</div>

<div class="container">
		<div  style="margin-left: 100px;margin-right: 100px;margin-right: 100px">
               <div class="footer-top" style="margin: 30px auto 0;width: 1050px;">
            <div class="site-footer">
                   <p class="footer-top">
                 ¿Tienes problemas? llama al &nbsp;<a  style="text-decoration: none" class="footer-top-a" href=" +(504) 9206-0911 (HND)"> +(504) 32358952 (HND)</a>
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
   
  <!-- //   	$(document).ready(function(){
		// 	$("#txt-email").hide();
		// 	$("#txt-password").hide();
		// 	$("#hd").hide();
		// 	$("#dvd").hide();
		// 	$("#ultra").hide();
		// 	$("#hd1").hide();
		// 	$("#dvd1").hide();
		// 	$("#ultra1").hide();
		// 	$("#activar").hide();
			
		// });

		// $("#btn-continuar").click(function(){

		// 	var parametros={
		//         "txt-email" :$("#txt-email").val(),
		//         "txt-password" :$("#txt-password").val(),
		        
		        
		// 		};
		// 	$.ajax({
	 //        url: "class/class-procesar.php", 
		//         method:"POST",
		//         success: function(result){
		//               location.href ="cartelera.html";
	 //          }
	 //      	});

  //   		location.href ="cartelera.html";
  //   	});

   //  	$("#Ccorreo").click(function(){

   //  		$("#txt-email").show("swing");
   //  	});
   //  	$("#contrasena").click(function(){
   //  		$("#txt-password").show("swing");
   //  	});
   //  	$("#plan").click(function(){
   //  		$("#hd").show("swing");
			// $("#dvd").show("swing");
			// $("#ultra").show("swing");
   //  	});
   //  	$("#Agregar").click(function(){
   //  		$("#hd1").show("swing");
			// $("#dvd1").show("swing");
			// $("#ultra1").show("swing");
   //  	});
   //  	$("#control").click(function(){
   //  		$("#activar").show("swing");
   //  	}); -->
   <script type="text/javascript" src="js/cuenta.js"></script>
    

</body>
</html>