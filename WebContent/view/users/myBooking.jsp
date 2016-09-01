<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  
<jsp:include page="layouts/head_include.jsp"></jsp:include>
    </head>

    <body class="animated-content infobar-overlay">
        
        

<jsp:include page="layouts/top_nav.jsp"></jsp:include>


        <div id="wrapper">
            <div id="layout-static">
                
                
                <jsp:include page="layouts/side_nav.jsp"></jsp:include>
                
         
     <div class="panel panel-info" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="" style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);">
				<div class="panel-heading">
					<h2>My Booking List</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><span class="material-icons">keyboard_arrow_up</span></span></div>
					<div class="options">

					</div>
				</div>
				<div class="panel-body no-padding">
				
				       <c:choose>
         <c:when test="${booking_list.size()>0}">        
     
					<table class="table table-striped">
						<thead>
							<tr class="info">
							
							  <th></th>
                                             <th >Event </th>
                                            <th>Name</th>
                                           <th>Ticket Id</th>  
                                          <th> Numbers of Ticket</th> 
                                            <th>Message</th>  
                                              <th>Total</th>  
                                                  
                                                    <th> Booking Date Time</th>   
							</tr>
						</thead>
						
                                            	<c:forEach items="${booking_list}" var="o" varStatus="theCount">
						<tbody>
							
								<tr>
								 <td># ${(theCount.index)+1}</td>

                                            <td><img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${o.event_img}" width="100"> <br> <b>  ${o.event_title}</b> </td>
                                              <td>${o.first_name}  ${o.last_name} </td>
                                            
                                            <td >${o.ticket_id}</td>
                                             <td >${o.number_ticket}</td>
                                              <td >${o.message}</td>
                                               <td >$${o.total_price}</td>
                                              
                                               <td >${o.booking_datetime}</td>
                                            
                                            
							</tr>
							
						</tbody>
						</c:forEach>
					</table>
					</c:when> 
              <c:otherwise>
              
              <div class="alert alert-danger">
              You have not book any ticket yet. 
              </div>
              </c:otherwise>
              
              </c:choose>
					
				</div>
			</div>
     
			
		</div>
                
                
         
      </div>    

<jsp:include page="layouts/footer_include.jsp"></jsp:include>

    </body>
</html>
<!-- Localized -->