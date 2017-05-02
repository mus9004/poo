	function ventanaModal(codigoPelicula){
		
		parametros="id-pelicula="+codigoPelicula;
		 $.ajax({
	 		url: "class/class-cargaPelicula.php?accion=3", 
	 		data:parametros,
            method:"POST",
            success: function(result){
  
            		$("#conte").html(result);
              }
          });

		$("#modal-sinopsis").modal('show');
	}

		$(document).ready(function(){
			$.ajax({
		 		url: "class/class-cargaPelicula.php?accion=2", 
	            method:"POST",
	            success: function(result){
	            		for (var i = 0; i <= result; i++) {
				    		  $(".slider"+i).bxSlider({
						  
							    minSlides: 2,
							    maxSlides: 9,
							    slideMargin: 8,
							    slideWidth: 119,
							    pager: false,
							   	responsive: true

			  });        			
	            		}
	              }
	        });
		});	
		
							
	$(document).ready(function(){
		
		var menu = $('#menu')
		var menu1 = $('#menu1')

		$('#menu-trigger').click(function(event){
			event.preventDefault();

			if (menu1.is(":visible"))
			{
				menu1.slideUp(400);
				$(this).removeClass("open");
			}

			if (menu.is(":visible"))
			{
				menu.slideUp(400);
				$(this).removeClass("open");
			}

			else
			{
				menu.slideDown(400);
				$(this).addClass("open");
			}
			
		});
		


		$('#menu-trigger1').click(function(event){
			event.preventDefault();

			if (menu.is(":visible"))
			{
				menu.slideUp(400);
				$(this).removeClass("open");
			}

			if (menu1.is(":visible"))
			{
				menu1.slideUp(400);
				$(this).removeClass("open");
			}

			else
			{
				menu1.slideDown(400);
				$(this).addClass("open");
			}
		});

		document.getElementById("todos").addEventListener("wheel", myFunction);

			function myFunction() {
			    if (menu.is(":visible"))
			{
				menu.slideUp(400);
				$(this).removeClass("open");
			}
			if (menu1.is(":visible"))
			{
				menu1.slideUp(400);
				$(this).removeClass("open");
			}

		}
		$(document).scroll(function(event) {
 		     if (menu.is(":visible"))
			{
				menu.slideUp(400);
				$(this).removeClass("open");
			}
			if (menu1.is(":visible"))
			{
				menu1.slideUp(400);
				$(this).removeClass("open");
			}
		});

	});
	
	$("#btn-reproducir").click(function(){
			location.href ="reproductores.html";
		});