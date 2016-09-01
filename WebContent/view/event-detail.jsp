<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	 
<!DOCTYPE html>
<html lang="en-US">



<head>
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<jsp:include page="layouts/head_include.jsp"></jsp:include>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
        <link href="${pageContext.request.contextPath}/view/css/validationEngine.jquery.css" rel="stylesheet" />
    
            <script src="${pageContext.request.contextPath}/view/js/jquery.validationEngine.js"></script>
        <script src="${pageContext.request.contextPath}/view/js/jquery.validationEngine-en.js"></script>
   
</head>




<body
	class="home page page-id-4016 page-template page-template-templates page-template-fullwidth page-template-templatesfullwidth-php wpb-js-composer js-comp-ver-4.11.2.1 vc_responsive">

	<div class="site-content">

		 <jsp:include page="layouts/header.jsp"></jsp:include>
		
		
		
		<!-- .site-header -->


	<main class="main-content" id="content">

		
	<div id="tribe-events" class="tribe-no-js" data-live_ajax="1" data-datepicker_format="0" data-category=""><div class="tribe-events-before-html"></div><span class="tribe-events-ajax-loading"><img class="tribe-events-spinner-medium" src="http://demo.tokomoo.com/festiven/standard/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" alt="Loading Events" /></span>	




<div class="single-event">
		<div class="event-cover" style="background-image:url('http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${event.event_img}')">
		<div class="container">
		
	  
		      
			<div class="event-summary">
				<div class="event-date" style="right: -105px;">
					<span class="month"><fmt:formatDate type="date" value="${event.event_start_date}"  /></span>
					<span class="time"><fmt:formatDate type="time" value="${event.event_start_time}" pattern="hh:mm a"/>	</span>
<!-- 					<span class="year">2016</span> -->
				</div>
				<div class="summary-content">
				
					<h2 class="event-title"> ${event.event_title}</h2>
					
					<div class="event-excerpt" style="    height: 310px;
    text-overflow: ellipsis;
    overflow: hidden;"> 
              <p>  ${event.event_desc}</p>

					</div>
					<div class="event-action">

						
							<div class="price-info">
																	<div class="price">$ ${event.event_price}</div>
															</div>
							<div class="action">
																<a href="#" data-toggle="modal" data-target="#myModal" class="button" target="_blank" onclick="loadBookingPopup()">Buy Ticket</a>
							</div>

						
					</div>
				</div>
			</div>

		</div>
	</div>



  

	<div class="container">
		<div class="event-details">

			<div class="event-info">
				<div class="event-time-block event-info-block">
					<i class="drip-icon-calendar"></i>
					<span class="date"> <fmt:formatDate type="date" value="${event.event_start_date}" /></span>
					<span class="time">
						<fmt:formatDate type="time" value="${event.event_start_time}" pattern="hh:mm a"/>				</span>
					<a class="tribe-events-ical" href="#"><i class="drip-icon-upload"></i> Export to Calendar </a>
				</div>


 
<!-- code map --> 

				<div class="event-map-block event-info-block">
	
						
						  
						 <div id="map" style="height: 350px;width: 100%;"></div>
   <script>

      function initMap() {
        

          
        var geocoder = new google.maps.Geocoder();
        var address = '${event.event_address}';

        geocoder.geocode( { 'address': address}, function(results, status) {

          if (status == google.maps.GeocoderStatus.OK) {
            var latitude = results[0].geometry.location.lat();
            var longitude = results[0].geometry.location.lng();
            
            var myLatLng = {lat: latitude, lng: longitude};

            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 8,
              center: myLatLng
            }); 
            
            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Hello World!'
              });
             
            
            
          } 
        }); 
        
        
      }
    </script>
         
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCUD01kRExPTuJWQwAHln9vbo6_9YnA3w&callback=initMap"
    async defer></script>
   
									</div> 
									
									
									
									
									

				<div class="event-location-block event-info-block">
						<i class="drip-icon-map"></i>
	<address>
		
			<h3> ${event.event_title}</h3>

			<p><span class="tribe-address">

<span class="tribe-street-address">321 Mercer Street</span>
	
		<br>
		<span class="tribe-locality">${event.event_address}</span><span class="tribe-delimiter">,</span>



</span>
</p>

					
		
	</address>
					<a class="tribe-events-gcal" href="http://maps.google.com/maps?f=q&#038;source=s_q&#038;hl=en&#038;geocode=&#038;q=321+Mercer+Street+Seattle+WA+98101+United+States" title="Add to Google Calendar"><i class="drip-icon-plus"></i> Export the Map </a>
				</div>

				<!-- <div class="event-schedule-block event-info-block">
					<i class="drip-icon-view-list"></i>
					<h3>Schedule</h3>
					<table class="time-schedule">
						<tr><td><i class="drip-icon-tag"></i> 08:00</td><td>Registration</td></tr><tr><td><i class="drip-icon-tag"></i> 09:00</td><td>Start</td></tr><tr><td><i class="drip-icon-tag"></i> 12:00</td><td>Lunch</td></tr><tr><td><i class="drip-icon-tag"></i> 13:00</td><td>Introduction to the WordPress Backend</td></tr><tr><td><i class="drip-icon-tag"></i> 16:00</td><td>Coffee Break</td></tr><tr><td><i class="drip-icon-tag"></i> 18:00</td><td>End</td></tr>					</table>
				</div> -->
 
				<div class="event-organizer-block event-info-block">
						<i class="drip-icon-user"></i>
	<h3>Event Manager</h3>

		
		<p>
			<strong>
				${event.manager_name}		</strong><br>

									<strong>Phone:</strong>
						<a href="tel:022-2503530">${event.manager_phone}</a><br>
											<strong>Email:</strong>
						<a href="mailto:support@tokomoo.com">${event.manager_email}</a><br>
					
		</p>

		
				</div>
			

