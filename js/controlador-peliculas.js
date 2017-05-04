$(document).ready(function(){	
	$("#btn-guardar").click(function(){
		var ct= new Array();  
        $("input:checkbox[id='chk-categorias[]']:checked").each(function(){
              ct.push($(this).val());
        }); 

		var st= new Array();  
        $("input:checkbox[id='chk-sub-titulos[]']:checked").each(function(){
              st.push($(this).val());
        }); 

		 /* var st= new Array();
		 $("input:checkbox:checked").each(function() {
             st.push($(this).val());
           });*/

		var parametros = "txt-nombre=" + $("#txt-nombre").val() + "&" + 
			"txt-descripcion="+$("#txt-descripcion").val()+ "&" +
			"dt-fecha="+$("#dt-fecha").val() + "&" +
			"txt-duracion="+$("#txt-duracion").val() + "&" +
			"txt-calificacion="+$("#txt-calificacion").val() + "&" +
			"rbt-tipo-contenido="+$("input:radio[id=rbt-tipo-contenido]:checked").val() + "&" +
			"rbt-clasificacion="+$("input:radio[id=rbt-clasificacion]:checked").val() + "&" +
			"txt-url="+$("#txt-url").val()+"&"+
			"chk-categorias="+ct +"&" +
			"txt-imagen="+$("#txt-imagen").val()+"&"+
			"chk-sub-titulos="+st;

			//alert(parametros);
		$.ajax({
			url:"ajax/procesar-peliculas.php?accion=1",
			method: "POST",
			data:parametros,
			//dataType:"json",
			success:function(resultado){
				/*if (resultado.codigo == 1){
					$("#guardar").html('<div style="color:#00ff00;">'+resultado.mensaje+'</div>');	
				}*/
			//$("#guardar").html(resultado);
			alert("ingreso Exitoso");
			limpiar();
			},
			error:function(){

			}
		});
		
	});



	/*$("#btn-limpiar").click(function(){
		$("#txt-nombre").val(" ");
		$("#txt-descripcion").val(" ");
		$("#dt-fecha").val(" ");
		$("#txt-duracion").val(" ");
		$("#txt-calificacion").val(" ");
		$("#txt-url").val(" ");
		$("#txt-imagen").val(" ");
		$(".check").each(function(){
			if($(this).prop("checked"))
			$(this).prop("checked", false);

		});

	});*/

});

function limpiar(){
		$("#txt-nombre").val(" ");
		$("#txt-descripcion").val(" ");
		$("#dt-fecha").val(" ");
		$("#txt-duracion").val(" ");
		$("#txt-calificacion").val(" ");
		$("#txt-url").val(" ");
		$("#txt-imagen").val(" ");
		$(".check").each(function(){
			if($(this).prop("checked"))
			$(this).prop("checked", false);

		});
}