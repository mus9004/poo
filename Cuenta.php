<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Tipo Usuario</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	 <link rel="icon" type="image/icon" href="images/netbit.ico" />
	 <link rel="stylesheet" type="text/css" href="css/signin.css">

	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/jquery.min.js" ></script>

</head>
<body>
	<div style="background-color: #D8D8D8; border: 1px;size: 150px;border-style: solid;border-color: #6E6E6E; padding: 5px">
		<div class="navbar-header">
		<h1 style="color: #B40431;font-weight: 900; font-size: 450%;font-style: oblique; ">NETBIT</h1></div> 
		<!--<div class="navbar-collapse collapse">
			<input type="button" name="btn-inicioSesion" class="btn btn-warning" >
		 </div>-->
		<div id="navbar" class="navbar-collapse collapse" style="padding-top: 20px">
          <form class="navbar-form navbar-right">  
            <button type="button" class="btn btn-success">Iniciar Sesion</button>
          </form>
        </div>
	</div>
	<div style="margin-left: 100px;margin-right: 100px;">
	<h1>Mi cuenta</h1>
	<table style="border-collapse: collapse;width: 100%;">
		<tr style="border-bottom: 3px solid #ddd;">
			<td><div style="float: left;"><h3>Membresia</h3></div> </td>
		</tr>
		<tr>
			<td>
				<div class="col-md-1  col-lg-1"></div>
				<div class="col-md-8 col-lg-8">Juan Perez</div>  
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

	<div class="cuadro1" style="margin-top: 200px;">
          
        <span style="margin-left: 45px;">¿Tienes preguntas? Llama al<a class="condiciones" href=""> +(504) 9206-0911 (HND)</a></span>
        <ul>
          <li><a href="">Terminos de las tarjetas de regalo</a></li>
          <li><a href="">Terminos de uso</a></li>
          <li><a href="">Declaracion de privacidad.</a></li>
        </ul><br>
        <select class="form-control idiomas">
          <option>Español</option>
          <option>English</option>
        </select>
              
    </div>
    <script type="text/javascript">
    	$(document).ready(function(){
			$("#txt-email").hide();
			$("#txt-password").hide();
			$("#hd").hide();
			$("#dvd").hide();
			$("#ultra").hide();
			$("#hd1").hide();
			$("#dvd1").hide();
			$("#ultra1").hide();
			$("#activar").hide();
			
		});

		$("#btn-continuar").click(function(){

    		location.href ="cartelera.html";
    	});

    	$("#Ccorreo").click(function(){

    		$("#txt-email").show("swing");
    	});
    	$("#contrasena").click(function(){
    		$("#txt-password").show("swing");
    	});
    	$("#plan").click(function(){
    		$("#hd").show("swing");
			$("#dvd").show("swing");
			$("#ultra").show("swing");
    	});
    	$("#Agregar").click(function(){
    		$("#hd1").show("swing");
			$("#dvd1").show("swing");
			$("#ultra1").show("swing");
    	});
    	$("#control").click(function(){
    		$("#activar").show("swing");
    	});
    </script>
    

</body>
</html>