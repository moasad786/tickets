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
        
        

                
                <div class="card profile-card" style="visibility: visible; opacity: 1; display: block; transform: translateY(0px);">
            <div class="panel-content">
                <div class="panel-image">
                    <img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${event.event_img}" alt="Loading image..." class="img-responsive">
                    <h3 class="panel-image-headline">${event.event_title}
                        <small><fmt:formatDate type="date" value="${event.event_start_date}"  /> <fmt:formatDate type="time" value="${event.event_start_time}" pattern="hh:mm a"/>  
               </small>
                    </h3> 
                </div>  
 
                <div class="panel-body">
                    <table class="table table-no-border">
                        <tbody>  
                      
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
                </div>
 
                <footer class="panel-footer pt-n">
${event.event_desc}
  
                </footer>
            </div>
        </div>   
                 
     
  



<jsp:include page="layouts/footer_include.jsp"></jsp:include>

    </body>
</html>
<!-- Localized -->