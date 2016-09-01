<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${list_membership.size()>0}">
				<div class="members-list" style="max-height: 700px;overflow: scroll;">
				<c:forEach items="${list_membership}" var="m">
				
				<div class="profile-tab">
								<div class="media">
									<a class="media-left" href="#">
										<img class="media-object" src="https://www.macupdate.com/img/defaultusericon.png" >
									</a>
									<div class="media-body pb-md">
										<h5 class="media-heading">${m.first_name} ${m.last_name}  <c:if test="${m.tickets!=null && m.tickets!=0}"> [ Membership of ${m.tickets} Tickets ] </c:if>  </h5>
										${m.email_id} 
									</div> 
									 
								</div>   
								    
								<div class="form-group is-empty row"> 
								<div class="col-md-9">
								<input class="form-control" type="text" id="amount_tickets${m.id}"  <c:if test="${m.tickets!=null && m.tickets!=0}"> value='${m.tickets}' </c:if>   placeholder="Enter Amount of Ticket to Assign to ${m.first_name}">
								</div>
								<div class="col-md-3">
								<button type="button" class="btn btn-raised btn-info" onclick="addMembership('${m.id}','${param.event_id}')">Assign</button>
								</div>
								 
								</div>  
							</div> 
				</c:forEach>
				
				 
				
			 
				
				</div>
				</c:if>