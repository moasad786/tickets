// JavaScript Document
jQuery( document ).ready( function( $ ) {
"use strict";
	
	//Preloader
	$(window).load(function() {
		$('#preloader').fadeOut();
		$('body').delay(350).css({'overflow':'visible'});
	});

	$('article table').addClass('table');
	$('article ul').addClass('list-default');


  
	// Top Arrow
	$(window).scroll(function() {
		if ($(window).scrollTop() > 1000) { 
			$('a.top').fadeIn('slow'); 
		} else { 
			$('a.top').fadeOut('slow');
		}
	});

	if($('header#top').hasClass('off-canvas-menu')){
		// Navigation Menu Slider
		$('#nav-expander').on('click',function(e){
			e.preventDefault();
			$('body').toggleClass('nav-expanded');
		});
		$('#nav-close, .main-menu > li > a').on('click',function(e){
			if(!$(this).closest('.off-canvas-menu').hasClass('load-true')){
				e.preventDefault();
			}
			$('body').removeClass('nav-expanded');
		});

		// Fixed Top bar
		$(window).on('scroll', function() {
		var navHeight = '5';
		   if ($(window).scrollTop() > navHeight) {
			   $('#top').addClass('BGdark');
		   }
		   else {
			   $('#top').removeClass('BGdark');
		   }
		});
	}else{
		// Fixed Top bar
		$(window).on('scroll', function() {
		var navHeight = '100';
		   if ($(window).scrollTop() > navHeight) {
			   $('#top').addClass('visible');
		   }
		   else {
			   $('#top').removeClass('visible');
		   }
		});
	}
	  
	
  
	// SLIDER
	$('#slides').superslides({
	  animation: 'fade',
	  play:7000, // change value if you want to increase or decrese speed
	  animation_speed:800 // change time interval during slide change
	});
	
	var countdownText = electron.CountdownText;

	$('.countdown.styled').each(function(){
		var endDate = $(this).data('countdown-time');
	
		
		$(this).countdown({
		  date: endDate,
			  render: function(data) {
				  var years = this.leadingZeros(data.years, 2);
				  if (years != '00') {
				$(this.el).html("<div><span>" + this.leadingZeros(data.years, 2) + " </span><strong>"+countdownText[0]+"</strong></div><div><span>" + this.leadingZeros(data.days, 3) + " </span><strong>"+countdownText[1]+"</strong></div><div><span>" + this.leadingZeros(data.hours, 2) + "  </span><strong>"+countdownText[2]+"</strong></div><div><span>" + this.leadingZeros(data.min, 2) + "</span><strong>"+countdownText[3]+"</strong></div><div><span>" + this.leadingZeros(data.sec, 2) + " </span><strong>"+countdownText[4]+"</strong></div>");
				  } else {
				  $(this.el).html("<div><span>" + this.leadingZeros(data.days, 3) + " </span><strong>"+countdownText[1]+"</strong></div><div><span>" + this.leadingZeros(data.hours, 2) + "  </span><strong>"+countdownText[2]+"</strong></div><div><span>" + this.leadingZeros(data.min, 2) + "</span><strong>"+countdownText[3]+"</strong></div><div><span>" + this.leadingZeros(data.sec, 2) + " </span><strong>"+countdownText[4]+"</strong></div>");
				  }
			  }
			});
	})


	$('.owl-carousel').each(function(){
			var item =  $(this).data('column');
			var options = {
				lazyLoad : true,
				navText : ["&#xf104;","&#xf105;"],
				dots :false,
				loop: true,
				center: false,
				navContainerClass:'owl-buttons',
				responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:2
		        },
		        1000:{
		            items:item
		        }
		    }
			};
			
			options.nav = ('yes' === $(this).data('control'))? true : false;
			options.autoplay = ('yes' === $(this).data('autoplay'))? true : false;
			$(this).owlCarousel(options);
	});

	$('.line').each(function(){
			$( '<div class="line"></div>' ).insertBefore($(this).closest('.page-block'));
			$(this).remove();
	});
	
	$('[data-vc-stretch-content="true"]').each(function(){
		$(this).closest('.container').css({overflow: 'visible'});
		$(window).trigger('resize');
	})

	$("#sponsorOwl").owlCarousel({
		items : 4,
		lazyLoad : true,
		navigation : true,
    	navigationText : ["&#xf104;","&#xf105;"],
		pagination : false,
		itemsDesktop : [1199,3],
    	itemsTablet: [998,2],
    	itemsMobile : [479,1]
	});
	  
	// Testimonial
	 $('.carousel').carousel({
	interval: 8000 // change value to set speed of slideshow
	});
	  
	// Collapse menu for small devices
	var winWidth = $('body').width();
	if (winWidth <= 767) {
		
		// Add attribs to menu
		$('#menu .navbar-nav li a').attr('data-toggle', 'collapse');
		$('#menu .navbar-nav li a').attr('data-target', '#menu');
		
		// smooth page Scroll
		
			$('nav a[href^="#"], a.top[href^="#"], a.smooth[href^="#"]').on("click", function(event) {
			  event.preventDefault();
			  $('html,body').animate({
			  scrollTop: $(this.hash).offset().top - 580},
			  1000);	
			});
		
		
	} else {
		
			// smooth page Scroll
			$('nav a[href^="#"], a.top[href^="#"], a.smooth[href^="#"]').on("click", function(event) {
			  event.preventDefault();
			  $('html,body').animate({
			  scrollTop: $(this.hash).offset().top - 50},
			  1000);	
			});
		
		
	}
				
	// Subscription Form Validation
	   $("#subscribeForm input").focus(function() {
		  $(this).prev("label").hide();
		  $(this).prev().prev("label").hide();	 		 	
	  });   
	  
  
	// Contact Form
	$('.loader').hide();	 
	
});
