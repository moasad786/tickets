<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        
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
					<h2>My event list</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><span class="material-icons">keyboard_arrow_up</span></span></div>
					<div class="options">

					</div>
				</div>
				<div class="panel-body no-padding">
				
				 <c:choose>
         <c:when test="${event_list.size()>0}"> 
         
					<table class="table table-striped">
						<thead>
							<tr class="info">
							
							  <th> </th>
                                               <th>Event Image</th>
                                            <th>Event Title</th>
                                             <th>Event Price</th>  
                                             <th>Total Ticket</th>
                                          
                                            <th>Event Date</th>  
                                             <th>Event Time</th>  
                                              <th>Action</th>  
                                            
                                              
                                                      
							</tr> 
						</thead>
						 <c:if test="${event_list.size()>0}">
                                            	<c:forEach items="${event_list}" var="o" varStatus="theCount">
						<tbody>
							 
								<tr> 
								 <td># ${(theCount.index)+1}</td>
                                             <td><img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${o.event_img}" width="200"></td>
                                            <td>${o.event_title}</td>
                                               <td >$${o.event_price}</td>
                                                
                                            <td>
                                            <c:choose>
                                            <c:when test="${sessionScope.user_role=='members'}">
                                            
                                              ${o.ticket_assigned}
                                            </c:when>
                                            <c:otherwise>
                                             ${o.total_ticket}
                                            </c:otherwise>
                                            </c:choose>
                                           
                                            
                                            
                                            
                                            </td>
                                            
                                            
                                            <td ><fmt:formatDate type="date" value="${o.event_start_date}"/></td>
                                              <td ><fmt:formatDate type="time" value="${o.event_start_time}" pattern="hh:mm a"/></td>
                                               <td> 
                                               <button class="btn btn-raised btn-primary" onclick="loadModalData('${o.id}')"> <i class="fa fa-eye" aria-hidden="true"></i>  View Event</button>
                                               </td>
                                               
                                            
							</tr>
							
						</tbody>
						</c:forEach></c:if>
					</table>
					
					</c:when>
					 <c:otherwise>
              
              <div class="alert alert-danger">
              You do'nt have any event Assigned. 
              </div>
              </c:otherwise>
					</c:choose>
				</div>
			</div>
     
              
			
		</div>
                
                
         
      </div>    

  
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document" style="width: 75%;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-calendar"></i>  Event Detail</h4>
      </div>
      <div class="modal-body">
      
       <div id="LoadiFrame">
      
      </div>
       
      
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
  

<script type="text/javascript">
function resizeIframe(obj,model_type) {
    
    
	obj.style.height = (obj.contentWindow.document.body.scrollHeight)+ 'px';

}
   
function loadModalData(eid)
{
	 var url='myEventDetail?event_id='+eid; 
    	   
       $("#LoadiFrame").html('<iframe src="'+url+'" style="width:100%;border:0px;" scrolling="no" onload="javascript:resizeIframe(this);"></iframe>');
 	
	$('#myModal').modal('show');
}
</script>





<jsp:include page="layouts/footer_include.jsp"></jsp:include>

    </body>
</html>
<!-- Localized -->