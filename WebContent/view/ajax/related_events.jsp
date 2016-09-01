		       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<c:if test="${event_list.size()>0}">

   

		       <div class="event-related-block event-info-block">
		<h3> <i class="fa fa-link"></i>Related Events</h3>
		<ul>
		<c:forEach items="${event_list}" var="e">
				<li>  
					<a href="event_detail?id=${e.id}">
						<span style="background-image:url('http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${e.event_img}')"></span>
						<div>
							<h3 class="event-title">${e.event_title}</h3> 
							<small class="event-date"><fmt:formatDate type="date" value="${e.event_start_date}"/>  <fmt:formatDate type="time" value="${e.event_start_time}" pattern="hh:mm a"/></small>
						<h4 class="event-date">Price: $${e.event_price}</h4> 
						</div>
					</a>
				</li> 
 
</c:forEach> 
						    
		</ul>

	</div><!-- .related -->
		       </c:if>