<div id="related_events_data">

</div>				

	

			</div>

			<div class="event-content">
				<div class="entry-content">
					 <p>  ${event.event_desc}</p>
				</div> 

				   <div class="sponsor-section">

					<h3 class="section-title">Sponsors</h3>
					<small class="section-subtitle">Our Loyal And supportive Sponsors</small>


					<div class="sponsor-images">
																				<a href="#"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l6-170x109.png" alt="Sponsor"></a>
																				<a href="#"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l5-170x109.png" alt="Sponsor"></a>
																				<a href="#"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l3-170x109.png" alt="Sponsor"></a>
																				<a href="#"><img src="http://demo.tokomoo.com/festiven/standard/wp-content/uploads/sites/3/2015/09/l1-170x109.png" alt="Sponsor"></a>
											</div>
				</div> 
				 
			<c:if test="${gallery_list.size()>0}">	
	<div class="event-gallery">
		<h3>Event Gallery</h3>


                                            	<c:forEach items="${gallery_list}" var="o" varStatus="theCount">

					<a href="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/gallery/${o.gallery_img}"><img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/gallery/${o.gallery_img}" alt="Event Gallery"></a>
				
			
			</c:forEach>
			</div>
 </c:if> 

				<div class="event-taxonomy">
					<div class="event-category">
						<strong>Categories</strong> 
								<a href="#">${event.category_name} </a>					</div>
					<!-- <div class="event-tags">
						<strong>Tags</strong>
								<a href="#">audience</a>, 			<a href="#">carefree</a>, 			<a href="#">cheering</a>, 			<a href="3">concert</a>, 			<a href="#">crowd</a>, 			<a href="#">culture</a>, 			<a href="#">dancing</a>, 			<a href="#">day</a>, 			<a href="#">energy</a>, 			<a href="#">excitement</a>, 			<a href="#">fan</a>, 			<a href="#">festival</a>, 			<a href="#">happy</a>, 			<a href="#">horizontal</a>, 			<a href="#">music</a>, 			<a href="#">outdoors</a>, 			<a href="3">performance</a>, 			<a href="#">playing</a>, 			<a href="#">popular</a>, 			<a href="#">rock</a>, 			<a href="3">singing</a>, 			<a href="#">sound</a>, 			<a href="#">summer</a>, 			<a href="#">vitality</a>, 			<a href="3">waving</a>, 			<a href="#">wordcamp</a>, 			<a href="3">wordpress</a>, 			<a href="#">youth</a>						
								</div> -->
				</div> 
  
				<!-- <div class="post-navigation">
					<a class="prev-post" href="#"><span>Previous Event</span> WordCamp 2016: Hampton Roads</a>					<a class="next-post" href="#"><span>Next Event</span> WordCamp Porto Alegre 2016</a>				
					</div> -->
			</div>
		</div>
	</div>
</div>


<div class="buy-ticket-popup">
    <div class="ticket-modal">
        <button class="close"><i class="drip-icon-cross"></i></button>
			</div>
</div>

	<div class="tribe-events-after-html"></div></div><!-- #tribe-events -->
<!--
This calendar is powered by %1$s.
http://m.tri.be/18wn
-->

	</main>
		<!-- .main-content -->
		
	
		
		
		<jsp:include page="layouts/footer.jsp"></jsp:include>
		
		
		
		

	</div>
	<!-- .site-content -->
















  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ticket Booking [ <b>${event.event_title}</b> ]</h4>
        </div>
        <div class="modal-body">
        
        
        <div id="loadDataModal">
        
        </div>
        
 
        
         
        </div>
        <div class="modal-footer">
        </div>
      </div>
      
    </div>
  
  
</div>

 
 

<script type="text/javascript">
function loadBookingPopup()
{
	 
	 $.post("booking_popup", 
  			    {
     
  		   }, 
  			    function(data,status){
  			 $("#loadDataModal").html(data);
  		   });
}
   
function loginAjax()
{ 
	 
	 $.post("login_ajax_booking", 
			    {
email_id:$("#email_id").val(),
password:$("#password").val()
 
		   }, 
			    function(data,status){
			   if(data=="1")
				   {
				   loadBookingPopup();
				   }
			   else
				   { 
				   $("#msgLogin").html('<div class="alert alert-danger"><p>Incorrect Login! Please try agin.</p></div>');
				   }

		     });  
	 
	 
}
 
$("#bookingBtn").live("click", function(){
		 	
	   $("#booking_action").validationEngine();
	
 
	if($("#booking_action").validationEngine('validate'))
		{
		   
		$.post("booking_action", 
			    {
			number_ticket:$("#number_ticket").val(),
			member_id:$("#member_id").val(),
			message:$("#message").val(),
			 event_id:'${event.id}'
		   }, 
			    function(data,status){
			  $("#msg_booking").html(data); 
			  
			  $("#message").val("")
		   });
		 
		}
		});
		
	    
function loadRelatedEvents(cid,eid)
{
	 $.post("related_events", 
  			    {
		 category_id:cid,
		 event_id:eid
  		   }, 
  			    function(data,status){
  			 $("#related_events_data").html(data);
  		   });
}
 
loadRelatedEvents('${event.category_id}','${param.id}');
   
</script>

	
</body>
</html>
