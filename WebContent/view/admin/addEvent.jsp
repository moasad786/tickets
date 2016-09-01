<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<head>

                    
      <link href="${pageContext.request.contextPath}/view/admin/assets/css/bootstrap-datetimepicker.css" rel="stylesheet" />
  

<jsp:include page="layouts/head_include.jsp"></jsp:include>
 
 <style type="text/css">
 .wrapper-file
 {
 position: relative;
  width: 230px;
    height: 230px;
 }
 .select-wrapper-file {
    background-size: cover;
    display: block;
    position: relative;
   width:100%;
   height:100%;
    cursor: pointer;
   position: absolute;
   top: 0;
}
#event_img {
   width:100%;
   height:100%;  
    margin-right: 100px;
    opacity: 0;
    filter: alpha(opacity=0); /* IE 5-7 */
     cursor: pointer;
}
 </style>   
  
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
                     <h2>Add Event</h2>   
                        <h5>Event Information </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                  <c:if test="${param.added!=null && param.added=='success'}">
                 <div class="alert alert-success">
                 <h4>You have successfully added  </h4>
                 </div>
                 </c:if> 
                 
                 <hr />
               <div class="row">
                <div class="col-md-12">
                    <!-- Form Elements -->
                    <div class="panel panel-info">
                         
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <form role="form" action="addEvent_action" id="addEvent_action" method="post" enctype="multipart/form-data">
                                   <input type="hidden" name="id" value="${event.id}"> 
                                    
                    <div class="panel panel-info">
                        <div class="panel-heading">
                           Select Category Of Event
                        </div>
                        <div class="panel-body">               
                                   
  <div class="form-group">
                                            <label>Select	Category </label>
                                            
                                              <select  class="form-control validate[required]" name="category_id">
          
          
            <c:if test="${category_list.size()>0}">
                                            	<c:forEach items="${category_list}" var="o" varStatus="theCount">
                                              
      <option value="${o.id}"  <c:if test="${event.category_id==o.id}">selected="selected"</c:if>  >${o.category_name}</option>
     
      </c:forEach></c:if>
     </select> 
                                        </div>
                                        
                                        
                                        </div>
                                        </div>
                                   
                                   
                                     <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Event Details
                        </div>
                        <div class="panel-body">               
                            
                            
                                   
                                        <div class="form-group">
                                            <label>	Event Title</label>
                                            <input class="form-control validate[required]" name="event_title" value="${event.event_title}" />
                                           
                                        </div>
                                         <div class="form-group">
                                            <label>Event Description</label>
                                            <textarea  class="form-control validate[required]" rows="3" name="event_desc" id="event_desc">${event.event_desc}</textarea>
                                        </div>
                                        
                                        
                                        

  
									
										<div class="row">
											<div class="form-group col-md-6">
                                            <label>Event Start Date</label>
                                            <input class="form-control validate[required] datetimepicker_date" name="event_start_date" value="${event.event_start_date}"   />
                                           
                                        </div>
                                         <div class="form-group col-md-6">
                                            <label>Event Start Time</label>
                                            <input class="form-control validate[required] datetimepicker_time"  name="event_start_time"  value="${event.event_start_time}" />
                                           
                                        </div> 
                                         
                                         </div>
                                        <div class="row">
											<div class="form-group col-md-6">
                                            <label>Event End Date</label>
                                            <input class="form-control validate[required] datetimepicker_date" name="event_end_date" value="${event.event_end_date}"  />
                                           
                                        </div>
                                         <div class="form-group col-md-6">
                                            <label>Event End Time</label>
                                            <input class="form-control validate[required] datetimepicker_time"  name="event_end_time"  value="${event.event_end_time}" />
                                           
                                        </div>
                                        </div>
                                        
                                        
                                        
                                             <div class="form-group">
                                            <label>Event Total Ticket</label>
                                            <input class="form-control validate[required]"  name="total_ticket" value="${event.total_ticket}"/>
                                           
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>Event Price</label>
                                            <input class="form-control validate[required]"  name="event_price" value="${event.event_price}"/>
                                           
                                        </div>
                                        
                                         <div class="form-group">
                                            <label>Event Address</label>
                                            <textarea  class="form-control validate[required]" rows="3" name="event_address" id="event_address">${event.event_address}</textarea>
                                        </div>
                                        
                                        </div>
                                        </div>
                                        
                                          <div class="panel panel-info">
                        <div class="panel-heading">
                           Add Event Manager
                        </div>
                        <div class="panel-body">               
                              
                               
                                          <div class="form-group">
                                            <label>Select Manager</label>
                                           <select  class="form-control validate[required]"  name="manager_id">
                                           <option value="">Select Manager</option>
                                           <c:forEach items="${manager_list}" var="m">
                                           <option value="${m.id}" <c:if test='${event.manager_id==m.id}'>selected="selected"</c:if>  >${m.first_name} ${m.last_name}</option>
                                           </c:forEach>
                                            
                                           </select>
                                        </div> 
                                      
                                         
                                        </div>
                                        </div>
                                       
                                        <div class="form-group wrapper-file">
                                            <label>Event Image</label>
                                            <br>  
                                            <img alt="" <c:choose> <c:when test='${param.id!=null}'> src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/events/${event.event_img}" </c:when><c:otherwise>src="${pageContext.request.contextPath}/view/img/image_add.png" </c:otherwise> </c:choose> id="img_preview" width="230"> 
                                            <span class="select-wrapper-file">
                                            <input type="file" accept="image/*"  name="event_img"  id="event_img" class='<c:if test="${param.id==null}">validate[required]</c:if>' value="${event.event_img}"/>
                                        </span>  
                                         
                                        </div>
                                 <hr>
                                         <button type="submit" class="btn btn-primary">Submit</button>  
                                     </form>
                                
                                
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>
                <!-- /. ROW  -->
             
                <!-- /. ROW  -->
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div> 

 			<script src="${pageContext.request.contextPath}/view/admin/assets/js/moment-with-locales.js"></script>
			<script src="${pageContext.request.contextPath}/view/admin/assets/js/bootstrap-datetimepicker.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath}/view/tinymce/tinymce.min.js"></script>
           
        <script type="text/javascript">
        
        
        $("#event_side_nav").addClass("active");
        $("#addEvent").addClass("active-menu");
        
        $("#addEvent_action").validationEngine();
        
        
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#img_preview').attr('src', e.target.result);
                } 

                reader.readAsDataURL(input.files[0]);
            }
        } 

        
        $("#event_img").change(function(){
            readURL(this);
        });
        
        
         
    	
		$(function() {
			$('.datetimepicker_date').datetimepicker({
                format: 'YYYY-MM-DD'
            });
			
			$('.datetimepicker_time').datetimepicker({
                format: 'hh:mm:ss'
            });
			
			
		});
		   
		tinymce.init({
		    selector: "#event_desc",
		    height:"300"
		});
		
		
	</script>




<script>
 
      var placeSearch, autocomplete;

      function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
           (document.getElementById('event_address')),
            {types: ['geocode']});

      }

 
      // Bias the autocomplete object to the user's geographical location,
      // as supplied by the browser's 'navigator.geolocation' object.
      function geolocate() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var geolocation = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            var circle = new google.maps.Circle({
              center: geolocation,
              radius: position.coords.accuracy
            });
            autocomplete.setBounds(circle.getBounds());
          });
        }
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCUD01kRExPTuJWQwAHln9vbo6_9YnA3w&libraries=places&callback=initAutocomplete"
        async defer></script>
        
        
       
        
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
   
</body>
</html>
