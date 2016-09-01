<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  
<jsp:include page="layouts/head_include.jsp"></jsp:include>
    </head>

    <body class="animated-content infobar-overlay">
        
        

<jsp:include page="layouts/top_nav.jsp"></jsp:include>


        <div id="wrapper">
            <div id="layout-static">
                
                
                <jsp:include page="layouts/side_nav.jsp"></jsp:include>
                
                
                
                
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <div class="container-fluid">
                                 
<div data-widget-group="group1">
	<div class="row">
		<div class="col-md-12 profile-area">
			<div class="media col-md-6 col-sm-6 col-xs-6">
				<a class="media-left pr-n" href="#">
					<img class="media-object img-resposnive" src="${pageContext.request.contextPath}/view/users/assets/demo/avatar/avatar_15.png" alt="Generic placeholder image" width='88' height='88'>
				</a>
				<div class="media-body pl-xl">
					<h4 class="media-heading">${users.first_name} ${users.last_name}</h4>
					<p>${users.email_id}</p>
					<p>${users.phone}</p>
				</div>
			</div>	
			<div class="col-md-6 col-sm-6 col-xs-6">
				<ul class="list-inline text-right">
					<li class="pr-xs"><a class="" href="#"><i class="fa fa-facebook"></i></a></li>
					<li class="pr-xs pl-xs"><a class="" href="#"><i class="fa fa-twitter"></i></a></li>
					<li class="pr-xs pl-xs"><a class="" href="#"><i class="fa fa-dribbble"></i></a></li>
					<li class="pl-xs"><a class="" href="#"><i class="fa fa-instagram"></i></a></li>
				</ul>
				<div>
					<ul class="demo-btns text-right">
                        <li class="m-n"><a class="btn btn-primary" href="#">follow</a></li>
                        <li class="m-n"><a class="btn btn-success" href="#">message</a></li>
                    </ul>
				</div> 
			</div> 
		</div>
		<div class="col-md-12 pl-n pr-n">
			<ul class="nav nav-tabs material-nav-tabs mb-lg">
				<li <c:if test="${param.tab==null}"> class="active" </c:if> ><a href="#tab-8-1" data-toggle="tab" <c:if test="${param.tab==null}">aria-expanded="true"</c:if>   > About </a></li>
				
				<li <c:if test="${param.tab=='edit'}"> class="active" </c:if> ><a href="#tab-8-5" data-toggle="tab" <c:if test="${param.tab=='edit'}">aria-expanded="true"</c:if> > Edit</a></li>
			</ul>     
		</div>
		<div class="col-md-3">
			<div class="panel panel-profile">
				<div class="panel-heading">
					<h2>About</h2>
				</div>
			  	<div class="panel-body">
					<div>
						<div class="personel-info pt-n">
							<span class="icon"><i class="material-icons">email</i></span>
							<span>${users.email_id}</span>
						</div>

						<div class="personel-info">
							<span class="icon"><i class="material-icons">call</i></span>
							<span>+${users.phone}</span>
						</div>

						<div class="personel-info">
							<span class="icon"><i class="material-icons">place</i></span>
							<span>${users.address}</span>
						</div>

						
					</div>

					<ul class="list-inline text-center">
						<li><a href="#" class=""><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class=""><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class=""><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#" class=""><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class=""><i class="fa fa-instagram"></i></a></li>
					</ul>
			  	</div>
			</div><!-- panel -->

			<div class="panel panel-profile">
				<div class="panel-heading">
					<h2>Gallery</h2>
				</div>
			  	<div class="panel-body">
					<div class="row">
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/1.jpg" alt="">
						</div>
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/2.jpg" alt="">
						</div>
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/3.jpg" alt="">
						</div>
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/4.jpg" alt="">
						</div>
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/5.jpg" alt="">
						</div>
						<div class="gallery-image col-md-4 col-sm-4 col-xs-4">
							<img class="img-responsive" src="${pageContext.request.contextPath}/view/users/assets/demo/images/6.jpg" alt="">
						</div>
					</div>
					<a href="" class="pull-left">View all <i class="material-icons">arrow_forward</i></a>
			  	</div>
			</div>
		</div><!-- col-sm-3 -->
 
		<div class="col-md-9">
			<div class="tab-content">
				<div class="panel-profile">
					<div class="tab-content">
						<div class="tab-pane p-md <c:if test="${param.tab==null}"> active </c:if>"  id="tab-8-1">
							<div class="about-area">
					
						
									<h4>Bio</h4>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores in eveniet sapiente error fuga tenetur ex ea dignissimos voluptas ab molestiae eos totam quo dolorem maxime illo neque quia itaque.</p> 
									<p>Asperiores in eveniet sapiente error fuga tenetur ex ea dignissimos voluptas ab molestiae eos totam quo dolorem maxime illo neque quia itaque.</p>
							</div>
							<div class="about-area">
								<h4>Basic Information</h4>
								<div class="table-responsive">
								  <table class="table">
									<tbody>
									  <tr>
										<th>Email</th>
										<td><a href="#">${users.email_id}</a></td>
									  </tr>
									 
									  <tr>
										<th>Phone</th>
										<td>${users.phone}</td>
									  </tr>
									 
									  <tr>
										<th>Role</th>
										<td style="text-transform: uppercase;">${users.role}</td>
									  </tr>
									 
									  <tr>
										<th>Social</th>
										<td>
											<ul class="list-inline m-n">
												<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"></i></a></li>
												<li><a href="#"><i class="fa fa-google"></i></a></li>
												<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
												<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
												<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											</ul>
										</td>
									  </tr>
									</tbody>
								  </table>
								</div>
							</div>
							<div class="about-area">
								<h4>Personal Information</h4>
								<div class="table-responsive">
									<table class="table about-table">
										<tbody>
											<tr>
												<th>First Name</th>
												<td>${users.first_name}  </td>
											</tr>
											<tr>
												<th>Last Name</th>
												<td> ${users.last_name}</td>
											</tr> 
											
											<tr>
												<th>Address</th>
												<td>${users.address}</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
						
						
					
						<div class="tab-pane p-md <c:if test="${param.tab=='edit'}"> active </c:if>" id="tab-8-5">
							<c:if test='${param.action=="exist"}'>
							<div class="alert alert-danger">
							<p>Email already exist. Please enter another email id</p>
							
							</div>
							</c:if>
							
								<c:if test='${param.action=="updated"}'>
							<div class="alert alert-success">
							<p>Congrats! You have successfully updated your profile.</p>
							
							</div>
							</c:if>
							
							
							<div class="row">
								<div class="col-md-12">
									<form class="form-horizontal tabular-form"   action="updateprofile_action" method="post">
										<div class="form-group">
											<label for="form-name" class="col-sm-2 control-label">Fist Name</label>
											<div class="col-sm-8 tabular-border">
												<input type="text" class="form-control" id="form-name" placeholder="Full Name" value="${users.first_name}" name="first_name">
											</div>
										</div>
										<div class="form-group">
											<label for="form-name" class="col-sm-2 control-label">Last Name</label>
											<div class="col-sm-8 tabular-border">
												<input type="text" class="form-control" id="form-name" placeholder="Full Name" value="${users.last_name}" name="last_name">
											</div>
										</div>
										<div class="form-group">
											<label for="form-website" class="col-sm-2 control-label">Website</label>
											<div class="col-sm-8 tabular-border">
												<input type="text" class="form-control" id="form-website" placeholder="http://"  value="${users.email_id}" name="email_id">
											</div>
										</div>
