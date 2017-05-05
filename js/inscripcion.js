
$(document).ready(function(){
    fechaprueba();
    $("#dv-registrar").hide();
});

function ocultar(){
    $("#dv-continuar").hide();
	$("#dv-registrar").show();

};

function fechaprueba(){
	  $.ajax({
	        url: "ajax/inscripcion.php?accion=1", 
		    method:"POST",
		    success: function(result){
		      $("#fecha").html(result);
	        }
	 });

}
function cargardatos(){
	 $("#tarjet2").hide();
	 $("#sp-text2").hide();
	  $.ajax({
	        url: "ajax/inscripcion.php?accion=3", 
		    method:"POST",
            dataType:"json",
		    success: function(result){
		      $("#txt-fecha").html(result.F);
		      $("#tarifa").html(result.P);
		      $("#info-plan").html(result.D);
              $("#price").html(result.T);
	        }
	 });	  
}

$("#btn-cambiar").click(function(){
    // Se verifica que el valor del campo este vacio
	 $("#btn-registrar").button("loading");
        var suscripcion="txt-precio="+$('input:radio[name=options]:checked').val();

			$.ajax({
				url:"ajax/inscripcion.php?accion=4",
				data:suscripcion,
				method:"POST",
				dataType:"json",
				success:function(result){
                 if (result.codigo_resultado==0){
				    alert(result.mensaje);
					$("#btn-registrar").button("reset");
                 }
                 if (result.codigo_resultado==1){
				    window.location="registrotarjeta-modal.html";
                 }
				}
	        });
});



	
$("#btn-registrar").click(function(){
    // Se verifica que el valor del campo este vacio

	 $("#btn-registrar").button("loading");
        var suscripcion="txt-correo="+$("#txt-correo").val()+"&"+
					"txt-contrasena="+$("#txt-contrasena").val()+"&"+
					"txt-confirmar-contrasena="+$("#txt-confirmar-contrasena").val()+"&"+
					"txt-precio="+$('input:radio[name=options]:checked').val();

			$.ajax({
				url:"ajax/inscripcion.php?accion=2",
				data:suscripcion,
				method:"POST",
				dataType:"json",
				success:function(result){
                 if (result.codigo_resultado==0){
				     alert(result.mensaje);
					$("#btn-registrar").button("reset");
                 }
                 if (result.codigo_resultado==1){
				    window.location="registrotarjeta-modal.html";
                 }
				}
	        });
});

function cambiarPlan(){
	window.location="planes.html";
}

$("#iniciarsesion").click(function(){
		location.href ="login.html";
})

$("#comenzarpago").click(function(e){
	
   var datosT="ipt-nombre="+$("#ipt-nombre").val()+"&"+
			 "ipt-apellido="+$("#ipt-apellido").val()+"&"+
			 "ipt-numTarjet="+$("#ipt-numTarjet").val()+"&"+
			 "ipt-fechaV="+$("#ipt-fechaV").val()+"&"+
			 "ipt-codigoV="+$("#ipt-codigoV").val();
			 //alert(datosT);
        $("#comenzarpago").button("loading");
			$.ajax({
				url:"ajax/inscripcion.php?accion=5",
				data:datosT,
				method:"POST",
				dataType:"json",
				success:function(result){
                 if (result.codigo_resultado==0){
				  setTimeout(function() {
                     $("#comenzarpago").button("reset");
                      alert(result.mensaje);
                   }, 2000);
				 
                 }
                 if (result.codigo_resultado==1){
                      setTimeout(function() {
                     $("#comenzarpago").button("reset");
                       alert(result.mensaje);
                       window.location="quienUsaraNetflix.html";
                   }, 2900);
				    
                 }
				}
	        });

	e.preventDefault();		
})

function cart(){
	$.ajax({			
			url:"acceso.php",
			success:function(respuesta){
				if (respuesta==1) {
					location.href = "index.html";
				}	
			}
	});
}


        




		