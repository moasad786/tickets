		       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		       <c:choose>
		       <c:when test="${msg==1}">
		       <div class="alert alert-success">
		       <h4>Congrats! Tickets Request have beend Sent</h4>
		       <p>You have successfully sent ticket request, Please wait until our Committee Member wil approve your Tickets.</p>
		       </div>
		       </c:when>
		       <c:otherwise>
		        <div class="alert alert-danger">
		        <p>Ticket Booking Failed! Please Try Again.</p>
		        </div> 
		       </c:otherwise>
		       </c:choose>