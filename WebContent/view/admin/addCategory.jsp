<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<head>
<jsp:include page="layouts/head_include.jsp"></jsp:include>

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
                     <h2>Add Category</h2>   
                        <h5>Category Information </h5>
                         
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
                        <div class="panel-heading">
                            Form Element Examples
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    
                                    <form role="form" action="addCategory_action" id="addCategory_action" method="post" enctype="multipart/form-data">
                                   <input type="hidden" name="id" value="${category.id}"> 
                                   
                            
                            
                            
                              <div class="form-group">
                                            <label>	Category Name</label>
                                            <input class="form-control validate[required]" name="category_name" value="${category.category_name}" />
                                           
                                        </div>
                                   
                                   

                                        <div class="form-group">
                                            <label>	Category Description</label>
                                        
                                            
                                             <textarea  class="form-control validate[required]"  rows="4" name="category_desc">${category.category_desc}</textarea>
                                           
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
        $("#addCategory_action").validationEngine();
        
     
         
         $("#category_side_nav").addClass("active");
         $("#addCategory").addClass("active-menu");
        
        </script>
        
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
   
</body>
</html>
