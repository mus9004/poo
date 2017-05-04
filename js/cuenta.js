$(document).ready(function(){
	// alert("hola");

			$("#txt-email").hide();
			$("#txt-password").hide();
			$("#hd").hide();
			$("#dvd").hide();
			$("#ultra").hide();
			$("#hd1").hide();
			$("#dvd1").hide();
			$("#ultra1").hide();
			$("#activar").hide();

		
		$.ajax({

			url:"ajax/acciones.php?accion=2",
			method: "POST",
			dataType:"json",
			success:function(resultado){
				$("#nombreUsuario").html(resultado.usuario);
				$("#correo").html(resultado.correo);
			  
			},
			error:function(){
				alert("algo esta mal");

			}
		});	
		
	

});
$("#btn-guardar").click(function(){
 var parametros="txt-email="+$("#txt-email").val()+"&"+"txt-password="+$("#txt-password").val()+"&"+
 "txt-passwordNueva="+$("#txt-passwordNueva").val();

 $.ajax({

			url:"ajax/acciones.php?accion=3",
			data: parametros,
			method: "POST",
			dataType:"json",
			success:function(resultado){
				if (resultado.codigo==0) 
				$("#resultado").html("<div ><i class='fa fa-close' style='color:#CC0000' aria-hidden='true'>"+resultado.mensaje+"</i></div>");
				
                

			  
			},
			error:function(){
				alert("algo esta mal");

			}
		});	
  $.ajax({

			url:"ajax/acciones.php?accion=4",
			data: parametros,
			method: "POST",
			success:function(resultado){
				// $("#resultadoCorreo").html(resultado);

			  
			},
			error:function(){
				alert("algo esta mal");

			}
		});	
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

$("#btn-continuar").click(function(){
			$.ajax({
	        url: "class/class-procesar.php", 
		        method:"POST",
		        success: function(result){
		              location.href ="cartelera.html";
	          }
	      	});

    		location.href ="cartelera.html";
    	});
