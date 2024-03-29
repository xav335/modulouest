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
	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	
	<script>
		
		// ---- Zone Google Map ------------------------------------- //
		if ( 1 == 1 ) {
			var map;
			function initialize() {
			
				var mapOptions = {
					mapTypeId: google.maps.MapTypeId.ROADMAP,
					mapTypeControl: false,
					zoom: 11,
					zoomControl: false,
					panControl: false,
					streetViewControl: false,
					scrollwheel: false,
					scaleControl: false,
					overviewMapControl: false,
					center: new google.maps.LatLng(44.881667, -0.46348699999998644)
				};
				
				map = new google.maps.Map(document.getElementById('map-canvas'),
					mapOptions);
				
				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(44.881667, -0.46348699999998644),
					map: map,
					icon: 'img/marker.png',
					title: 'Modul-Ouest'
				});
			}
			
			google.maps.event.addDomListener(window, 'load', initialize);
			
			function checkResize(){
			
				var center = map.getCenter();
				google.maps.event.trigger(map, 'resize');
				map.setCenter(center);
			}
			
			window.onresize = checkResize;
		}
		// ---------------------------------------------------------- //
		
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
	    
	    <?
	    // ---- Suffisamment de block pour lancer le slider ----- //
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
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-P6MF27Z4Z9"></script>
	    <script>
	      window.dataLayer = window.dataLayer || [];
	      function gtag(){dataLayer.push(arguments);}
	        gtag('js', new Date());

	        gtag('config', 'G-P6MF27Z4Z9');
		</script>
