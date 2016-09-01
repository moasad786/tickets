package tickets.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tickets.dao.BookingDao;
import tickets.dao.EventDao;
import tickets.dao.UsersDao;
import tickets.modal.Booking;
import tickets.modal.Event;
import tickets.modal.Users;

@Controller

public class BookingController {
	
	 @Resource(name="bookingDao")
	 private BookingDao bookingDao;
	 @Resource(name="usersDao")
	 private UsersDao usersDao;
	 
	 @Resource(name="eventDao")
	 private EventDao eventDao;
	 
	 @Autowired
		private HttpSession session;
	 
	
	  @RequestMapping(value="/booking_popup",method = RequestMethod.POST)
	   public String booking_popup(Model model) {
	     try {
			
	    	 if(session.getAttribute("user_id")!=null && session.getAttribute("user_role")!=null && (session.getAttribute("user_role").toString().trim().equals("users")))
	         { 
	    		 model.addAttribute("msg",1);
	    		 List<Users> members_list=usersDao.listUsers("members",1);
				 model.addAttribute("members_list", members_list); 
				  
	         }
	    	 else
	    	 { 
	    		 model.addAttribute("msg",0);
	    	 }
	    	
			   
	    	  
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
		}
	     
	     return "ajax/booking_popup";
	     
	   } 
	   
	   
	  @RequestMapping(value="/login_ajax_booking",method = RequestMethod.POST)
	   public String  login_ajax_booking(Model model, @RequestParam(value ="email_id" , required=false) String email_id
			   , @RequestParam(value="password", required=false) String password) {
	     try {
		  
	    	 Users a= usersDao.getInfobyLogin(email_id, password);
	    	  
	    	if(a!=null && a.getRole().equals("users"))
	    	{  
	    		session.setAttribute("user_id", a.getId());
	    		session.setAttribute("user_first_name", a.getFirst_name());
	    		session.setAttribute("user_last_name", a.getLast_name());
	    		session.setAttribute("user_email", a.getEmail_id());
	    		session.setAttribute("user_role", a.getRole());
	    		model.addAttribute("msg",1);
	    	}
	    	else
	    	{
	    		
	    		return "ajax/login_ajax_booking";
	    	} 
	    	 
		} catch (Exception e) {
			// TODO: handle exception
		}
	     finally {
		}
	       
 		return "ajax/login_ajax_booking";
	     
	   }
	  
	  
	  
	  
	 
	  
	   @RequestMapping(value="/booking_action",method = RequestMethod.POST)
	   public String home(Model model,
			   @RequestParam(value ="event_id" , required=false) Integer event_id,
			   @RequestParam(value ="member_id" , required=false) Integer member_id,
			   @RequestParam(value ="number_ticket" , required=false) Integer number_ticket,
			   @RequestParam(value ="message" , required=false) String message) {
	     try {
	    	   Integer user_id=Integer.parseInt(session.getAttribute("user_id").toString());
  
	    	 String ticket_id="TCK"+String.valueOf(new java.util.Date().getTime()+event_id+user_id);
	    	 if(event_id!=null && event_id.intValue()>0 && member_id!=null && member_id.intValue()>0 && number_ticket!=null && number_ticket.intValue()>0 
	    			 && user_id!=null && user_id.intValue()>0 )
	    	 {
	    		 Event event=eventDao.findByID(event_id);
	    	Double total_price=event.getEvent_price()*number_ticket;	
	    	  
	    	 bookingDao.add_booking(user_id, event_id, member_id, ticket_id, number_ticket, message,total_price);
	    	 model.addAttribute("msg",1);
	    	 }
	    	 else
	    	 {
	    		 model.addAttribute("msg",0);
	    		 return "msg_booking_ajax";
	    	 }
	    	 
		} catch (Exception e) { 
			 model.addAttribute("msg",0);
		}
	     finally {
			
		}
	     
	     return "ajax/msg_booking_ajax";
	     
	   }
	   
	   
	   
	   
 
	  
	   
	   
	   
	   
	   
	

}
