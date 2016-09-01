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
	
<jsp:include page="layouts/head_include.jsp"></jsp:include>


</head>

<body>

<jsp:include page="layouts/header.jsp"></jsp:include>

<!-- ## HEADER ## --> 
<jsp:include page="layouts/eventicka_header.jsp"></jsp:include>

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