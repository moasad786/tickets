<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        
<!DOCTYPE html>
<html lang="en">
<head>
  
<jsp:include page="layouts/head_include.jsp"></jsp:include>
<style>
.card-image-headline
{
    background: rgba(0, 0, 0, 0.69);
    padding: 15px;
    width: 100%; 
}
.card .card-image .card-image-headline
{
    bottom: -10px;
    left: 0; 
}
</style>

    </head>

    <body class="animated-content infobar-overlay">
        
        

        <div id="wrapper">
            <div id="layout-static row">
                  
                <div   class=" <c:choose><c:when test='${sessionScope.user_role=="managers"}'> col-md-6 </c:when> <c:otherwise>col-md-12</c:otherwise></c:choose>  ">
                 
                <div class="card profile-card" style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);">
            <div class="card-content">
                <div class="card-image">
                    <img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${event.event_img}" alt="Loading image..." class="img-responsive">
                    <h3 class="card-image-headline">${event.event_title}
                        <small><fmt:formatDate type="date" value="${event.event_start_date}"  /> <fmt:formatDate type="time" value="${event.event_start_time}" pattern="hh:mm a"/>  
               </small>
                    </h3> 
                </div> 
 
                <div class="card-body">
                    <table class="table table-no-border">
                        <tbody> 
                         <tr> 
                                <td colspan="2"><h4>${event.event_title}</h4></td>
                            </tr> 
                             
                             <tr> 
                                <td> <i class="fa fa-calendar"></i><b> Start Date</b></td>
                                <td><fmt:formatDate type="date" value="${event.event_start_date}"/></td>
                            </tr> 
                             
                             <tr>
                                <td><i class="fa fa-clock-o"></i> <b>Start Time</b></td>
                                <td><fmt:formatDate type="time" value="${event.event_start_time}" pattern="hh:mm a"/> </td>
                            </tr> 
                            
                             <tr>
                                <td><i class="fa fa-calendar"></i> <b>End Date</b></td>
                                <td><fmt:formatDate type="date" value="${event.event_end_date}"  /></td>
                            </tr> 
                             
                             <tr>
                                <td><i class="fa fa-clock-o"></i> <b>End Time</b></td>
                                <td><fmt:formatDate type="time" value="${event.event_end_time}" pattern="hh:mm a"/> </td>
                            </tr> 
                            
                             <tr>
                                <td><i class="fa fa-money"></i> <b>Ticket Per Price</b></td>
                                <td>$${event.event_price} </td>
                            </tr> 
                              
                             <tr>
                                <td><i class="fa fa-ticket"></i> <b>Total Ticket Available</b></td>
                                <td>${event.total_ticket} </td>
                            </tr> 
                            
                           
                        </tbody>
                    </table>
                    <button class="btn btn-default btn-fab"><i class="material-icons" style="color: #d81b60">favorite</i></button>
                </div>

                <footer class="card-footer pt-n">
${event.event_desc}

                </footer>
            </div>
        </div>   
                </div>
                 <c:if test="${sessionScope.user_role=='managers'}">
                <div class="col-md-6"> 
      
      
     <div class="panel panel-primary">
				<div class="panel-heading">
					<h2>Assign To Members </h2>
					
				</div>
				<div class="panel-body">
				<h4>Total Available Ticket: ${event.total_ticket}</h4>
Here is the listing of all members register with us.<br>
you can assign this event to any events just enter the amount of ticket under the members and press Assign button.
<div id="msg_membership"></div>
				</div> 
				
				
				
				<div id="ListMembership"></div>
				
				
	
			</div>
			
			
  
               
			</div>
			</c:if>
		</div>
                
                
         
      </div>    
  
     
<script type="text/javascript">
var event_id_param='${param.event_id}';
    function list_membership() 
    {
    	$.post("list_membership_users", 
    		    {
     event_id:event_id_param
 
    	   },   
    		    function(data,status){
    		   $("#ListMembership").html(data);
    	   });	 
    } 
     
    list_membership();
	   
	   
function addMembership(uid,eid)
{
	     $.post("add_membership", 
	  			    {
	    	 user_id:uid,
	    	 event_id:eid,
	    	 tickets:$('#amount_tickets'+uid).val()
	    
	  		   }, 
	  			    function(data,status){
	  			   $("#msg_membership").html(data);
	  		   });
	     
} 
</script>



<jsp:include page="layouts/footer_include.jsp"></jsp:include>


     


    </body>
</html>
<!-- Localized -->