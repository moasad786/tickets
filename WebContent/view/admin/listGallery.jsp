<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
                     <h2>Gallery List</h2>   
                        <h5>Listing of all Gallery </h5>
                       
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
                                            
                                               <th>Gallery Image</th>
                                            <th>Gallery Title</th>
                                           
                                              <th>Update</th>  
                                        </tr>
                                    </thead>
                                    
                                  
                                    <c:if test="${gallery_list.size()>0}">
                                            	<c:forEach items="${gallery_list}" var="o" varStatus="theCount">
                                    
                                    <tbody>
                                      
                                        <tr class="odd gradeX">
                                            <td># ${(theCount.index)+1}</td>
                                             <td><img src="http://dj4ygzz9x8f5f.cloudfront.net/Tickets/gallery/${o.gallery_img}" width="200"></td>
                                            <td>${o.gallery_title}</td>
                                            
                                          
                                             <td >
                                             
                                             <a  href="updateGallery?id=${o.id}"  class="btn btn-primary" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                Edit</a>
                                                   
                                                 <a  href="deleteGallery?id=${o.id}"  class="btn btn-danger" ><i class="fa fa-trash-o" aria-hidden="true"></i>
                                                Delete</a>
                                                
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
        
        
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
    
   
</body>
</html>
