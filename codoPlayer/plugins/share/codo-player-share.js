/*
	Codo Player "share" plugin
	Copyright (C) 2012-2013 Donato Software House
*/

(function() {
	var file = "codo-player-share.js";
	Codo().link(Codo().getScriptTag(file).src.split("?")[0].replace(file, "") + "styles/style.css");
	for(var i = 0; i < CodoPlayerAPI.length; i++) {
		if (CodoPlayerAPI[i].plugins && CodoPlayerAPI[i].plugins.share) {
			var api = CodoPlayerAPI[i];
			var wrap = Codo(api.DOM.parent).add({el: "div", class: "codo-player-share-wrap"});
			var bg = Codo(wrap).add({el: "div", class: "codo-player-share-wrap-bg"});
			var fbButton = Codo(wrap).add({el: "div", class: "codo-palyer-share-fb-button"});
			Codo(fbButton).on("click", function() {
				window.open("https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(location.href) + "&t=", "sharer","toolbar=0,status=0,width=626,height=436");
			})
			var twitterButton = Codo(wrap).add({el: "div", class: "codo-palyer-share-twitter-button"});
			Codo(twitterButton).on("click", function() {
				window.open("http://twitter.com/share?url=" + encodeURIComponent(location.href) + "&text=", "sharer","toolbar=0,status=0,width=626,height=436");
			})
		}
	};
})();
