<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<!-- ## SITE META ## -->
	<meta charset="utf-8">
	<title>Eventicka | Event Landing Page & Ticketing</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/favicon.ico">

	<!-- ## LOAD STYLSHEETS ## -->
	<link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/view/eventicka/includes/css/style.css"/>

	<!-- ## GOOGLE FONTS ## -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:100,300,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>

	<!-- ## FULLSCREEN SLIDESHOW ## -->
	<script type="text/javascript">
	function slide_fullscreen() {
	jQuery(function($){
		$.supersized({
			// Functionality
			slide_interval          :   8000,
			transition              :   1, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
			transition_speed	:   1000,
			// Components
			slide_links		:   'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')
			progress_bar	:	1,
			slides 			:   [
								{	image : 'http://themeforest.quadcodes.com/site/studioo1/multi-page/assets/img/placeholder/11.jpg'
								},
								{	image : 'http://themeforest.quadcodes.com/site/musicvent/assets/img/placeholder/full-bg-4.jpg'
								}
							]
		});
	});
	}
	window.onload = slide_fullscreen;
	</script>
	
<jsp:include page="../layouts/head_include.jsp"></jsp:include>


</head>

<body>

<jsp:include page="../layouts/header.jsp"></jsp:include>

<!-- ## HEADER ## -->
<header id="qcHomeHeader" style="position: relative;">
	<div class="row">

		<!-- ## LOGO ## -->
		<div id="qcLogo" class="col-6 col">
			<a href="${pageContext.request.contextPath}/view/eventicka/"><img src="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/logo-header.png" alt="" /></a>
		</div>

		<!-- ## SITE NAVIGATION ## -->
		<nav id="qcPriNav" class="col-6 col">
			<ul class="clearfix">
				<li><a href="${pageContext.request.contextPath}/view/eventicka/event.jsp"><i class="icon-calendar-2 icon"></i> <span>Event Details</span></a></li>
				<li><a href="${pageContext.request.contextPath}/view/eventicka/ticket.jsp"><i class="icon-ticket icon"></i> <span>Buy Tickets</span></a></li>
			</ul>
		</nav>

	</div>
	<div class="row">

		<!-- ## COUNTDOWN TIMER ## -->
		<div id="qcEventCountDown" class="col-6 col">
			<!-- ## DAYS ## -->
			<div class="dash days_dash">
				<div class="dash_title">days</div>
				<div class="digits clearfix">
					<div class="digit digit-1">0</div>
					<div class="digit digit-2">0</div>
					<div class="digit digit-3">0</div>
				</div>
			</div>
			<!-- ## HOURS ## -->
			<div class="dash hours_dash">
				<div class="dash_title">hours</div>
				<div class="digits clearfix">
					<div class="digit digit-1">0</div>
					<div class="digit digit-2">0</div>
				</div>
			</div>
			<!-- ## MINUTES ## -->
			<div class="dash minutes_dash">
				<div class="dash_title">minutes</div>
				<div class="digits clearfix">
					<div class="digit digit-1">0</div>
					<div class="digit digit-2">0</div>
				</div>
			</div>
			<!-- ## SECONDS ## -->
			<div class="dash seconds_dash">
				<div class="dash_title">seconds</div>
				<div class="digits clearfix">
					<div class="digit digit-1">0</div>
					<div class="digit digit-2">0</div>
				</div>
			</div>
		</div>

		<!-- ## EVENT BANNER ## -->
		<div id="qcEventBanner" class="col-6 col">
			<ul>
				<li><b>EVC-2014</b> Enchanted Valley Carnival 2014</li>
				<li><b>#LIVE.</b> As though heaven is on earth.</li>
				<li><b>#LOVE.</b> As though you have never been hurt before.</li>
				<li><b>#DANCE.</b> As though no one is watching you.</li>
			</ul>
		</div>

	</div>
</header>
<!-- ## HEADER END ## -->

<!-- ## FULLSCREEN SLIDES ## -->
<section id="slideContent">

	<!-- ## SLIDE CONTROLS ## -->
	<div id="qcHomeSlideControls">

		<!-- ## SLIDE DOT NAV ## -->
		<ul id="slide-list"></ul>

		<!-- ## PROGRESS BAR ## -->
		<div id="progress-back" class="load-item">
			<div id="progress-bar"></div>
		</div>

	</div>

</section>
<!-- ## FULLSCREEN SLIDES ## -->

<!-- ## BACKGROUND OVERLAY ## -->
<section id="qcOverlay">

	<div id="qcEventLogo" class="loading">
		<a href="#">
			<img src="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/center-logo.png" alt="" />
		</a>
	</div>
</section>

<!-- ## LOAD JAVASCRIPTS ## -->
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/2.1.1.jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/supersized.3.2.7.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/countdown.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/jquery.marquee.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/library.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/init.js" type="text/javascript"></script>

</body>

</html>
<!-- Localized -->