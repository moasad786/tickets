	       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<header class="site-header site-header--type-1">
			<div class="top-header">
				<div class="container">
					<div class="left-section">

						<nav class="secondary-navigation">
							<ul id="menu-top-menu" class="menu">
								<li id="menu-item-297"
									class="menu-item menu-item-type-post_type menu-item-object-page"><a
									href="${pageContext.request.contextPath}/about"><i
										class="ti-user"></i>About</a></li>
								<li id="menu-item-298"
									class="menu-item menu-item-type-post_type menu-item-object-page"><a
									href="${pageContext.request.contextPath}/faq"><i
										class="ti-layout-list-thumb"></i>FAQ</a></li>
								<li id="menu-item-299"
									class="menu-item menu-item-type-post_type menu-item-object-page"><a
									href="${pageContext.request.contextPath}/contact"><i
										class="ti-location-pin"></i>Contact</a></li>
							</ul>
						</nav>
					</div>
 
					<a class="branding"
						href="${pageContext.request.contextPath}/" title="Festiven"
						rel="home">
						<h1 class="site-title">
							<img class="logo"
								src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/logo.png"
								alt="Festiven" />
						</h1>
					</a>

					<div class="right-section">

						<div class="user-menu">
							<!-- FOr Logged in user -->
							<button class="user-menu__toggle">
								<i class="ti-user"></i><span> </span>
							</button>
 
							<ul class="user-menu__list">
							<c:choose>
							<c:when test="${sessionScope.user_id!=null && sessionScope.user_id>0}">
							<li><a
									href="${pageContext.request.contextPath}/users/myProfile"><i
										class="ti-user"></i> My Account</a></li>
								<li><a 
									href="${pageContext.request.contextPath}/users/logout_users"><i
										class="ti-shift-right"></i> Logout</a>
										</li>
							</c:when> 
							<c:otherwise>
							<li><a
									href="${pageContext.request.contextPath}/users/login"><i
										class="ti-user"></i> Login</a></li>
										
										<li><a
									href="${pageContext.request.contextPath}/users/login?page=signup"><i
										class="ti-user"></i> Sign up</a></li>
										
							</c:otherwise>
							
							</c:choose>
								
							</ul>
						</div>


					</div>
				</div>
			</div>
			<div class="bottom-header">
				<div class="container">
					<nav class="mobile-navigation"></nav>
					<!-- .mobile-navigation -->

					<!-- Default snippet for navigation -->
					<nav class="main-navigation">
						<button type="button" class="menu-toggle">
							<i class="fa fa-bars"></i> Navigation
						</button> 

						<nav class="desktop-navigation">

							<ul id="menu-primary-menu" class="menu">
								<li id="menu-item-4053"
									class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-4016 current_page_item current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor"><a
									href="${pageContext.request.contextPath}/"><i
										class="ti-briefcase"></i>Homepage</a>
									<%-- <ul class="sub-menu  level-0">
										<li id="menu-item-4099"
											class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-4016 current_page_item"><a
											href="${pageContext.request.contextPath}/"><i
												class="icomoon-library"></i>Homepage Standard</a></li>
										<li id="menu-item-4107"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="homepage-v2.jsp"><i
												class="icomoon-tag"></i>Homepage v2</a></li>
									</ul> --%></li>
								<li id="menu-item-234"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children"><a
									href="blog">Blog</a>
									<ul class="sub-menu  level-0">
										<li id="menu-item-3215"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="${pageContext.request.contextPath}/blog-cover">Blog
												Cover</a></li>
										<li id="menu-item-3960"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="blog-with-sidebar">Blog
												With Sidebar</a></li>
										<li id="menu-item-3478"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="${pageContext.request.contextPath}/blog-masonry">Blog
												Masonry</a></li>
									</ul></li>
								<li id="menu-item-236"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children mega-menu"><a
									href="#"><i class="icomoon-wand"></i>Features</a>
									<ul class="sub-menu with_bg_image bottom-right level-0"
										style="background-image: url(http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2016/01/menu.jpg);">
										
										<li id="menu-item-278"
											class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a
											href="#">Music</a>
											<ul class="sub-menu  level-1">
												<li id="menu-item-279"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-accordion">The Big Feastival</a></li>
												<li id="menu-item-280"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-alert">The 1975</a></li>
												<li id="menu-item-281"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-button">Nickelback</a></li>
												<li id="menu-item-282"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-box">Brian May/Kerry Ellis</a></li>
												<li id="menu-item-283"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-highlight">Bring Me The Horizon</a></li>
												<li id="menu-item-284"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-dropcap">Twin Atlantic</a></li>
												
											</ul></li>
											
											 
											<li id="menu-item-278"
											class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a
											href="#">Sport</a>
											<ul class="sub-menu  level-1">
												<li id="menu-item-279"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-accordion">London Double Header</a></li>
												<li id="menu-item-280"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-alert">Champions Tennis</a></li>
												<li id="menu-item-281"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-button">NFL</a></li>
												<li id="menu-item-282"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-box">British Swimming</a></li>
												<li id="menu-item-283"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcode#shortcode-highlight">Champions of Darts</a></li>
												<li id="menu-item-284"
													class="menu-item menu-item-type-custom menu-item-object-custom"><a
													href="${pageContext.request.contextPath}/shortcodeshortcode-dropcap">NatWest T20 Blast</a></li>
												
											</ul></li>
											
											
											
											
											
										<li id="menu-item-277"
											class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a
											href="#">Arts, Theatre & Comedy</a>
											<ul class="sub-menu  level-1">
												<li id="menu-item-265"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/archive">Billy Connolly</a></li>
												<li id="menu-item-293"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="faq">Nice Fish</a></li>
												<li id="menu-item-296"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/about">Varekai</a></li>
													<li id="menu-item-296"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/about">Funny Girl</a></li>
													<li id="menu-item-296"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/about">ABBA Classics</a></li>
													
													<li id="menu-item-296"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/about">Shoes: Pleasure & .</a></li>
													
											</ul></li>
										<li id="menu-item-302"
											class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a
											href="#">Family & Attractions</a>
											<ul class="sub-menu  level-1">
												<li id="menu-item-268"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/contact"><i
														></i>Digital Kids Show </a></li>
												<li id="menu-item-308"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/contact-v2"><i
														></i>Scene</a></li>
												<li id="menu-item-307"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/contact-v3"><i
														></i>Film4 Summer Screen</a></li>
														<li id="menu-item-307"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="contact-v3"><i
														></i>London Design Biennale-tickets</a></li>
														<li id="menu-item-307"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/contact-v3"><i
														></i>Camp Bestival Frozen</a></li>
														<li id="menu-item-307"
													class="menu-item menu-item-type-post_type menu-item-object-page"><a
													href="${pageContext.request.contextPath}/contact-v3.jsp"><i
														></i> Frozen</a></li>
											</ul></li>
									</ul></li>
									 
								<li id="menu-item-272"
									class="menu-item menu-item-type-custom menu-item-object-custom "><a
									href="${pageContext.request.contextPath}/event">Event</a>
									<!-- <ul class="sub-menu  level-0">
										<li id="menu-item-274"
											class="menu-item menu-item-type-taxonomy menu-item-object-tribe_events_cat"><a
											href="event"><i
												class="icomoon-calendar"></i>Event &#8211; Category</a></li>
										<li id="menu-item-3275"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="past-event"><i
												class="icomoon-calendar2"></i>Past Event</a></li>
										<li id="menu-item-3276"
											class="menu-item menu-item-type-post_type menu-item-object-page"><a
											href="upcoming-event"><i
												class="icomoon-calendar2"></i>Upcoming Event</a></li>
									</ul> --></li>
							</ul>
						</nav>
						<!-- .primary-navigation -->
					</nav>
					<!-- .main-navigation -->

					<div class="main-search-form">
					
		
		
		
					<div id="site-search" style="visibility: visible;">
  
<span id="topNavSearchBlock">
    <form id="search_form" action="${pageContext.request.contextPath}/event" method="get" autocomplete="off">
           <div id="search-wrap" class="search-wrap"> 
           <input class="search-textfield placeholder event_autocomplete" id="search_input" name="event_title" type="text" title="Search Ticketmaster by Artist, Team, or Venue" placeholder="Search Artist, Team, or Venue" aria-describedby="auto_suggest_id"></div><input id="search" class="search-button" type="submit" value="Search" title="Search" alt="Search">  
         </form>
      
  </span></div> 
					
					 
						
					</div>

				</div>
			</div>

		</header>
		
		
		
		   
		 
		
<script type="text/javascript">
$( document ).ready(function() {
	 

		            $('.event_autocomplete').autocomplete({
			        serviceUrl: '${pageContext.request.contextPath}/event_autocomplete',
			        paramName: "event_title",
			        delimiter: ",",
			        type: 'GET',
			    
			        transformResult: function(response) {
		    	    return {
		        	suggestions: $.map($.parseJSON(response), function(item) {
		        	return { value: item.event_title, data: item.id };
		            })
		            };
		            }
		            
		           
		            
		         	});
		            
});
	               </script>
	               
	               
	               
	               