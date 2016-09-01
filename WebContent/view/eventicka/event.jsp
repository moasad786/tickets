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
<jsp:include page="../layouts/head_include.jsp"></jsp:include>

</head>

<body>
<jsp:include page="../layouts/header.jsp"></jsp:include> 

<!-- ## HEADER ## -->
<header id="qcHeader" style="position: relative;">
	<div class="row">

		<!-- ## LOGO ## -->
		<div id="qcLogo" class="col-6 col">
			<a href="${pageContext.request.contextPath}/view/eventicka/"><img src="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/logo-header.png" alt="" /></a>
		</div>

		<!-- ## SITE NAVIGATION ## -->
		<nav id="qcPriNav" class="col-6 col">
			<ul class="clearfix">
				<li class="current"><a href="${pageContext.request.contextPath}/view/eventicka/event.jsp"><i class="icon-calendar-2 icon"></i> <span>Event Details</span></a></li>
				<li><a href="${pageContext.request.contextPath}/view/eventicka/ticket.jsp"><i class="icon-ticket icon"></i> <span>Buy Tickets</span></a></li>
			</ul>
		</nav>

	</div>
</header>
<!-- ## HEADER END ## -->


<!-- ## CONTENT WRAPPER ## -->
<div id="qcContentWrapper">

	<!-- ## PAGE TITLE ## -->
	<section id="qcSecbar">
		<div class="qcContainer">
			<h1>Event. <span>Know more about the event</span></h1>
		</div>
	</section>

	<!-- ## PAGE CONTENT ## -->
	<section id="qcContent">
		<div class="qcContainer">

			<!-- ## MOB NAV ## -->
			<div id="qcMbTrigger"></div>

			<!-- ## TABS ## -->
			<div id="qcTabs" class="tabs">

				<!-- ## TAB NAV ## -->
				<ul id="qcTabNav" class="clearfix">
					<li><a href="#tab-1"><i class="icon-book-open icon"></i> <span>About</span></a></li>
					<li><a href="#tab-2"><i class="icon-clock-1 icon"></i> <span>Schedule</span></a></li>
					<li><a href="#tab-3"><i class="icon-user-add icon"></i> <span>Speakers</span></a></li>
					<li><a href="#tab-4"><i class="icon-map icon"></i> <span>Venue</span></a></li>
					<li><a href="#tab-5"><i class="icon-picture icon"></i> <span>Gallery</span></a></li>
				</ul>


				<!-- ===============================================

					PAGE 1 - ABOUT

				=============================================== -->
				<div id="tab-1" class="qcTabPage clearfix">

					<!-- ## ROW ## -->
					<div class="stretch row clearfix">

						<!-- ## TAB TITLE & DESC ## -->
						<div class="col-4 col">
							<div class="qcTabTitle">
								<h4>About<span> Know more about the event</span></h4>
							</div>
							<p class="qcPageDesc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, accusamus, sed, necessitatibus ea nemo hic molestias amet tempora fuga pariatur officia itaque eum quis rerum aliquam minus illo nulla laborum!</p>
						</div>

						<!-- ## SLIDER ## -->
						<div class="col-8 col">
							<div class="video box no-border">
								<div class="qcSliderWrapper">
									<ul class="single-carousel owl-carousel">
										<li>
											<!-- ## EMBEDED VIDEO [ YOUTUBE, VIMEO ] ## -->
											<div class="qcFitVids">
												<iframe src="http://player.vimeo.com/video/82401459?title=0&byline=0&portrait=0&color=ff9933" width="400" height="225"></iframe>
											</div>
										</li>
										<li>
											<!-- ## IMAGE SLIDE ## -->
											<img src="../studioo1/standard/assets/img/placeholder/12.jpg" alt="" />
										</li>
									</ul>

									<!-- ## SLIDER NEXT PREV ## -->
									<div class="qcPrevNext">
										<div class="qcPrev"><i class="icon-left-open-big"></i></div>
										<div class="qcNext"><i class="icon-right-open-big"></i></div>
									</div>
								</div>
								<!-- ## SLIDER END ## -->

							</div>
						</div>

					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">
								<!-- ## TESTIMONIALS ## -->
								<div class="testimonial qcEventlayout clearfix">
									<div class="col-6 col">
										<!-- ## TESTIMONIAL LIST ## -->
										<ul id="qcTestimonialList" class="clearfix">
											<li>
												<a href="#" class="active" data-content="Lorem ipsum dolor sit amet, consectetur adipisicing elit." data-cite="John Doe via Twitter">
													<img src="https://pbs.twimg.com/profile_images/500480798886084611/P5XUPlTJ.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="quibusdam est porro illum adipisci minima cupiditate sequi velit eaque enim sed nihil excepturi repellendus eum error vero!" data-cite="Samantha via Twitter">
													<img src="https://pbs.twimg.com/profile_images/499941427820769281/8tYwgR5r.png" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="Lorem ipsum dolor sit amet, consectetur adipisicing elit." data-cite="John Doen via Twitter">
													<img src="https://pbs.twimg.com/profile_images/2823681988/f4f6f2bed8ab4d5a48dea4b9ea85d5f1.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="quibusdam est porro illum adipisci minima cupiditate sequi velit eaque enim sed nihil excepturi repellendus eum error vero!" data-cite="Samantha via Twitter">
													<img src="https://pbs.twimg.com/profile_images/462307615536472065/WKDR6Tja.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="Lorem ipsum dolor sit amet, consectetur adipisicing elit." data-cite="John Doe via Twitter">
													<img src="https://pbs.twimg.com/profile_images/512033905503772672/kYJ10GzB.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="quibusdam est porro illum adipisci minima cupiditate sequi velit eaque enim sed nihil excepturi repellendus eum error vero!" data-cite="Samantha via Twitter">
													<img src="https://pbs.twimg.com/profile_images/470664455647272960/u0PDyeFr.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="Lorem ipsum dolor sit amet, consectetur adipisicing elit." data-cite="John Doe via Twitter">
													<img src="https://pbs.twimg.com/profile_images/470898770268282880/VJ0DghGr.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="quibusdam est porro illum adipisci minima cupiditate sequi velit eaque enim sed nihil excepturi repellendus eum error vero!" data-cite="Samantha via Twitter">
													<img src="https://pbs.twimg.com/profile_images/513432886226075648/ZViDgotW.jpeg" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="Lorem ipsum dolor sit amet, consectetur adipisicing elit." data-cite="John Doe via Twitter">
													<img src="https://pbs.twimg.com/profile_images/477437377321791488/0WEJuCyc.png" alt="" />
												</a>
											</li>
											<li>
												<a href="#" data-content="quibusdam est porro illum adipisci minima cupiditate sequi velit eaque enim sed nihil excepturi repellendus eum error vero!" data-cite="Samantha via Twitter">
													<img src="https://pbs.twimg.com/profile_images/378800000764200227/06fdbd84de5e6bba08a2ff81e7fa56b0.jpeg" alt="" />
												</a>
											</li>
										</ul>
										<!-- ## TESTIMONIAL LIST END ## -->
									</div>
									<div class="col-6 col">
										<div id="qcTestimonial">
											<p></p>
											<cite></cite>
										</div>
									</div>
								</div>
								<!-- ## TESTIMONIALS END ## -->
							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">
								<!-- ## FEATURE COUNTER ## -->
								<div id="qcAbtCount" class="qcEventlayout clearfix">
									<div class="col-3 col">
										<div class="box">
											<i class="icon-trophy icon"></i>
											<div class="abtCountNum">25</div>
											<div class="abtCountTitle">Awards</div>
										</div>
									</div>
									<div class="col-3 col">
										<div class="box">
											<i class="icon-direction icon"></i>
											<div class="abtCountNum">43</div>
											<div class="abtCountTitle">Projects</div>
										</div>
									</div>
									<div class="col-3 col">
										<div class="box">
											<i class="icon-mic icon"></i>
											<div class="abtCountNum">09</div>
											<div class="abtCountTitle">Podacsts</div>
										</div>
									</div>
									<div class="col-3 col">
										<div class="box">
											<i class="icon-globe-1 icon"></i>
											<div class="abtCountNum">05</div>
											<div class="abtCountTitle">Offices</div>
										</div>
									</div>
								</div>
								<!-- ## FEATURE COUNTER END ## -->
							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

				</div>
				<!-- ## PAGE 1 END ## -->



				<!-- ===============================================

					PAGE 2 - SCHEDULE

				=============================================== -->
				<div id="tab-2" class="qcTabPage clearfix">

					<!-- ## ROW ## -->
					<div class="row clearfix">

						<!-- ## TAB TITLE ## -->
						<div class="col-4 col">
							<div class="qcTabTitle no-border">
								<h4>Schedule<span> Official Schedule for the event</span></h4>
							</div>
						</div>

						<!-- ## TAB DESC ## -->
						<div class="col-8 col">
							<div class="box no-border nopad">
								<p class="qcPageDesc full">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, accusamus, sed, necessitatibus ea nemo hic molestias amet tempora fuga pariatur officia itaque eum quis rerum aliquam minus illo nulla laborum!</p>
							</div>
						</div>

					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">

								<!-- ## SCHEDULE LIST ## -->
								<div id="qcScheduleWrapper">

									<!-- ## DAY 1 ## -->
									<div class="qcScheduleDay">
										<header class="qcSchDay">
											<p>Saturday <span>31 Oct</span></p>
										</header>
										<ul class="qcScheduleList clearfix">
											<li>
												<a href="#" class="tips" title="INTRODUCTION">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_129.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">10:00 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="PHILOSOPHY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_138.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">11:30 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Philosophy <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="HISTORY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_072.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">01:00 <sup>PM Onwards</sup></p>
														<p class="qcSchSpeaker">History <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="GEOGRAPHY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">10:00 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="INTRODUCTION">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_129.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">11:30 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
										</ul>
									</div>
									<!-- ## DAY 1 END ## -->

									<!-- ## DAY 2 ## -->
									<div class="qcScheduleDay">
										<header class="qcSchDay">
											<p>Saturday <span>31 Oct</span></p>
										</header>
										<ul class="qcScheduleList clearfix">
											<li>
												<a href="#" class="tips" title="INTRODUCTION">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_008.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">10:00 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="PHILOSOPHY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_129.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">11:30 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Philosophy <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="HISTORY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_150.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">01:00 <sup>PM Onwards</sup></p>
														<p class="qcSchSpeaker">History <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="GEOGRAPHY">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_138.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">10:00 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
											<li>
												<a href="#" class="tips" title="INTRODUCTION">
													<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_072.jpg" alt="" />
													<div class="qcSchDesc">
														<p class="qcSchTime">11:30 <sup>AM Onwards</sup></p>
														<p class="qcSchSpeaker">Introduction <span>- John Doe</span></p>
													</div>
												</a>
											</li>
										</ul>
									</div>
									<!-- ## DAY 2 END ## -->

								</div>
								<!-- ## SCHEDULE LIST END ## -->

							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">
								<!-- ## MODULE TITLE ## -->
								<div class="qcModTitle">
									<h1>Subscribe</h1>
									<p>Subscribe to our event notifications</p>
								</div>

								<!-- ## SUBSCRIBE ## -->
								<div class="qcSubscribeForm">
									<form action="#" class="clearfix">
										<div class="col-8 col">
											<input class="inputText" type="text" value="" placeholder="Enter your email id" />
										</div>
										<div class="col-4 col">
											<input class="inputButton" type="submit" value="Subscribe"/>
										</div>
									</form>
								</div>
								<!-- ## SUBSCRIBE END ## -->
							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

				</div>
				<!-- ## PAGE 2 END ## -->



				<!-- ===============================================

					PAGE 3 - SPEAKERS

				=============================================== -->
				<div id="tab-3" class="qcTabPage clearfix">

					<!-- ## ROW ## -->
					<div class="speakers row clearfix">

						<!-- ## TAB TITLE & DESC ## -->
						<div class="col-4 col">
							<div class="qcTabTitle">
								<h4>Speakers<span> Who Will Speak at the event</span></h4>
							</div>
							<p class="qcPageDesc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, accusamus, sed, necessitatibus ea nemo hic molestias amet tempora fuga pariatur officia itaque eum quis rerum aliquam minus illo nulla laborum!</p>
						</div>

						<!-- ## SPEAKERS ## -->
						<div class="col-8 col">
							<div class="box no-border nopad">

								<!-- ## SPEAKERS LIST ## -->
								<ul class="3-col-carousel owl-carousel qcTeamCol row">
									<!-- ## SPEAKER 1 ## -->
									<li>
										<div class="small-box">
											<img src="../studioo1/standard/assets/img/placeholder/t2.png" alt="Team-1" title="http://photodune.net/item/smart-teacher/856363?WT.ac=search_thumb&WT.oss_phrase=smart%20&WT.oss_rank=65&WT.z_author=Pressmaster"/>
											<h4>John Doe</h4>
											<p>Director, Founder</p>
											<ul class="qcGlyphSocial clearfix">
												<li><a href="#" class="tips" title="FACEBOOK"><i class="icon-facebook"></i></a></li>
												<li><a href="#" class="tips" title="TWITTER"><i class="icon-twitter"></i></a></li>
												<li><a href="#" class="tips" title="DRIBBBLE"><i class="icon-dribbble"></i></a></li>
												<li><a href="#" class="tips" title="PINTEREST"><i class="icon-pinterest"></i></a></li>
												<li><a href="#" class="tips" title="LINKEDIN"><i class="icon-linkedin"></i></a></li>
											</ul>
										</div>
									</li>
									<!-- ## SPEAKER 2 ## -->
									<li>
										<div class="small-box">
											<img src="../studioo1/standard/assets/img/placeholder/t3.png" alt="Team-2" title="http://photodune.net/item/photographer/7897851?WT.ac=search_thumb&WT.oss_phrase=photographer&WT.oss_rank=77&WT.z_author=Minervastudio"/>
											<h4>Samantha James</h4>
											<p>Co-Founder</p>
											<ul class="qcGlyphSocial clearfix">
												<li><a href="#" class="tips" title="FORRST"><i class="icon-forrst"></i></a></li>
												<li><a href="#" class="tips" title="GOOGLE"><i class="icon-google"></i></a></li>
												<li><a href="#" class="tips" title="SKYPE"><i class="icon-skype"></i></a></li>
												<li><a href="#" class="tips" title="VIMEO"><i class="icon-vimeo"></i></a></li>
												<li><a href="#" class="tips" title="YOUTUBE"><i class="icon-youtube"></i></a></li>
											</ul>
										</div>
									</li>
									<!-- ## SPEAKER 3 ## -->
									<li>
										<div class="small-box">
											<img src="../studioo1/standard/assets/img/placeholder/t1.png" alt="Team-3" title="http://photodune.net/item/smart-girl/2612875?WT.ac=search_thumb&WT.oss_phrase=smart%20&WT.oss_rank=51&WT.z_author=Pressmaster"/>
											<h4>David Jones</h4>
											<p>Human Resource</p>
											<ul class="qcGlyphSocial clearfix">
												<li><a href="#" class="tips" title="ANDROID"><i class="icon-android"></i></a></li>
												<li><a href="#" class="tips" title="GITHUB"><i class="icon-github"></i></a></li>
												<li><a href="#" class="tips" title="SOUNDCLOUD"><i class="icon-soundcloud"></i></a></li>
												<li><a href="#" class="tips" title="STACK"><i class="icon-stackoverflow"></i></a></li>
												<li><a href="#" class="tips" title="DROPBOX"><i class="icon-dropbox"></i></a></li>
											</ul>
										</div>
									</li>
									<!-- ## SPEAKER 4 ## -->
									<li>
										<div class="small-box">
											<img src="../studioo1/standard/assets/img/placeholder/t4.png" alt="Team-4" title="http://photodune.net/item/office/6805736?WT.ac=search_thumb&WT.oss_phrase=office&WT.oss_rank=220&WT.z_author=val_thoermer"/>
											<h4>Peter Smith</h4>
											<p>Designer</p>
											<ul class="qcGlyphSocial clearfix">
												<li><a href="#" class="tips" title="DRIBBBLE"><i class="icon-dribbble"></i></a></li>
												<li><a href="#" class="tips" title="FORRST"><i class="icon-forrst"></i></a></li>
												<li><a href="#" class="tips" title="GPLUS"><i class="icon-gplus"></i></a></li>
												<li><a href="#" class="tips" title="STACK"><i class="icon-stackoverflow"></i></a></li>
												<li><a href="#" class="tips" title="DROPBOX"><i class="icon-dropbox"></i></a></li>
											</ul>
										</div>
									</li>
								</ul>
								<!-- ## SPEAKERS LIST END ## -->

							</div>
						</div>
						<!-- ## SPEAKERS END ## -->

					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">
								<!-- ## MODULE TITLE ## -->
								<div class="qcModTitle">
									<h1>Partners</h1>
									<p>Those helping hands</p>
								</div>

								<!-- ## SPONSORS LIST ## -->
								<ul class="qcSposnsorList clearfix">
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-1.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-2.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-3.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-4.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-5.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-6.png" alt="" />
										</a>
									</li>
									<li>
										<a href="#" class="tips" title="INTRODUCTION">
											<img src="http://eazzy.me/html/imevent/assets/img/partner/light/partner-1.png" alt="" />
										</a>
									</li>
								</ul>
								<!-- ## SPONSERS LIST END ## -->
							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

				</div>
				<!-- ## PAGE 3 END ## -->



				<!-- ===============================================

					PAGE 4 - VENUE

				=============================================== -->
				<div id="tab-4" class="qcTabPage clearfix">

					<!-- ## ROW ## -->
					<div class="row clearfix">

						<!-- ## TAB TITLE ## -->
						<div class="col-5 col">
							<div class="qcTabTitle no-border">
								<h4>Venue & Layout<span> Venue & Layout of to the event</span></h4>
							</div>
						</div>

						<!-- ## ADDRESS LIST ## -->
						<div class="col-7 col">
							<ul class="qcAddress">
								<li><i class="icon-map"></i><p><strong>ADDRESS</strong>: 1600, Amphitheatre Parkway, CA 94043</p></li>
								<li><i class="icon-user-1"></i><p><strong>PHONE</strong>:  +91-8097000000</p></li>
								<li><i class="icon-print"></i><p><strong>FAX</strong>: +91-8097000001</p></li>
								<li><i class="icon-mail-1"></i><p><strong>EMAIL</strong>: quadcodes@gmail.com</p></li>
								<li><i class="icon-globe-1"></i><p><strong>WEBSITE</strong>: <a title="website" href="http://www.quadcodes.com" target="_blank">www.quadcodes.com</a></p></li>
							</ul>
						</div>

					</div>
					<!-- ## ROW END ## -->

					<!-- ## ROW ## -->
					<div class="dblBorder">
						<div class="row clearfix">
							<div class="col-12 col">

								<!-- ## VENUE LAYOUT PLAN ## -->
								<div class="qcEventlayout">
									<h1>Layout Plan</h1>
									<a href="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/layout.jpg" data-rel="prettyPhoto[pp_gal]">
										<img src="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/layout.jpg" alt="" />
									</a>
								</div>

								<div class="dblBorder only"></div>

								<!-- ## VENUE MAP ## -->
								<div class="qcEventlayout">
									<h1>Map</h1>
									<div id="qcContactMap"></div>
									<div id="qcMapAddress" data-lat="37.4416" data-lng="-122.1516" data-add="1600, Amphitheatre Parkway, Mountain View, CA 94043"></div>
								</div>

							</div>
						</div>
					</div>
					<!-- ## ROW END ## -->

				</div>
				<!-- ## PAGE 4 END ## -->



				<!-- ===============================================

					PAGE 5 - GALLERY

				=============================================== -->
				<div id="tab-5" class="qcTabPage clearfix">

					<!-- ## ROW ## -->
					<div class="stretch row clearfix">

						<!-- ## TAB TITLE & DESC ## -->
						<div class="col-4 col">
							<div class="qcTabTitle">
								<h4>Gallery<span> Some memories of the past event</span></h4>
							</div>
							<p class="qcPageDesc">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero, accusamus, sed, necessitatibus ea nemo hic molestias amet tempora fuga pariatur officia itaque eum quis rerum aliquam minus illo nulla laborum!</p>
						</div>

						<!-- ## GALLERY LIST ## -->
						<div class="col-8 col">
							<div class="video box no-border">
								<ul id="imgGallery" class="clearfix">
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips video" title="Zedd" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" alt="Zedd"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips" title="Bassnectar" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_129.jpg" alt="Bassnectar"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips" title="Stereosonic" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_138.jpg" alt="Stereosonic"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips" title="OMFG!" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_072.jpg" alt="OMFG!"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips" title="Excision" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_008.jpg" alt="Excision"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" class="tips" title="BeuNos"  data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_150.jpg" alt="BeuNos"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/ultramusic-festival/index.html" class="tips video" title="UltraMusic Festival" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_023.jpg" alt="UltraMusic Festival"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/zedd/index.html" class="tips video" title="Zedd" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_155.jpg" alt="Zedd"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/bassnectar/index.html" class="tips" title="Bassnectar" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_129.jpg" alt="Bassnectar"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/stereosonic/index.html" class="tips" title="Stereosonic" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_138.jpg" alt="Stereosonic"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/omfg/index.html" class="tips" title="OMFG!" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultrasa14b_072.jpg" alt="OMFG!"/>
										</a>
									</li>
									<li>
										<a href="../../wordpress/musicvent/gallery/excision/index.html" class="tips" title="Excision" data-rel="prettyPhoto[pp_gal]">
											<img src="../../wordpress/musicvent/wp-content/uploads/2014/03/ultraba14a_008.jpg" alt="Excision"/>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- ## GALLERY LIST END ## -->

					</div>
					<!-- ## ROW END ## -->

				</div>
				<!-- ## PAGE 5 END ## -->


			</div>
			<!-- ## TABS END ## -->

		</div>
	</section>
	<!-- ## PAGE CONTENT END ## -->


</div>
<!-- ## CONTENT WRAPPER END ## -->


<!-- ## FOOTER ## -->
<footer id="qcFooter" class="clearfix">
	<div class="qcContainer">

		<!-- ## FOOTER NAV ## -->
		<div class="col-5 col">
			<nav id="qcFooterNav">
				<ul class="clearfix">
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>

		<!-- ## FOOTER LOGO ## -->
		<div id="qcFooterLogo" class="col-2 col">
			<a href="#">
				<img src="${pageContext.request.contextPath}/view/eventicka/includes/img/placeholder/logo-footer.png" alt="LOGO" />
			</a>
		</div>

		<!-- ## FOOTER COPYRIGHTS ## -->
		<div id="qcFooterPara" class="col-5 col">
			<p>EVENTICKA is the property of Macula Internet, Mumbai. <br /> <span>&copy;Copyrights QuadCodes 2014</span></p>
		</div>

	</div>
</footer>
<!-- ## FOOTER END ## -->

<!-- ## LOAD JAVASCRIPTS ## -->
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/2.1.1.jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/library.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&ver=3.5" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/view/eventicka/includes/js/init.js" type="text/javascript"></script>

</body>

</html>
<!-- Localized -->