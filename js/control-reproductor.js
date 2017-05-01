$(document).ready(function(){
	var parametros = "codigo_video="+"1";
	$.ajax({
			url:"ajax/procesar-reproductor.php?accion=1",
			method:"POST",
			data:parametros,
			dataType:"json",
			success:function(resultado){
				flowplayer("#player", {
						poster: poster,
					    clip: {
					      title: title,
					      sources: [
					        { type: "video/mp4",
					          src: resultado.url_contenido },
					      ]
					    }
					  });
				api = $(".flowplayer:first").data("flowplayer");
			},
			error:function(){
				alert("Something...");
			}
		});
	$("#videoJs").hide();
	$("#JWPlayer").hide();
	$("#flowPlayer").show();

	$("#btn-flowPlayer").click(function(){
		player.pause();
		//playerInstance.pause(true);
		playerJs.pause();
		$("#videoJs").hide();
		$("#JWPlayer").hide();
		$("#flowPlayer").show();
	});
	$("#btn-JWPlayer").click(function(){
		player.pause();
		api.pause();
		playerJs.pause();
		$("#flowPlayer").hide();
		$("#videoJs").hide();
		$("#JWPlayer").show();
	});
	$("#btn-videoJs").click(function(){
		player.pause();
		api.pause();
		//playerInstance.pause(true);
		$("#flowPlayer").hide();
		$("#JWPlayer").hide();
		$("#videoJs").show();
	});
});