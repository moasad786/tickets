<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ taglib prefix="pagination" uri="/WEB-INF/taglibs/customTaglib.tld"%>
       
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head> 

<jsp:include page="layouts/head_include.jsp"></jsp:include>
  <link href="${pageContext.request.contextPath}/view/admin/assets/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/view/admin/assets/js/bootstrap-toggle.min.js"></script>
   
       <link href="${pageContext.request.contextPath}/view/css/bootstrap_pagination.css" rel="stylesheet" />
   
       
</head>

<body>
    <div id="wrapper">
        <jsp:include page="layouts/top_nav.jsp"></jsp:include>
           <!-- /. NAV TOP  -->
               
               
               <jsp:include page="layouts/side_nav.jsp"></jsp:include>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Booking Request  List</h2>   
                        <h5>Listing of all Booking Request  </h5>
                       
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
                                            <th></th>
                                             <th>Event Title</th>
                                            <th>Name</th>
                                           <th>Ticket Id</th>  
                                          <th> Numbers of Ticket</th> 
                                            <th>Message</th>  
                                              <th>Total</th>  
                                                  
                                                    <th> Booking Date Time</th>    
                                                    <th>Status </th>                                       
                                                     
                                        </tr>
                                    </thead>
                                    
                                  
                                    <c:if test="${booking_list.size()>0}">
                                            	<c:forEach items="${booking_list}" var="o" varStatus="theCount">
                                    
                                    <tbody>
                                      
                                        <tr class="odd gradeX">
                                       <td># ${offset + theCount.index +1 }</td>
                                        
                                            <td>${o.id}  ${o.event_title} </td>
                                              <td>${o.first_name}  ${o.last_name} </td>
                                            
                                            <td >${o.ticket_id}</td>
                                             <td >${o.number_ticket}</td>
                                              <td >${o.message}</td>
                                               <td >$${o.total_price}</td>
                                              
                                               <td >${o.booking_datetime}</td>
                                            
                                              
                                            <td >
                                            <input type="checkbox" class="status_checkbox" data-toggle="toggle" data-on="Approve" data-off="Unapprove" value="${o.id}"   <c:if test="${o.status==1}"> checked="checked" </c:if>   >
                                                   
                                                    </td>
                                            
                                        </tr> 
                                        </c:forEach>
                                      </c:if>
                                      </tbody>
                                      
                                      
                                      
                                </table> 
                                    
                                  
                                    <pagination:paginate max="${maxLimit}" offset="${offset}" count="${count}" uri="${pageContext.request.contextPath}/admin/bookingList" next="&raquo;" previous="&laquo;" />
                               
                                       
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
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    
    
  
   
    
   <script type="text/javascript">
   $("#bookingList").addClass("active-menu");
   
   function updateStatus(uid,sid)
   {
   	     $.post("update_status_booking", 
   	  			    {
   	  	   id:uid,
   	  	status:sid
   	    
   	  		   }, 
   	  			    function(data,status){
   	  			   
   	  		   });
   	     
   }
   
    
    
   $(".status_checkbox").change(function() {
	   
       if($(this).is(':checked'))
    	   {
    	
    	  updateStatus($(this).val(),'1');
    	   } 
       else
    	   {
    	   updateStatus($(this).val(),'0');
    	   }
        
   }); 
   
   
  
   
   </script>
   
   
      <jsp:include page="layouts/footer_include.jsp"></jsp:include>
    
   
</body>
</html>
