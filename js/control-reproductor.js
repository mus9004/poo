$(document).ready(function(){
	var parametros = "codigo_video="+$("#obtenerVideo").val();
	$.ajax({
			url:"ajax/procesar-reproductor.php?accion=1",
			method:"POST",
			data:parametros,
			dataType:"json",
			success:function(resultado){
				player = CodoPlayer([{
				    		title: resultado.nombre_contenido,
				    		poster: resultado.nombre_imagen,
				    		src: resultado.url_contenido
				    		}], {
				    preload: false,
				    id: "codo"
				}, "#my-play");
				api= flowplayer("#player", {
						poster: resultado.nombre_imagen,
					    clip: {
					      title: resultado.nombre_contenido,
					      sources: [
					        { type: "video/mp4",
					          src: resultado.url_contenido},
					      ]
					    }
					  });
				playerInstance = jwplayer("reproduce").setup({
						file: resultado.url_contenido,
						image: resultado.nombre_imagen,
						title: resultado.nombre_contenido,
						description: resultado.descripcion_contenido,
				    	sharing: {
    					sites: ["facebook","twitter","email","googleplus"]}
				    });
				playerJs = videojs('my-player',{
							sources: [{
								src: resultado.url_contenido
							}],
							poster: resultado.nombre_imagen,
							width: $("#codo").width(),
							height: $("#codo").height(),
						  	controls: true,
						  	autoplay: false,
						  	preload: 'auto'
						});
			},
			error:function(){
				alert("Something...");
			}
		});
	$("#videoJs").hide();
	$("#JWPlayer").hide();
	$("#flowPlayer").hide();
	$("#codoPlayer").show();

	$("#btn-codoPlayer").click(function(){
		api.pause();
		playerInstance.pause(true);
		playerJs.pause();
		$("#videoJs").hide();
		$("#flowPlayer").hide();
		$("#JWPlayer").hide();
		$("#codoPlayer").show();
	});

	$("#btn-flowPlayer").click(function(){
		player.pause();
		playerInstance.pause(true);
		playerJs.pause();
		$("#videoJs").hide();
		$("#JWPlayer").hide();
		$("#flowPlayer").show();
		$("#codoPlayer").hide();
	});
	$("#btn-JWPlayer").click(function(){
		player.pause();
		api.pause();
		playerJs.pause();
		$("#flowPlayer").hide();
		$("#videoJs").hide();
		$("#JWPlayer").show();
		$("#codoPlayer").hide();
	});
	$("#btn-videoJs").click(function(){
		player.pause();
		api.pause();
		playerInstance.pause(true);
		$("#flowPlayer").hide();
		$("#JWPlayer").hide();
		$("#videoJs").show();
		$("#codoPlayer").hide();
	});
});