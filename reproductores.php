<?php
	$title = "METRO (Cortometraje)";
	$url = "videos/METRO.mp4";
	$poster = "img/metro.png";
?>
<!DOCTYPE html>
<html lang="es" id="pagina">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="img/icono.png">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos_reproductor.css">
	<script src="codoPlayer/CodoPlayer.js"></script>

	<link rel="stylesheet" href="flowplayer/skin/skin.css">
	<script src="flowplayer/jquery-1.11.2.min.js"></script>
	<script src="flowplayer/flowplayer.min.js"></script>

	<script src="https://content.jwplatform.com/libraries/x9XVJGsW.js" ></script>

	<link href="video-js/video-js.css" rel="stylesheet" type="text/css">
  	<script src="video-js/video.js"></script>
  	<script src="video-js/lang/es.js"></script>
  	<script>
  		var title = "METRO (Cortometraje)";
  		var link = "videos/METRO.mp4";
		var poster = "img/metro.png";
  	</script>
	<title>Reproductor</title>
</head>
<body style="background-color: rgb(0,0,0)">
	<div class="margen">
		<div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<button type="button" class="btn btn-default" id="btn-codoPlayer">Codo Player</button>
				<button type="button" class="btn btn-default" id="btn-flowPlayer">Flowplayer</button>
				<button type="button" class="btn btn-default" id="btn-JWPlayer">JW Player</button>
				<button type="button" class="btn btn-default" id="btn-videoJs">Video JS</button>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="reproductor">
				<div id="codoPlayer" class="separar-arriba">
				<script>
				    var player = CodoPlayer([{
				    		title: title,
				    		poster: poster,
				    		src: link
				    		},{
				    			title: "Intro",
				    			poster: "videos/cover.jpg",
				    			src: "videos/Intro.mp3",
				    			engine: "auto"
				    		},{
				    			title: "Courtesy Call",
				    			poster: "videos/cover.jpg",
				    			src: "videos/CourtesyCall.mp3",
				    			engine: "auto"
				    		}],{
				    		preload: false,
				    		playlist: false,
				    		id: "codo",
				    		onReady: function(player) {
					            console.log(player);
					        }
				    	})
				    	console.log(player);
				</script>
				</div>

				<div id="flowPlayer" class="separar-arriba">
					<div id="player" class="fp-full fp-edgy fp-outlined"></div>
					<script>
					var api = flowplayer("#player", {
						poster: poster,
					    clip: {
					      title: title,
					      sources: [
					        { type: "video/mp4",
					          src: link },
					      ]
					    }
					  });
					</script>
				</div>
				<div id="JWPlayer" class="separar-arriba">
				<div id="reproduce"></div>
				</div>
				<div id="videoJs" class="separar-arriba">
				<video id="my-player" class="video-js vjs-default-skin" ></video>
					<script>
						var playerJs = videojs('my-player',{
							sources: [{
								src: link
							}],
							width: $("#codo").width(),
							height: $("#codo").height(),
							poster: poster,
						  	controls: true,
						  	autoplay: false,
						  	preload: 'auto'
						});
					</script>
				</div>
            </div>
         </div>
    </div>
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/reproductores.js"></script>
    <script>
	var playerInstance = jwplayer("reproduce").setup({
				    	file: link,
				    	image: poster,
				    	title: title,
				    	mediaid: "control",
				    	description: "Una maravillosa fantasía minimalista...",
				    	sharing: {
    					sites: ["facebook","twitter","email","googleplus"]}
				    });
	</script>
</body>
</html>