<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en-US">

  

<head>
<jsp:include page="layouts/head_include.jsp"></jsp:include>
  <link href="${pageContext.request.contextPath}/view/admin/assets/css/bootstrap-datetimepicker.css" rel="stylesheet" />
  
  
  
</head>




<body
	class="home page page-id-4016 page-template page-template-templates page-template-fullwidth page-template-templatesfullwidth-php wpb-js-composer js-comp-ver-4.11.2.1 vc_responsive">

	<div class="site-content">

		 <jsp:include page="layouts/header.jsp"></jsp:include>
		
		
		
		<!-- .site-header -->

<main class="main-content" id="content">



					<div class="page-header">
	<div class="container">

	<div class="breadcrumbs"><a class="home" href="${pageContext.request.contextPath}/">Home</a> &#47; <span class="current">Event</span></div>
	
		<h2 class="page-title">
			Events		</h2>

	
	</div>
</div> <!-- .page-header -->
		
	<div id="tribe-events" class="tribe-no-js" data-live_ajax="1" data-datepicker_format="0" data-category=""><div class="tribe-events-before-html"></div><span class="tribe-events-ajax-loading"><img class="tribe-events-spinner-medium" src="http://demo.tokomoo.com/festiven/standard/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" alt="Loading Events" /></span>	<div id="tribe-events-content-wrapper" class="tribe-clearfix"><input type="hidden" id="tribe-events-list-hash" value="">
	<!-- Tribe Bar -->



<div class="container">

	<div id="tribe-events-bar">

		<form id="tribe-bar-form" class="tribe-clearfix" name="tribe-bar-form" method="get" action="event">

			<!-- Mobile Filters Toggle -->

			<div id="tribe-bar-collapse-toggle" >
				Find Events<span class="tribe-bar-toggle-arrow"></span>
			</div>

			<!-- Views -->
							<!-- <div id="tribe-bar-views">
					<div class="tribe-bar-views-inner tribe-clearfix">
						<h3 class="tribe-events-visuallyhidden">Event Views Navigation</h3>
						<label>View As</label>
						<select class="tribe-bar-views-select tribe-no-param" name="tribe-bar-view">
															<option selected value="http://demo.tokomoo.com/festiven/standard/events/list/" data-view="list">
									List								</option>
															<option tribe-inactive value="http://demo.tokomoo.com/festiven/standard/events/month/" data-view="month">
									Month								</option>
															<option tribe-inactive value="http://demo.tokomoo.com/festiven/standard/events/today/" data-view="day">
									Day								</option>
													</select>
					</div>
					.tribe-bar-views-inner
				</div>.tribe-bar-views --> 
			
			
			 
			 
								<div class="tribe-bar-filters ">
					<div class="tribe-bar-filters-inner tribe-clearfix">
													<div class="tribe-bar-date-filter">
								<label class="label-tribe-bar-date" for="tribe-bar-date">Events From</label>
								
								<input type="text" name="event_date" style="position: relative;" id='datetimepicker_date'  placeholder="Date">
								 		</div>
													<div class="tribe-bar-search-filter">
								<label class="label-tribe-bar-search" for="tribe-bar-search">Search</label>
								 
								<input type="text" name="event_title" id="tribe-bar-search" value="" placeholder="Search" class="event_autocomplete">		
								
													</div>
												<div class="tribe-bar-submit">
							<input class="tribe-events-button tribe-no-param" type="submit" name="submit-bar" value="Find Events" />
						</div>
						<!-- .tribe-bar-submit -->
					</div>
					<!-- .tribe-bar-filters-inner -->
				</div><!-- .tribe-bar-filters -->
			
		</form>
		<!-- #tribe-bar-form -->

	</div><!-- #tribe-events-bar -->
</div>

   


	<!-- Main Events Content -->

<div id="tribe-events-content" class="events-grid">


	<!-- Notices -->
	 
	<!-- Events Loop -->
					
 
<c:choose>
	   <c:when test="${event_list.size()>0}">
                                            	<c:forEach items="${event_list}" var="o" varStatus="theCount">
		 
<div class="event">
	<a href="event_detail?id=${o.id}">
											<figure class="event-thumb">
											
					<img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${o.event_img}"  height="253" style="    height: 325px !important;">
				</figure>
			 
		<!-- Event Title -->
				<h2 class="event-title">${o.event_title}</h2>
		
		<span class="event-date">
			<span class="fold">
			<!-- <span class="day"></span> -->
				<span class="month"><fmt:formatDate type="date" value="${o.event_start_date}" /></span>
				<span class="year"><fmt:formatDate type="time" value="${o.event_start_time}" pattern="hh:mm a" /></span>
			</span>
		</span>
	</a> 
</div>
 
  
</c:forEach>
</c:when>
<c:otherwise>
<div class="tribe-events-notices"><ul><li>There were no results found</li></ul></div>
 
</c:otherwise>	 
</c:choose>	
	<!-- Event  -->
 


	
			
	
		<!-- #tribe-events-footer -->
 </div><!-- #tribe-events-content -->

	<div class="tribe-clear"></div>

</div> <!-- #tribe-events-content-wrapper -->	<div class="tribe-events-after-html"></div></div><!-- #tribe-events -->
<!--
This calendar is powered by %1$s.
http://m.tri.be/18wn
-->

	</main>
		<!-- .main-content -->
		
		
			<script src="${pageContext.request.contextPath}/view/admin/assets/js/moment-with-locales.js"></script>
			<script src="${pageContext.request.contextPath}/view/admin/assets/js/bootstrap-datetimepicker.js"></script>
          
		
		<script>

		$(function() {
			$('#datetimepicker_date').datetimepicker({
                format: 'YYYY-MM-DD'
            });
			
			
			
		});
		
		</script>
		
		
		<jsp:include page="layouts/footer.jsp"></jsp:include>
		
		
		
		

	</div>
	<!-- .site-content -->

	
</body>
</html>
