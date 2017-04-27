$("#btn-login").click(function(){
	// alert("ejecutando JS");
	var parametros="inputEmail="+$("#inputEmail").val() +"&"+
	"inputPassword="+$("#inputPassword").val();

$.ajax({			
			url:"ajax/acciones.php?accion=1",
			data:parametros,
			method: "POST",
			success:function(resultado){
				 $("#resultado").html(resultado);
				// alert("aqui estoy");

			
			},
			error:function(){
				alert("algo esta mal");

			}
		});
});
// $(document).ready(function(){