(function($, document, window){
	"use strict";

	// if( $(".check-bg").length ){
	// 	BackgroundCheck.init({
	// 	  targets: '.product.has-post-thumbnail .check-bg',
	// 	  images: '.product.has-post-thumbnail .product__image img',
	// 	});
	// }

	// Init Sharrre Plugins
	$('.social-share-holder').sharrre({
		share: {
			facebook: true,
			googlePlus: true,
			twitter: true,
			pinterest: true,
			linkedin: true
		},
		template:
			'<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>' +
			'<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>' +
			'<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>' +
			'<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>' +
			'<a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>',
		enableHover: false,
		urlCurl: '',
		render: function(api, options){
			$(api.element).on('click', '.twitter', function() {
				api.openPopup('twitter');
			});
			$(api.element).on('click', '.facebook', function() {
				api.openPopup('facebook');
			});
			$(api.element).on('click', '.google-plus', function() {
				api.openPopup('googlePlus');
			});
			$(api.element).on('click', '.pinterest', function() {
				api.openPopup('pinterest');
			});
			$(api.element).on('click', '.linkedin', function() {
				api.openPopup('linkedin');
			});
		}
	});

	// Cloning main navigation for mobile menu
	$(".mobile-navigation").append( $(".desktop-navigation .menu").clone() );

	// Adding button for toggling mobile menu items
	var toggleButton = '<button type="button"><i class="fa fa-angle-down"></i></button>';
	$(".mobile-navigation .menu-item-has-children").prepend(toggleButton);

	// Making mobile menu behave like an accordion
	$(".mobile-navigation .menu-item-has-children button").click(function(){
		$(this).toggleClass("active");
		$(this).siblings('.sub-menu').slideToggle(200);
		return false;
	});

	// Mobile menu toggle
	$(".menu-toggle").click(function(){
		$(".mobile-navigation").slideToggle(300);
	});

	// Changing background image using data-attribute
	$("[data-bg-image]").each(function(){
		var image = $(this).data("bg-image");
		$(this).css("background-image", "url("+image+")");
	});

	// Changing background color using data-attribute
	$("[data-bg-color]").each(function(){
		var color = $(this).data("bg-color");
		$(this).css("background-color", color );
	});

	// Add trianglify pattern
	$("[data-trianglify]").each(function(){
		var pattern = Trianglify({
			height    : 600,
			width     : 1024,
			cell_size : 100
		});
		var dataURI = pattern.png();
		$(this).css("background-image", "url("+ dataURI +")");
	});


	$(".gallery-carousel").owlCarousel({
		nav        : true,
		dots       : false,
		navText    : ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
		responsive : {
			0   : { items: 1 },
			480 : { items: 2 },
			768 : { items: 3 },
			990 : { items: 4 },
		}
	});

	$(".event-date-count-down").each(function(){
		var dateline = $(this).data("date");
		$(this).countdown( dateline, function(event) {
			var $this = $(this).html(event.strftime(''
							+ '<div class="count-num"><span class="timer">%w</span><span class="label">weeks</span></div> '
							+ '<div class="count-num"><span class="timer">%d</span><span class="label">days</span></div> '
							+ '<div class="count-num"><span class="timer">%H</span><span class="label">hr</span></div> '
							+ '<div class="count-num"><span class="timer">%M</span><span class="label">min</span></div> '
							+ '<div class="count-num"><span class="timer">%S</span><span class="label">sec</span></div>'));
		});
	});

	// Search From Toggle
	var searchTggl  = $(".search-toggle");
	var searchBox   = $(".main-search-form");
	var searchForm  = searchBox.find("form");
	var searchClose = searchBox.find(".close");

	searchTggl.on("click", function(e){
		e.preventDefault();

		searchBox.addClass("search-active").one("transitionend webkitTransitionEnd",function(){
			searchForm.addClass("active");
			searchForm.find("input").focus();
		});

		$(document).one("keyup",function(e) {
		  if (e.which == 27) searchClose.trigger("click");
		});
	});
	searchClose.on("click", function(e){

		e.preventDefault();
		searchForm.removeClass("active").one("transitionend webkitTransitionEnd", function(){
			searchBox.removeClass("search-active");
		});

	});

	// Add hover panning effect on event grid
	$(".events-grid .event, .gallery-carousel a,.post-grid .type-post").panr({
		sensitivity          : 15,
		scale                : false,
		scaleOnHover         : true,
		scaleTo              : 1.1,
		scaleDuration        : .3,
		panY                 : true,
		panX                 : true,
		panDuration          : .4,
		resetPanOnMouseLeave : false,
	});

	// Init Magnific Popup for gallery
	$('.format-gallery .gallery-slider li:not(.clone), .gallery-carousel,.gallery-masonry,.event-gallery').magnificPopup({
		delegate     : 'a',
		type         : 'image',
		tLoading     : 'Loading image #%curr%...',
		mainClass    : 'mfp-img-mobile mfp-fade',
		removalDelay : 160,
		gallery      : {
			enabled            : true,
			navigateByImgClick : true,
			preload            : [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError   : '<a href="%url%">The image #%curr%</a> could not be loaded.',
			titleSrc : function(item) {
				return item.el.attr('title');
			}
		}
	});

	// Init magnific popup for format-video
	$('.format-video .featured-image a').magnificPopup({
		disableOn       : 700,
		type            : 'iframe',
		mainClass       : 'mfp-fade',
		removalDelay    : 160,
		preloader       : false,
		fixedContentPos : false
	});

	// Init slide for format gallery images
	$(".featured-image.gallery-slider").flexslider({
		animation    : "slide",
		directionNav : true,
		controlNav   : true,
		prevText     : '<i class="fa fa-angle-left"></i>',
		nextText     : '<i class="fa fa-angle-right"></i>',
	});

	// Init isotope
	$(".posts-holder--masonry").isotope({
		layoutMode: "masonry"
	});

	// Running Owl if the thumbnails is more than 4
	// if( $(".thumbnails a").length > 4 ){
		$(".thumbnails").owlCarousel({
			margin     : 10,
			nav        : true,
			navText    : ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
			responsive : {
				0   : { items: 3 },
				640 : { items: 5 },
			}
		});
	// }

	// Showing ticket form
	$(".buy-ticket").on("click", function(e){
		e.preventDefault();

		$(".buy-ticket-popup").fadeIn(300, function(){
			$(this).addClass("active");
		});
	});

	// Ticket form close action
	$(".buy-ticket-popup .close").on("click", function(e){
		e.preventDefault();
		$(this).parents(".buy-ticket-popup").removeClass("active").fadeOut();
	});

	// Add action for speaker component
	$(document).on("click",".speaker-popup-trigger",function(e){
		e.preventDefault();
		var speakerData = $(this).parents(".speaker").data("speaker-detail");
		var html;
		
		html  = '<div class="speaker-overlay">';
		html += '<div class="speaker-modal"><a class="close" href="#"><i class="drip-icon-cross"></i></a>';
		html += '<div class="left-side">';
		html += '<img class="avatar" src='+speakerData.avatar+">";
		html += '<div class="social-links">';
		html += '<a class="facebook" target="_blank" href="'+speakerData.facebook+'"><i class="fa fa-facebook"></i></a>';
		html += '<a class="twitter" target="_blank" href="'+speakerData.twitter+'"><i class="fa fa-twitter"></i></a>';
		html += '<a class="link" target="_blank" href="'+speakerData.url+'"><i class="fa fa-link"></i></a>';
		html += '</div>';
		html += '</div>';
		html += '<div class="speaker-detail">';
		html += '<h2>'+speakerData.name+'</h2>';
		html += '<small>'+speakerData.position+'</small>';
		html += '<p>'+speakerData.bio+'</p>';

		html += '</div>';
		html += '</div>';
		html += '</div>';

		$("body").append(html);
		$(".speaker-overlay").fadeIn(300,function(){
			$(this).addClass("active");
		})
	});
	
	// Action for speaker modal close
	$(document).on("click",".speaker-modal .close",function(e){
		e.preventDefault();
		$(".speaker-overlay").removeClass("active").delay(300).fadeOut(300, function(){
			$(this).remove();
		});
	});

	// Init fitVids for better video framing
	$(".video-wrap").fitVids();

	// Document ready
	$(document).ready(function(){

		// Mini Cart Toggle Action

		$(document).on("click",".cart-toggle",function(e){
			e.preventDefault();
			$(".mini-cart").toggleClass("active");

			if($(".mini-cart").hasClass("active")){
				$(window).on("click", function(event){		
					if ( $(".mini-cart").has(event.target).length == 0 && !$(".mini-cart").is(event.target)){
						$(".mini-cart").removeClass("active");
					}
				});
			}
		});

		// Mini Cart Toggle Action
		var umTgl = $(".user-menu__toggle");
		var umMenu = $(".user-menu");

		umTgl.on("click",function(e){
			e.preventDefault();
			umMenu.toggleClass("active");

			if(umMenu.hasClass("active")){
				$(window).on("click", function(event){		
					if ( umMenu.has(event.target).length == 0 && !umMenu.is(event.target)){
						umMenu.removeClass("active");
					}
				});
			}
		});

		$( ".vc-event-date-picker" ).datepicker();
	});

	// Window loaded event
	$(window).load(function(){

		// Reinit Isotope
		$(".posts-holder--masonry,.gallery-masonry").isotope({
			layoutMode: "masonry"
		}).addClass("loaded");

		// init carousel
		$(".event-slider,.testimonial-carousel-block").owlCarousel({
			items: 1,
			autoplay: true,
			autoplayTimeout: 5000,
			loop: true,
			dots: false,
			nav: true,
			center: true,
			navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
		});
	});


}(jQuery, document, window));