<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<head>
<jsp:include page="layouts/head_include.jsp"></jsp:include>
<style type="text/css">
input[type=file] {
     -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: #EEE;
    background: linear-gradient(to top, #32a7d1, #57cbf5);
    border: thin solid rgb(107, 206, 242);
    border-radius: .25em;
    box-shadow: inset .25em .25em .25em rgb(87, 203, 245), inset -.1em -.1em .1em rgb(104, 208, 246);
    cursor: text;
    padding: .25em;
    color: #fff; 
    margin-top: 15px;
        width: 100%;
}

::-webkit-file-upload-button {
    background: #cabb42;
    color: #fff;
    padding: 9px 20px;
    cursor: pointer; 
    border: none;
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
                     <h2>Add Gallery</h2>   
                        <h5>Gallery Information </h5>
                         
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <c:if test="${param.added!=null && param.added=='success'}">
                 <div class="alert alert-success">
                 <h4>You have successfully added Gallery Image</h4>
                 </div>
                 </c:if> 
                  
                 <hr />
               <div class="row">
                <div class="col-md-12">
                    <!-- Form Elements -->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Form Element Examples
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <form role="form" action="addGallery_action" id="addGallery_action" method="post" enctype="multipart/form-data">
                                   <input type="hidden" name="id" value="${gallery.id}"> 
                                   
                                

  <div class="form-group">
                                            <label>	Select Event </label>
                                            
                                              <select  class="form-control validate[required]" name="event_id">
          <option value="">Select Event</option>
          
            <c:if test="${event_list.size()>0}">
                                            	<c:forEach items="${event_list}" var="o" varStatus="theCount">
                                                
      <option value="${o.id}"  <c:if test="${gallery.event_id==o.id}">selected="selected"</c:if>    <c:if test="${param.event_id==o.id}">selected="selected"</c:if> >${o.event_title}</option>
     
      </c:forEach></c:if>
     </select> 
                                        </div>
                                        
                                        


                                        <div class="form-group">
                                            <label>	Gallery Title</label>
                                            <input class="form-control validate[required]" name="gallery_title" value="${gallery.gallery_title}" />
                                           
                                        </div>
                                   
                                        
                                        
                                         
                                         
                                        <div class="form-group" style="width: 250px;">
                                            <label>Gallery Image</label>
                                            <br>  
                                            <img alt="" <c:choose> <c:when test='${param.id!=null}'> src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/gallery/${gallery.gallery_img}" </c:when><c:otherwise>src="${pageContext.request.contextPath}/view/img/image_add.png" </c:otherwise> </c:choose> id="img_preview" style="width: 100%;"> 
                                           
                                            <input type="file"  name="gallery_img"  id="gallery_img" class='<c:if test="${param.id==null}">validate[required]</c:if>' value="${gallery.gallery_img}"/>
                                            
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
          
         
        <script type="text/javascript">
        $("#addGallery_action").validationEngine();
        
        
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#img_preview').attr('src', e.target.result);
                } 

                reader.readAsDataURL(input.files[0]);
            }
        } 

        
        $("#gallery_img").change(function(){
            readURL(this);
        });
        
        
        </script>
        
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
   
</body>
</html>