<!-- 										<div class="form-group"> -->
<!-- 											<label for="radio" class="col-sm-2 control-label">Gender</label> -->
<!-- 											<div class="col-sm-8 tabular-border"> -->
<!-- 												<div class="radio"><label><input type="radio" name="gender"> Male</label></div> -->
<!-- 												<div class="radio"><label><input type="radio" name="gender"> Female</label></div> -->
<!-- 											</div> -->
<!-- 										</div> -->
										<div class="form-group">
											<label for="form-password" class="col-sm-2 control-label">Password</label>
											<div class="col-sm-8 tabular-border">
												<input type="password" class="form-control" id="form-password" placeholder="Password" value="${users.password}" name="password">
											</div>
										</div>
										<div class="form-group">
											<label for="form-confirmpass" class="col-sm-2 control-label">Confrim Password</label>
											<div class="col-sm-8 tabular-border">
												<input type="password" class="form-control" id="form-confirmpass" placeholder="Password" value="${users.password}" name="confirm_password">
											</div>
										</div>
										 
										<div class="form-group">
											<label for="form-website" class="col-sm-2 control-label">Phone  No</label>
											<div class="col-sm-8 tabular-border">
												<input type="text" class="form-control" id="form-website" placeholder="Address"  value="${users.phone}" name="phone">
											</div>
										</div>
										
										<div class="form-group">
											<label for="form-website" class="col-sm-2 control-label">Address</label>
											<div class="col-sm-8 tabular-border">
												<input type="text" class="form-control" id="form-website" placeholder="Address"  value="${users.address}" name="address">
											</div>
										</div>
										
										  
										
									
									 <hr>
                                         <button type="submit" class="btn btn-primary form-control">Submit</button>  
										
									</form>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div><!-- .tab-content -->
		</div><!-- col-sm-8 -->
	</div>
