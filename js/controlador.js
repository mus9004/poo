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
					$("#resultado").html('<div style="color: red"> '+respuesta.mensaje+"</div>");
				if (respuesta.codigo_resultado==1) 
					location.href="cartelera.html";
				$("#btn-login").button("reset");
		
			},
			error:function(){
				alert("algo esta mal");

			}
		});


});

