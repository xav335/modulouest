	<script src="js/vendor/jquery.js"></script>
	<script src="js/foundation.min.js"></script>
	<script src="js/foundation/foundation.tab.js"></script>
	<script src="js/vendor/swiper/swiper.min.js"></script>
	
	<!-- Fancybox -->
	<script type="text/javascript" src="js/vendor/jquery.mousewheel-3.0.6.pack.js"></script>
	<script type="text/javascript" src="js/vendor/fancybox/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="js/vendor/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
	<link rel="stylesheet" type="text/css" href="js/vendor/fancybox/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="js/vendor/fancybox/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<link rel="stylesheet" type="text/css" href="js/vendor/fancybox/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="js/vendor/fancybox/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	<script type="text/javascript" src="js/vendor/fancybox/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
	<!-- End Fancybox -->
	

	
	<script>
		

		
		$(document).foundation();
		
		var swiper = new Swiper('.swiper-container', {
	        autoplay: 7000,
	        speed: 1000,
	        loop:true
	    });
		var swiperactu = new Swiper('.actualite', {
	        autoplay: 10000,
	        speed: 1000,
	        loop:true
	    });
	    
	    <?php
	    // ---- Suffisamment de block pour lancer le slider ----- //
        if (empty($liste_produit)) {
            $liste_produit = [];
        }
        if ( count( $liste_produit ) >= 3 ) {
	    	?>
			var swiperamenagements = new Swiper('.amenagements', {
		        slidesPerView: 3,
		        autoplay: 3000,
		        speed: 1000,
		        loop:true
		    });
			<?
		}
	    // ------------------------------------------------------ //
	    ?>
	    
		var swiperamenagements = new Swiper('.swiper-vignettes', {
	        slidesPerView: 3,
	        autoplay: 0
	    });
	    var galleryTop = new Swiper('.gallery-top', {
	        nextButton: '.swiper-button-next',
	        prevButton: '.swiper-button-prev',
	        spaceBetween: 0,
	    });
	    var galleryThumbs = new Swiper('.gallery-thumbs', {
	        spaceBetween: 10,
	        centeredSlides: true,
	        slidesPerView: 'auto',
	        touchRatio: 0.2,
	        slideToClickedSlide: true
	    });
	    galleryTop.params.control = galleryThumbs;
	    galleryThumbs.params.control = galleryTop;
	    
		$(document).ready(function(){
			
			$('.fancybox').fancybox({
				helpers: {
					overlay: {
						locked: false
					}
				}
			});
			
			// ---- Validation du formulaire de newsletter -------------- //
			if ( 1 == 1 ) {
				
				$( "#form_news" ).submit(function() {
					//alert( "validation..." );
					var erreur = 0;
					
					$.ajax({
						type: "POST",
						cache: false,
						url: '/ajax/ajax_newsletter.php?task=inscrire',
						data: $( "#form_news" ).serialize(),
						error: function() { alert( "Une erreur s'est produite..." ); },
						success: function( data ){
							var obj = $.parseJSON( data );
							
							// Tout s'est bien passé!
							if ( !obj.error ) {
								$( "#form_news #email_news" ).val( '' );
								alert( "Votre e-mail a été correctement ajouté à notre base de données." );
							}
							else {
								
							}
							
						}
					});
					
					return false;
				});
			}
			// ---------------------------------------------------------- //
			
		});
		
	</script>

