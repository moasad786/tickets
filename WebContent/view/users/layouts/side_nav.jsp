        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="static-sidebar-wrapper sidebar-blue">
                    <div class="static-sidebar">
                        <div class="sidebar">
	<div class="widget" id="widget-profileinfo">
        <div class="widget-body">
            <div class="userinfo ">
                <div class="avatar pull-left">
                    <img src="${pageContext.request.contextPath}/view/users/assets/demo/avatar/avatar_15.png" class="img-responsive img-circle"> 
                </div>
                <div class="info">
                    <span class="username">${sessionScope.user_first_name} ${sessionScope.user_last_name}</span>
                    <span class="useremail">${sessionScope.user_email}</span> 
                </div>

                <div class="acct-dropdown clearfix dropdown">
                    <span class="pull-left"><span class="online-status online"></span>Online</span>
                    <!-- <span class="pull-right dropdown-toggle" data-toggle="dropdown"><a href="javascript:void(0)" class="btn btn-fab-caret btn-xs btn-fab"><i class="material-icons">arrow_drop_down</i><div class="ripple-container"></div></a></span>
                    <ul class="dropdown-menu">
                        <li><span class="online-status online"></span> Online</li>
                        <li><span class="online-status online"></span> Online</li>
                        <li><span class="online-status online"></span> Online</li>
                        <li><span class="online-status online"></span> Online</li>
                    </ul> -->
                </div>
            </div>
        </div>
    </div>
	<div class="widget stay-on-collapse" id="widget-sidebar">
        <nav role="navigation" class="widget-body">
	<ul class="acc-menu">
		<li class="nav-separator"><span>Navigation</span></li>
		<!-- <li><a  class="withripple" href="dashboard"><span class="icon">
		<i class="material-icons">home</i></span><span>Dashboard</span><span class="badge badge-teal">2</span></a></li> -->
		  
		<li><a  class="withripple" href="myProfile"><span class="icon">
		<i class="fa fa-home"></i></span><span> Profile</span></a></li>
		  
		<c:if test="${sessionScope.user_role=='members'}">
		<li><a  class="withripple" href="bookingRequest"><span class="icon">
		<i class="fa fa-ticket"></i></span><span>Booking Requests</span></a></li>
		</c:if> 
		  
		 		<c:if test="${sessionScope.user_role=='managers' || sessionScope.user_role=='members'}">
		 
		 <li><a  class="withripple" href="myEventList"><span class="icon">
		<i class="fa fa-calendar"></i></span><span>My Events</span></a></li>
		</c:if>
		  
		<c:if test="${sessionScope.user_role=='users'}">
		 <li><a  class="withripple" href="myBooking"><span class="icon">
		<i class="fa fa-ticket"></i></span><span>My Booking </span></a>
		</li>
		</c:if>
		 
	
				<li><a  class="withripple" href="logout_users"><span class="icon"><i class="fa fa-user"></i></span><span>Logout</span></a>
		
	
	
		<li class="nav-separator"><span>Extras Demo</span></li>

	<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">flash_on</i></span><span>Layout</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-grids.html" target="_blank">Grid Scaffolding</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-static-leftbar.html" target="_blank">Static Sidebar</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-sidebar-scroll.html" target="_blank">Scroll Sidebar</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-horizontal.html" target="_blank">Horizontal Nav V1</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-horizontal-large.html" target="_blank">Horizontal Nav V2</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/layout-boxed.html" target="_blank">Boxed</a></li>
			</ul>
		</li>

		<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">settings</i></span><span>UI Kit</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-typography.html" target="_blank">Typography</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-buttons.html" target="_blank">Buttons</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-modals.html" target="_blank">Modal</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-progress.html" target="_blank">Progress</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-paginations.html" target="_blank">Paginations</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-breadcrumbs.html" target="_blank">Breadcrumbs</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-labelsbadges.html" target="_blank">Labels &amp; Badges</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-alerts.html" target="_blank">Alerts</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-tabs.html" target="_blank">Tabs</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-wells.html" target="_blank">Wells</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-icons-material.html" target="_blank">Material Icons</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-icons-fontawesome.html" target="_blank">FontAwesome Icons</a></li>
                <li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-color.html" target="_blank">Material Colors</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-helpers.html" target="_blank">Helpers</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-imagecarousel.html" target="_blank">Images &amp; Carousel</a></li>
			</ul>
		</li>

        <li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">shuffle</i></span><span>Components</span></a>
        	<ul class="acc-menu">
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/cards.html" target="_blank">Cards</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-panels.html" target="_blank">Panels</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-tiles.html" target="_blank">Tiles</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-skylo.html" target="_blank">Page Progress</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-bootbox.html" target="_blank">Bootbox</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-pines.html" target="_blank">Notification</a></li>
        		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-pulsate.html" target="_blank">Pulsate</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-knob.html" target="_blank">jQuery Knob</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-slider.html" target="_blank">Slider</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/custom-list.html" target="_blank">Lists</a></li>

        	</ul>
        </li>
		
		<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">create</i></span><span>Forms</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-forms.html" target="_blank">Form Layout</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-components.html" target="_blank">Form Components</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-pickers.html" target="_blank">Pickers</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-wizard.html" target="_blank">Form Wizard</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-validation.html" target="_blank">Form Validation</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-masks.html" target="_blank">Form Masks</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-dropzone.html" target="_blank">Dropzone Uploader</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-summernote.html" target="_blank">Summernote</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-markdown.html" target="_blank">Markdown Editor</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-xeditable.html" target="_blank">Inline Editor</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/form-gridforms.html" target="_blank">Grid Forms</a></li>
			</ul>
		</li>

		<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">apps</i></span><span>Tables</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/ui-tables.html" target="_blank">Basic Tables</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/tables-responsive.html" target="_blank">Responsive Tables</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/tables-editable.html" target="_blank">Editable Tables</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/tables-data.html" target="_blank">Data Tables</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/tables-fixedheader.html" target="_blank">Fixed Header Tables</a></li>
			</ul>
		</li>
		
		<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-calendar.html" target="_blank"><span class="icon"><i class="material-icons">event_note</i></span><span>Calendar</span></a></li>
		<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">pages</i></span><span>Pages</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-profile.html" target="_blank">Profile</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-invoice.html" target="_blank">Invoice</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/coming-soon.html" target="_blank">Coming Soon</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-login.html" target="_blank">Login</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-forgotpassword.html" target="_blank">Password Recovery</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-registration.html" target="_blank">Registration</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/extras-forgotpassword.html" target="_blank">Password Reset</a></li>
			</ul>
		</li>
		<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">email</i></span><span>Inbox</span></a>
			<ul class="acc-menu">
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/app-inbox.html" target="_blank">All</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/app-inbox-read.html" target="_blank">Read</a></li>
				<li><a  class="withripple" href="${pageContext.request.contextPath}/view/users/html/app-inbox-compose.html" target="_blank">Compose</a></li>
			</ul>
		</li>
		 
		 
		
			 
		</li>
		
		
	</ul>
</nav>
    </div>
</div>
                    </div>
                </div>