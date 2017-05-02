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
			success:function(resultado){
				$("#resultado").html(resultado);
				
			    
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
// $("#btn-continuar").click(function(){

// 			var parametros={
// 		        "txt-email" :$("#txt-email").val(),
// 		        "txt-password" :$("#txt-password").val(),
		        
		        
// 				};
// 			$.ajax({
// 	        url: "class/class-procesar.php", 
// 		        method:"POST",
// 		        success: function(result){
// 		              location.href ="cartelera.html";
// 	          }
// 	      	});

//     		location.href ="cartelera.html";
//     	});
