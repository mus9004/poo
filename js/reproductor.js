$("#btn-reEmbed").click(function(){
	/*$("#btn-reEmbed").button("toggle");
	$("#btn-jwPlayer").button("reset");
	$("#btn-jwPlayer").attr('checked', 'false');
	$("#reproductor").empty();*/
	$("#reproductor").empty();
	$.ajax({
		url:"ajax/procesar-reproductor.php?accion=1",
		method:"POST",
		dataType:"html",
		success:function(respuesta){
			$("#reproductor").html(respuesta);	
		}
	});
});
var respaldo = '<meta charset="utf-8">'+
    '<meta http-equiv="X-UA-Compatible" content="IE=edge">'+
    '<meta name="viewport" content="width=device-width, initial-scale=1">'+
	'<link rel="icon" href="img/icono.png">'+

	'<link rel="stylesheet" href="css/bootstrap.min.css">'+
	'<link rel="stylesheet" href="css/estilos_reproductor.css">'+
	'<title></title>'+
	'<script src="https://content.jwplatform.com/libraries/x9XVJGsW.js"></script>';
$("#btn-jwPlayer").click(function(){
	/*$("#btn-reEmbed").button("reset");
	$("#btn-reEmbed").attr('checked', 'false');
	$("#btn-jwPlayer").button("toggle");
	$("#reproductor").empty();*/
	$("#reproductor").empty();
	$("#cabeza").empty();
	$.ajax({
		url:"ajax/procesar-reproductor.php?accion=2",
		method:"POST",
		dataType:"html",
		success:function(respuesta){
			$("#cabeza").html(respaldo);
			$("#reproductor").empty();
			//alert(respuesta);
			$("#reproductor").html(respuesta);
		}
	});
});

$(document).ready(function(){
	$("#btn-jwPlayer").button("toggle");
	$.ajax({
		url:"ajax/procesar-reproductor.php?accion=2",
		method:"POST",
		dataType:"html",
		success:function(respuesta){
			$("#reproductor").html(respuesta);	
		}
	});
});