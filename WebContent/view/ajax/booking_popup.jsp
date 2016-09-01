
		       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <c:choose>
        
        <c:when test="${msg==1}">
           <div id="msg_booking"></div>
             
        <form method="post" id="booking_action" >
  <div class="form-group">
  <label for="exampleInputEmail1" >Select Tickets</label>
  <select class="form-control validate[required] " id="number_ticket" name="number_ticket"  >
  <option value="">Tickets Numbers</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>
  
  
  </div>
  
  <div class="form-group"  >
  <label for="exampleInputEmail1" >Select Members</label>
  <select class="form-control validate[required]" id="member_id" name="member_id">
  <option value="">Tickets Members</option>
  <c:if test="${members_list.size()>0}">
    <c:forEach items="${members_list}" var="o" varStatus="theCount">
  <option value="${o.id}">${o.first_name} ${o.last_name}</option>
   </c:forEach></c:if>
</select>
  
  </div>
 
  <div class="form-group">
    <label for="exampleInputPassword1">Message</label>
 <textarea class="form-control validate[required]" rows="3" id="message" name="message" placeholder="You can write a short message to the committee member you are requesting from. You have 140 characters remaining." ></textarea>
  </div>
  
  <div class="checkbox">
    <label>
      <input type="checkbox" class="validate[required]" name="terms_condition" id="terms_condition">I accept <a href="#">Terms and Condition</a>
    </label>
  </div>
 
  <button type="button" class="btn btn-info" id="bookingBtn">Request Ticket</button>
  
   
    
</form>
       </c:when>
       <c:otherwise>
     <form> 
     <div id="msgLogin"></div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email ID</label>
    <input type="email" class="form-control" placeholder="Email" id="email_id">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" placeholder="Password" id="password">
  </div>
 
  <div class="checkbox">
    <label>
      <input type="checkbox"> Remmber Me
    </label>
  </div>
  
  <button type="button" class="btn btn-primary" onclick="loginAjax()">Login</button>
</form>
       
       </c:otherwise> 
        
        
        </c:choose>
        
       
        
    