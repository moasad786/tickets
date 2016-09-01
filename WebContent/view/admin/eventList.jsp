<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
   
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<jsp:include page="layouts/head_include.jsp"></jsp:include>

</head>

<body>
    <div id="wrapper">
      <jsp:include page="layouts/top_nav.jsp"></jsp:include>
           <!-- /. NAV TOP  -->
           
           
                  <jsp:include page="layouts/side_nav.jsp"></jsp:include>
                  
    
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Events List</h2>   
                        <h5>Listing of all members </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
                
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th> </th>
                                              <th>Event Image</th>
                                            <th>Event Title</th>
                                             <th>Event Price</th>  
                                             <th>Total Ticket</th>
                                          
                                            <th>Event Date</th>  
                                             <th>Event Time</th>  
                                              <th>View Detail</th>  
                                               <th>Edit</th>  
                                                <th>Delete</th>  
                                                 <th>Add Gallery</th>  
                                              
                                              
                                        </tr>
                                    </thead>
                                    
                                  
                                    <c:if test="${event_list.size()>0}">
                                            	<c:forEach items="${event_list}" var="o" varStatus="theCount">
                                    
                                    <tbody>
                                      
                                        <tr class="odd gradeX">
                                            <td># ${(theCount.index)+1}</td>
                                              <td><img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${o.event_img}" width="200"></td>
                                            <td>${o.event_title}</td>
                                               <td >$${o.event_price}</td>
                                                
                                            <td >${o.total_ticket}</td>
                                            
                                            <td ><fmt:formatDate type="date" value="${o.event_start_date}"/></td>
                                              <td ><fmt:formatDate type="time" value="${o.event_start_time}" pattern="hh:mm a"/></td>
                                              
                                               <td> 
                                               <button class="btn btn-raised btn-primary" onclick="loadModalData('${o.id}')"> <i class="fa fa-eye" aria-hidden="true"></i>  View Event</button>
                                               </td>
                                            
                                             
                                               
                                              <td>
                                             
                                             <a href="updateEvent?id=${o.id}"  class="btn btn-primary" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</a>
                                               </td>
                                                    <td >
                                                 <a  href="deleteEvent?id=${o.id}"  class="btn btn-danger" ><i class="fa fa-trash-o" aria-hidden="true"></i>
                                                Delete</a>
                                                
                                                </td>
                                                 
                                                <td>
                                                 <a  href="addGallery?event_id=${o.id}"  class="btn btn-info" ><i class="fa fa-picture-o" aria-hidden="true"></i>
                                                Add Gallery</a>
                                                 
                                                </td>
                                             
                                        </tr> 
                                        </c:forEach>
                                      </c:if>
                                      </tbody>
                                       
                                      
                                      
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
          
          
         
                <!-- /. ROW  -->
        </div>
               
    </div>
    
    
    
    
        </div>
        
         
        
        <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Event Detail</h4>
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

$("#event_side_nav").addClass("active");
$("#eventList").addClass("active-menu");


function resizeIframe(obj,model_type) {
    
    
	obj.style.height = (obj.contentWindow.document.body.scrollHeight)+ 'px';

}
  
function loadModalData(eid)
{
	 var url='${pageContext.request.contextPath}/admin/eventDetail?event_id='+eid; 
    	  
       $("#LoadiFrame").html('<iframe src="'+url+'" style="width:100%;border:0px;" scrolling="no" onload="javascript:resizeIframe(this);"></iframe>');
 	
	$('#myModal').modal('show');
}

      
        </script>
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
    
   
</body>
</html>
