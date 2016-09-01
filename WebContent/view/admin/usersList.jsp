<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<jsp:include page="layouts/head_include.jsp"></jsp:include>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<script>
  $(function() {
    $('#toggle-two').bootstrapToggle({
      on: 'Enabled' ,
      off: 'Disabled  '
    });
  })
</script>
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
                     <h2>Users List</h2>   
                        <h5>Listing of all Users </h5>
                       
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
                                            <th>Name</th>
                                            <th>Email_id</th>  
                                         
                                            <th>Phone</th>  
                                             <th>Status</th>  
                                        </tr>
                                    </thead>
                                    
                                  
                                    <c:if test="${members_list.size()>0}">
                                            	<c:forEach items="${members_list}" var="o" varStatus="theCount">
                                    
                                    <tbody>
                                      
                                        <tr class="odd gradeX">
                                            <td># ${(theCount.index)+1}</td>
                                            <td>${o.first_name} ${o.last_name}</td>
                                              <td>${o.email_id}</td>
                                            
                                            <td >${o.phone}</td>
                                            
                                            <td >
                                            <input type="checkbox" class="status_checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" value="${o.id}"   <c:if test="${o.status==1}"> checked="checked" </c:if>   >
                                                   
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
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    
   
   
   
   <script type="text/javascript">
   $("#usersList").addClass("active-menu");
   
   function updateStatus(uid,sid)
   {
   	     $.post("update_status", 
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