</div>

                            </div> <!-- .container-fluid -->
                        </div> <!-- #page-content -->
                    </div>
                    <footer role="contentinfo">
    <div class="clearfix">
        <ul class="list-unstyled list-inline pull-left">
            <li><h6 style="margin: 0;">&copy; 2016 KaijuThemes</h6></li>
        </ul>
    </div>
</footer>

                </div>
                
                
                
                
                
                
                
                
                
            </div>
        </div>

   
      

    
    <!-- Das FAB -->
<button class="btn btn-primary btn-fab demo-switcher-fab" data-toggle="tooltip" data-placement="top" title="Click for Settings"><i class="material-icons">settings</i></button>

<!-- Switcher -->
    <div class="demo-options">
        <div class="demo-body">
            <div class="tabular">
                <div class="tabular-row">
                    <div class="tabular-cell">Fixed Header</div>
                    <div class="tabular-cell demo-switches text-right">
                        <div class="togglebutton checkbox-primary">
                            <label>
                                <input type="checkbox" name="demo-fixedheader" />
                            </label>
                        </div>
                    </div>
                </div>
                <div class="tabular-row">
                    <div class="tabular-cell">Boxed Layout</div>
                    <div class="tabular-cell demo-switches text-right">
                            <div class="togglebutton toggle-primary">
                                <label>
                                    <input type="checkbox" name="demo-layoutboxed">
                                </label>
                            </div>
                        </div>
                </div>
                <div class="tabular-row">
                    <div class="tabular-cell">Collapse Leftbar</div>
                    <div class="tabular-cell demo-switches text-right">
                            <div class="togglebutton toggle-primary">
                                <label>
                                    <input type="checkbox" name="demo-collapseleftbar">
                                </label>
                            </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="demo-body">
            <div class="option-title">Brand</div>
            <ul id="demo-header-color" class="demo-color-list">
                <li><span data-addclass="navbar-brand-default" class="brand-switcher demo-default"></span></li>
                <li><span data-addclass="navbar-brand-primary" class="brand-switcher demo-primary"></span></li>
                <li><span data-addclass="navbar-brand-success" class="brand-switcher demo-success"></span></li> 
                <li><span data-addclass="navbar-brand-danger" class="brand-switcher demo-danger"></span></li>
                <li><span data-addclass="navbar-brand-warning" class="brand-switcher demo-warning"></span></li>
                <li><span data-addclass="navbar-brand-info" class="brand-switcher demo-info"></span></li> 
                <li><span data-addclass="navbar-brand-inverse" class="brand-switcher demo-inverse"></span></li> 
            </ul>
        </div>

        <div class="demo-body">
            <div class="option-title">Topnav</div>
            <ul id="demo-header-color" class="demo-color-list">
                <li><span data-addclass="navbar-cyan" class="topnav-switcher demo-cyan"></span></li>
                <li><span data-addclass="navbar-light-blue" class="topnav-switcher demo-light-blue"></span></li>
                <li><span data-addclass="navbar-blue" class="topnav-switcher demo-blue"></span></li>
                <li><span data-addclass="navbar-indigo" class="topnav-switcher demo-indigo"></span></li>
                <li><span data-addclass="navbar-deep-purple" class="topnav-switcher demo-deep-purple"></span></li> 
                <li><span data-addclass="navbar-purple" class="topnav-switcher demo-purple"></span></li> 
                <li><span data-addclass="navbar-pink" class="topnav-switcher demo-pink"></span></li> 
                <li><span data-addclass="navbar-red" class="topnav-switcher demo-red"></span></li>
                <li><span data-addclass="navbar-teal" class="topnav-switcher demo-teal"></span></li>
                <li><span data-addclass="navbar-green" class="topnav-switcher demo-green"></span></li>
                <li><span data-addclass="navbar-light-green" class="topnav-switcher demo-light-green"></span></li>
                <li><span data-addclass="navbar-orange" class="topnav-switcher demo-orange"></span></li>               
                <li><span data-addclass="navbar-deep-orange" class="topnav-switcher demo-deep-orange"></span></li>
                
                <li><span data-addclass="navbar-bluegray" class="topnav-switcher demo-bluegray"></span></li>
                
                
                <li><span data-addclass="navbar-gray" class="topnav-switcher demo-gray"></span></li> 
                
                <li><span data-addclass="navbar-default" class="topnav-switcher demo-default"></span></li>
                <li><span data-addclass="navbar-bleachedcedar" class="topnav-switcher demo-bleachedcedar"></span></li>
                <li><span data-addclass="navbar-brown" class="topnav-switcher demo-brown"></span></li>
            </ul>
        </div>

        <div class="demo-body">
            <div class="option-title">Sidebar</div>
            <ul id="demo-sidebar-color" class="demo-color-list">
                <li><span data-addclass="sidebar-cyan" class="leftbar-switcher demo-cyan"></span></li>
                <li><span data-addclass="sidebar-light-blue" class="leftbar-switcher demo-light-blue"></span></li>
                <li><span data-addclass="sidebar-blue" class="leftbar-switcher demo-blue"></span></li>
                <li><span data-addclass="sidebar-indigo" class="leftbar-switcher demo-indigo"></span></li>
                <li><span data-addclass="sidebar-deep-purple" class="leftbar-switcher demo-deep-purple"></span></li> 
                <li><span data-addclass="sidebar-purple" class="leftbar-switcher demo-purple"></span></li> 
                <li><span data-addclass="sidebar-pink" class="leftbar-switcher demo-pink"></span></li> 
                <li><span data-addclass="sidebar-red" class="leftbar-switcher demo-red"></span></li>
                <li><span data-addclass="sidebar-teal" class="leftbar-switcher demo-teal"></span></li>
                <li><span data-addclass="sidebar-green" class="leftbar-switcher demo-green"></span></li>
                <li><span data-addclass="sidebar-light-green" class="leftbar-switcher demo-light-green"></span></li>
                <li><span data-addclass="sidebar-orange" class="leftbar-switcher demo-orange"></span></li>               
                <li><span data-addclass="sidebar-deep-orange" class="leftbar-switcher demo-deep-orange"></span></li>
                
                <li><span data-addclass="sidebar-bluegray" class="leftbar-switcher demo-bluegray"></span></li>
                
                
                <li><span data-addclass="sidebar-gray" class="leftbar-switcher demo-gray"></span></li> 
                
                <li><span data-addclass="sidebar-default" class="leftbar-switcher demo-default"></span></li>
                <li><span data-addclass="sidebar-bleachedcedar" class="leftbar-switcher demo-bleachedcedar"></span></li>
                <li><span data-addclass="sidebar-brown" class="leftbar-switcher demo-brown"></span></li>
            </ul>
        </div>



    </div>


<jsp:include page="layouts/footer_include.jsp"></jsp:include>

    </body>
</html>
<!-- Localized -->