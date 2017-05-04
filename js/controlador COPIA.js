$("#btn-login").click(function(){
	var parametros="inputEmail="+$("#inputEmail").val() +"&"+
	"inputPassword="+$("#inputPassword").val();

$.ajax({			
			url:"ajax/acciones.php?accion=1",
			data:parametros,
			method: "POST",
			dataType:"json",
			success:function(respuesta){
				if (respuesta.codigo_resultado==0) 
					$("#resultado").html('<div style="color: red"> '+'no se pudo conectar'+"</div>");
				    if (respuesta.codigo_resultado==1) 	
					 location.href ="cartelera.html";
					if (respuesta.codigo_resultado==2) 
					location.href ="registropeliculas.php";	
				     
				      
				
				$("#btn-login").button("reset");
		
			},
			error:function(){
				alert("algo esta mal");

			}
		});


});

