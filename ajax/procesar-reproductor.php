<?php
	switch ($_GET["accion"]) {
		case '1':{
		?>
			<video>
        	    <source src="videos/METRO.mp4">
        	</video>
		<script data-cfasync="false">
		  (function(r,e,E,m,b){E[r]=E[r]||{};E[r][b]=E[r][b]||function(){
		  (E[r].q=E[r].q||[]).push(arguments)};b=m.getElementsByTagName(e)[0];m=m.	createElement(e);
		  m.async=1;m.src=("file:"==location.protocol?"https:":"")+"//s.reembed.com/	G-nr8rMA.js";
		  b.parentNode.insertBefore(m,b)})("reEmbed","script",window,document,"api");
		</script>
		<?php
		}
		break;
		case '2':{
		?>
			<div id="reproduce"></div>
				<script type="text/JavaScript">
				var playerInstance = jwplayer("reproduce");
				playerInstance.setup({
				    file: "videos/METRO.mp4",
				    mediaid: "xxxxYYYY",
				
				});
				</script>
		<?php
		}
		break;
		case '3':{
		?>
			<script src="codoPlayer/CodoPlayer.js"></script>
			<script>
				CodoPlayer("videos/METRO.mp4",{
			        width: 600,
			        height: 338
			    });
			</script>
		<?php
		}
		break;
		}
?>