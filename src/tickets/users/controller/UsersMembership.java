package tickets.users.controller;



import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tickets.dao.MembershipDao;
 

@Controller
public class UsersMembership {

	 

	 @Resource(name="membershipDao")
	 private MembershipDao membershipDao;
	 
	

	 @Autowired
	 HttpSession session;
   	
 
  
@RequestMapping(value="/users/add_membership")
public String  myEventDetail(ModelMap model,@RequestParam(value ="user_id" , required=false) Integer user_id,
		@RequestParam(value ="event_id" , required=false) Integer event_id,@RequestParam(value ="tickets" , required=false) Integer tickets) {
 try {
	 
	   if(user_id!=null && user_id.intValue()>0 && event_id!=null && event_id.intValue()>0 && tickets!=null && tickets.intValue()>0 )
	   {
		   int total_available_tickets=membershipDao.getAvailableEventTickets(event_id);
		   int total_added_tickets=membershipDao.getTotalTicketAdded(event_id,user_id);
		   if( total_available_tickets > total_added_tickets && (total_available_tickets-total_added_tickets)>=tickets )
		   {
			   if(membershipDao.checkAlreadyExistMembership(user_id, event_id)>0)
			   {
				   membershipDao.update_membership(user_id, event_id, tickets);
				  
			   }
			   else 
			   { 
			       membershipDao.add_membership(user_id, event_id, tickets);
			   }  
			   model.addAttribute("msgtype", 1); 
		   }
		  
		   else
		   {  
			   model.addAttribute("msgtype", 0);
			   model.addAttribute("msg", "There are Total "+total_available_tickets+" Tickets for this Event ! and "+total_added_tickets+" ticket already Assigned So  <h4> Only <b>"+(total_available_tickets-total_added_tickets)+"</b> Tickets are Left</h4> ");
		   }
		    
		   
	    
		}
	   else
	   { 
		   model.addAttribute("msg", "Please Enter Amout of Ticket to Assign this Member."); 
	   }
		 
	} catch (Exception e) {
		// TODO: handle exception
	}
 finally {
	}
  
 return "users/ajax/add_membership";
 
}






	
}
	   
