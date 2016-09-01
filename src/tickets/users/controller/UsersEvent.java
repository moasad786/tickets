package tickets.users.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tickets.dao.EventDao;
import tickets.dao.UsersDao;
import tickets.modal.Event;
import tickets.modal.Users;

@Controller
public class UsersEvent {

	 

	 @Resource(name="eventDao")
	 private EventDao eventDao;
	 
	 @Resource(name="usersDao")
	 private UsersDao usersDao;

	 @Autowired
	 HttpSession session;
   	

 
 
  
@RequestMapping(value="/users/myEventList",method = RequestMethod.GET)
public String  myEventList(ModelMap model) {
  try {
	  
	  if(session.getAttribute("user_role").toString().equals("managers"))
	  {
		 
		  Integer user_id= Integer.parseInt(session.getAttribute("user_id").toString());

		  List<Event> event_list=eventDao.listEventByManagerId(user_id);
			model.addAttribute("event_list", event_list);
		 
	  }
	  else if(session.getAttribute("user_role").toString().equals("members"))
	  {
		  Integer user_id= Integer.parseInt(session.getAttribute("user_id").toString());

		  List<Event> event_list=eventDao.listEventByMembersId(user_id);
			model.addAttribute("event_list", event_list); 
		  
	  } 
	  
	  else 
		{
			return "redirect:dashboard";
		}
	   
		 
	  
		//System.out.println("under dashboard");
	} catch (Exception e) {
		// TODO: handle exception
	}
  finally {
		System.gc();
	}
   
  return "users/myEventList";
  
}
	
 

@RequestMapping(value="/users/myEventDetail",method = RequestMethod.GET)
public String  myEventDetail(ModelMap model,@RequestParam(value ="event_id" , required=false) Integer event_id) {
 try {
	   
Event event=eventDao.findByID(event_id);
model.addAttribute("event",event);

List<Users>  members_list= usersDao.listUsers("members",null);
model.addAttribute("members_list", members_list);
		  
	} catch (Exception e) {
		// TODO: handle exception
	}
 finally {
	}
  
 return "users/myEventDetail";
 
}
	


	
}
	   
