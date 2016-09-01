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
                     <h2>Category List</h2>   
                        <h5>Listing of all Category </h5>
                       
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
                                            
                                               <th>Category Name</th>
                                            <th>Category Description</th>
                                           
                                              <th>Update</th>  
                                        </tr>
                                    </thead>
                                    
                                  
                                    <c:if test="${category_list.size()>0}">
                                            	<c:forEach items="${category_list}" var="o" varStatus="theCount">
                                    
                                    <tbody>
                                      
                                        <tr class="odd gradeX">
                                            <td># ${(theCount.index)+1}</td>
                                             
                                            <td>${o.category_name}</td>
                                              <td>${o.category_desc}</td>
                                            
                                          
                                             <td >
                                             
                                             <a  href="updateCategory?id=${o.id}"  class="btn btn-primary" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                Edit</a>
                                                   
                                                 <a  href="deleteCategory?id=${o.id}"  class="btn btn-danger" ><i class="fa fa-trash-o" aria-hidden="true"></i>
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
        
      <script type="text/javascript">
      $("#category_side_nav").addClass("active");
      $("#listCategory").addClass("active-menu");
      </script>  
    <jsp:include page="layouts/footer_include.jsp"></jsp:include>
    
   
</body>
</html>
